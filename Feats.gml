// Creates a new feat based on the provided arguments and returns the numerical index associated with the feat
#define FeatCreate( name, description, check, reward )
var _featObject = {
    Index: global.featOffset + global.featIndex,
    Name: string_lower(name),
    Description: string_lower(description),
    Update: check,
    Reward: ScriptWrap(reward),
    SaveID: string_lower(string_replace_all(name, " ", "_"))
};
ds_list_add(global.featData, _featObject);
LocalizationAddKey("english", "featName" + string(global.featOffset + global.featIndex), name);
LocalizationAddKey("english", "featDesc" + string(global.featOffset + global.featIndex), description);
return global.featOffset + global.featIndex++;

// Populates the global.featSave map for new saves

// Gets the current progress for the provided feat, returns undefined if the feat does not exist
#define FeatGetProgress( index )
var _featGet = global.featData[| index - global.featOffset];
if (_featGet != undefined) {
   return ds_map_find_value(global.featSave, _featGet.SaveID + ":progress");
}
return undefined;

// Sets the progress for the provided feat, returns false if the feat does not exist
#define FeatSetProgress( index, progress )
var _featGet = global.featData[| index - global.featOffset];
if (_featGet != undefined) {
    global.featSave[? _featGet.SaveID + ":progress"] = progress;
    return true;
}
return false;

#define FeatAddProgress( index, progress )
return FeatSetProgress(index, FeatGetProgress(index) + progress);

// Immediately unlocks a feat by forcing the progress to 100
#define FeatUnlock( index )
var _featGet = global.featData[| index - global.featOffset];
if (_featGet != undefined) {
    if (global.featSave[? _featGet.SaveID + ":unlocked"] == true) return true;
    global.featSave[? _featGet.SaveID + ":progress"] = 100;
    return true;
}
return false;

#define __FeatMain
global.featIndex = 0;
global.featOffset = 1000;
global.featData = ds_list_create();
global.featSave = undefined;
global.featScroll = 0;
global.featScrollLerp = 128;

#define __FeatNewGame
global.featSave = ds_map_create();
__FeatPopulate();

#define __FeatLoad
global.featSave = ModSaveDataFetch();
__FeatPopulate();

#define __FeatSystemStep
if (instance_exists(objPlayer) == true) {
    // Loop through each feat and update it's progress
    for(var i = 0; i < ds_list_size(global.featData); i++) {
        var _featGet = global.featData[| i];
        if (global.featSave[? _featGet.SaveID + ":unlocked"] == false) {
            if (_featGet.Update != undefined) {
                var _featReturn = script_execute(_featGet.Update, global.featSave[? _featGet.SaveID + ":progress"], undefined);
                if (_featReturn != 0) {
                    global.featSave[? _featGet.SaveID + ":progress"] = _featReturn;
                }
            }
            
            if (global.featSave[? _featGet.SaveID + ":progress"] >= 100) {
                if (_featGet.Reward != undefined) ScriptCall(_featGet.Reward);
                audio_play_sound(sndFeatUnlocked, 0, false);
                global.featSave[? _featGet.SaveID + ":unlocked"] = true;
                ModSaveDataSubmit(global.featSave);
                WorldControl.feat[0] = _featGet.Index;
                WorldControl.feat[1] = room_speed * 5;
            }
        }
    }
}

#define __FeatDrawGUI
if (keyboard_check(9) == true && instance_exists(objPlayer) == true) {
    draw_set_alpha(0.75);
    draw_rectangle_color(0, 0, 1280, 720, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_set_valign(fa_top);
    var _featColour = make_colour_rgb(222, 167, 61);
    draw_text_transformed_color((1280 / 2) + 9, (64 - 18) - global.featScrollLerp, "avaritia feats", 2, 2, 0, _featColour, _featColour, _featColour, _featColour, 1);
    draw_line_width_colour((1280 / 2) - 256, 96 - global.featScrollLerp, (1280 / 2) + 256, 96 - global.featScrollLerp, 3, c_white, c_white);
    var _featOffset = {x: (1280 / 2) - (1280 / 3), y: 172 - global.featScrollLerp};
    for(var i = 0; i < ds_list_size(global.featData); i++) {
        var _featGet = global.featData[| i];
        if (_featOffset.y > -64) {
            draw_set_alpha(0.2);
            draw_rectangle_colour(_featOffset.x - 164, _featOffset.y - 64, _featOffset.x + 164, _featOffset.y + 64, c_black, c_black, c_black, c_black, false);
            draw_set_alpha(1);
            draw_set_valign(fa_top);
            draw_text(_featOffset.x + 9, (_featOffset.y + 9) - 58, _featGet.Name);
            draw_text_ext_transformed(_featOffset.x + 6.75, (_featOffset.y + 9) - 36, _featGet.Description, -1, 328, 0.75, 0.75, 0);
            var _featProgress = FeatGetProgress(i + global.featOffset);
            draw_line_width_colour(_featOffset.x - 148, _featOffset.y + 32, _featOffset.x + 148, _featOffset.y + 32, 9, c_dkgray, c_dkgray);
            draw_line_width_colour(_featOffset.x - 148, _featOffset.y + 32, (_featOffset.x - 148) + clamp(((148 * 2) * (_featProgress / 100)), 0, 148 * 2), _featOffset.y + 32, 9, _featColour, _featColour);
            draw_set_halign(fa_middle);
            draw_text_transformed(_featOffset.x + 11.25, _featOffset.y + 30, string(min(100, round(_featProgress))) + "%", 1.25, 1.25, 0);
        }
        if (i % 3 == 2) {
            _featOffset.x = (1280 / 2) - (1280 / 3);
            _featOffset.y += 164;
        } else {
            _featOffset.x += (1280 / 3);
        }
    }
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    if (ds_list_size(global.featData) > 9) {
        if (mouse_wheel_down() == true) {
            global.featScroll += 32;
        } else if (mouse_wheel_up() == true) {
            global.featScroll -= 32;
        }
        global.featScroll = clamp(global.featScroll, 0, abs((720 - (_featOffset.y + global.featScrollLerp)) - 72));
    } else {
        global.featScroll = 0;
    }
    global.featScrollLerp = lerp(global.featScrollLerp, global.featScroll, 0.15);
} else {
    global.featScroll = 0;
    global.featScrollLerp = 128;
}
#define __FeatPopulate()
for(var i = 0; i < ds_list_size(global.featData); i++) {
    var _featGet = global.featData[| i];
    if (ds_map_exists(global.featSave, _featGet.SaveID + ":progress") == false) {
        global.featSave[? _featGet.SaveID + ":unlocked"] = false;
        global.featSave[? _featGet.SaveID + ":progress"] = 0;
    }
}