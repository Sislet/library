--------------------------------------
local current_weapon = "none"

--调试日志
local debug=true


---默认通用枪械
local common_key = 3

local ump9_key = 7
local akm_key = 6
local m416_key = 4
local scarl_key = 5
local m762_key = 9
local set_off_key = 8
--------------------------------------

--------------------------------------
--非满配参数调整
local nofull_adj= 1
--------------------------------------


--------------------------------------
--开火键
local fire_key = "Pause"
--------------------------------------

--------------------------------------
--模式键
mode_switch_key = "numlock"
--------------------------------------



--------------------------------------
--忽略键
local ignore_key = "lalt"
--------------------------------------

local target_sensitivity = 50
local scope_sensitivity = 50
local scope4x_sensitivity = 50

--------------------------------------------------------------------------
----------------        Recoil Table        ------------------------------
---------------- You can fix the value here ------------------------------
--------------------------------------------------------------------------

local recoil_table = {}

recoil_table["ump9"] = {
    basic={18,19,18,19,18,19,19,21,23,24,23,24,23,24,23,24,23,24,23,24,23,24,24,25,24,25,24,25,24,25,24,25,25,26,25,26,25,26,25,26,25,26,25,26,25,26},
    quadruple={83.3,83.3,83.3,83.3,83.3,83.3,83.3,116.7,116.7,116.7,116.7,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3},
    hold_adj=1.2,
    full_adj=1,
    clear_adj=1.2,

}

recoil_table["akm"] = {
    basic={23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,23.7,28,28,28,28,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7,29.7},
    quadruple={66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,66.7,123.3,123.3,123.3,123.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3,93.3},
    hold_adj=1.2,
    full_adj=1,
    clear_adj=1.2,
}

recoil_table["commongun"] = {
    basic={17,17,17,17,17, 18,18,18,18,18, 19,19,19,19,19, 21,21,21,21,21, 22,22,22,22,22, 23,23,23,23,23, 23,23,23,23,23, 23,23,23,23,23,},
    quadruple={86.7,86.7,86.7,86.7,86.7,86.7,86.7,150,150,150,150,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120,120},
    hold_adj=1.2,
    full_adj=1,
    clear_adj=1.2,
}

recoil_table["m416"] = {
    basic={19.8,19.8,19.8,19.8,19.8,20.2,20.2,20.2,20.3,20.8,21,21.5,22,23,23,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,23.6,	},
    quadruple={70,70,70,73,73, 75,75,75,75,75, 77,83,83,84,83, 85,87,85,85,85, 88,88,88,88,88, 88,88,88,88,88, 90,90,90,90,90, 90,90,90,90,90, },
    hold_adj=1.3,
    full_adj=1,
    clear_adj=1.41,
}

recoil_table["scarl"] = {
    basic={20,21,22,21,22,22,23,22,23,23,24,24,25,25,25,25,26,27,28,29,30,32,34,34,35,34,35,34,35,34,35,34,34,34,34,34,35,35,35,35,35,35,35,35,35,35},
    quadruple={86.7,86.7,86.7,86.7,86.7,86.7,86.7,150,150,150,150,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7,96.7},
    hold_adj=1.2,
    full_adj=1,
    clear_adj=1.2,
}

recoil_table["m762"] = {
    basic={16,17,18,20,21,22,23,24,25,26,28,30,32,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34,34},
    quadruple={13.3,13.3,13.3,13.3,13.3,21.7,21.7,21.7,21.7,21.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7,46.7},
    hold_adj=1.2,
    full_adj=1,
    clear_adj=1.58,
}

recoil_table["none"] = {
    basic={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    quadruple={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0},
    hold_adj=1.2,
    full_adj=1,
    clear_adj=1.2,
}


--------------------------------------------------------------------------
----------------        Function        ------------------------------
--------------------------------------------------------------------------


function convert_sens(unconvertedSens) 
    return 0.002 * math.pow(10, unconvertedSens / 50)
end

function calc_sens_scale(sensitivity)
    return convert_sens(sensitivity)/convert_sens(50)
end

local target_scale = calc_sens_scale(target_sensitivity)
local scope_scale = calc_sens_scale(scope_sensitivity)
local scope4x_scale = calc_sens_scale(scope4x_sensitivity)

function recoil_mode()
    if IsKeyLockOn(mode_switch_key) then
        return "basic"  
    else
        return "quadruple"
    end
end


function recoil_value(_weapon,_duration,_adj_mode)
    local _mode = recoil_mode()
    local step = (math.floor(_duration/100)) + 1
    if step > 40 then
        step = 40
    end

    local weapon_recoil = recoil_table[_weapon][_mode][step]    
    local hold_adj=recoil_table[_weapon]["hold_adj"]
    local gun_adj=1    
     if _adj_mode==1 then
         gun_adj=recoil_table[_weapon]["clear_adj"]
    else
        gun_adj=recoil_table[_weapon]["full_adj"]
    end


    local weapon_intervals = 30

    recoil_recovery = weapon_recoil * weapon_intervals / 100
    
    if IsMouseButtonPressed(2) then
        recoil_recovery = recoil_recovery / target_scale
    elseif recoil_mode() == "basic" then
        recoil_recovery = recoil_recovery / scope_scale
    elseif recoil_mode() == "quadruple" then
        recoil_recovery= recoil_recovery / scope4x_scale
    end
    if debug then
        OutputLogMessage("_adj_mode=%d,weapon = %s,recoil_recovery=%f, step = %d, hold_adj = %f,gun_adj=%f\n",_adj_mode, _weapon,recoil_recovery, step ,hold_adj,gun_adj)
    end
    return weapon_intervals,recoil_recovery,hold_adj,gun_adj
end


--------------------------------------------------------------------------
----------------        OnEvent        ------------------------------
--------------------------------------------------------------------------


function OnEvent(event, arg)
    if debug then
        OutputLogMessage("event = %s, arg = %d\n", event, arg)
    end
    if (event == "PROFILE_ACTIVATED") then
        EnablePrimaryMouseButtonEvents(true)
        if not IsKeyLockOn( "numlock" )then
            PressAndReleaseKey("numlock");
        end
    elseif event == "PROFILE_DEACTIVATED" then
        current_weapon = "none"
        shoot_duration = 0.0
        ReleaseKey(fire_key)
        ReleaseMouseButton(1)
    end

    if (event == "MOUSE_BUTTON_PRESSED" and arg == set_off_key) then
        current_weapon = "none"
        ClearLCD()
        OutputLogMessage("OFF\n")
        OutputLCDMessage("OFF",500000)
------------------------------------------------------------------------------------------------------------
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == akm_key and not IsModifierPressed("lctrl")) then
        current_weapon = "akm"
        adj_mode=0
        ClearLCD()
        OutputLogMessage("akm full on\n")
        OutputLCDMessage("akm full on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == commongun_key and not IsModifierPressed("lctrl")) then
        current_weapon = "commongun"
        adj_mode=0
        ClearLCD()
        OutputLogMessage("commongun full on\n")
        OutputLCDMessage("commongun full on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m416_key and not IsModifierPressed("lctrl")) then
        current_weapon = "m416"
        adj_mode=0
        ClearLCD()
        OutputLogMessage("m416 full on\n")
        OutputLCDMessage("m416 full on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ump9_key and not IsModifierPressed("lctrl")) then
        current_weapon = "ump9"
        adj_mode=0
        ClearLCD()
        OutputLogMessage("ump9 full on\n")
        OutputLCDMessage("ump9 full on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m762_key and not IsModifierPressed("lctrl")) then
        current_weapon = "m762"
        adj_mode=0
        ClearLCD()
        OutputLogMessage("m762 full on\n")
        OutputLCDMessage("m762 full on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == scarl_key and not IsModifierPressed("lctrl")) then
        current_weapon = "scarl"
        adj_mode=0
        ClearLCD()
        OutputLogMessage("scarl full on\n")
        OutputLCDMessage("scarl full on",500000)
------------------------------------------------------------------------------------------------------------
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == akm_key and IsModifierPressed("lctrl")) then
        current_weapon = "akm"
        adj_mode=1
        ClearLCD()
        OutputLogMessage("akm on\n")
        OutputLCDMessage("akm on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == commongun_key and IsModifierPressed("lctrl")) then
        current_weapon = "commongun"
        adj_mode=1
        ClearLCD()
        OutputLogMessage("commongun on\n")
        OutputLCDMessage("commongun on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m416_key and IsModifierPressed("lctrl")) then
        current_weapon = "m416"
        adj_mode=1
        ClearLCD()
        OutputLogMessage("m416 on\n")
        OutputLCDMessage("m416 on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == ump9_key and IsModifierPressed("lctrl")) then
        current_weapon = "ump9"
        adj_mode=1
        ClearLCD()
        OutputLogMessage("ump9 on\n")
        OutputLCDMessage("ump9 on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == m762_key and IsModifierPressed("lctrl")) then
        current_weapon = "m762"
        adj_mode=1
        ClearLCD()
        OutputLogMessage("m762 on\n")
        OutputLCDMessage("m762 on",500000)
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == scarl_key and IsModifierPressed("lctrl")) then
        current_weapon = "scarl"
        adj_mode=1
        ClearLCD()
        OutputLogMessage("scarl on\n")
        OutputLCDMessage("scarl on",500000)
------------------------------------------------------------------------------------------------------------
    elseif (event == "MOUSE_BUTTON_PRESSED" and arg == 1) then
        if ((current_weapon == "none") or IsModifierPressed(ignore_key)) then
            PressKey(fire_key)
            repeat
                Sleep(30)
            until not IsMouseButtonPressed(1)
            ReleaseKey(fire_key)
        else
            local shoot_duration = 0.0
            repeat
                local intervals,recovery,hold_adj,gun_adj = recoil_value(current_weapon,shoot_duration,adj_mode)
                PressAndReleaseKey(fire_key)
                if (IsModifierPressed("lshift")) then
                    OutputLogMessage("Hold    on\n")
                    MoveMouseRelative(0, recovery * hold_adj * gun_adj )
                else
                    MoveMouseRelative(0, recovery * gun_adj)
                end

                Sleep(intervals)
                shoot_duration = shoot_duration + intervals
            until not IsMouseButtonPressed(1)
        end
    elseif (event == "MOUSE_BUTTON_RELEASED" and arg == 1) then
        ReleaseKey(fire_key)
    end
end