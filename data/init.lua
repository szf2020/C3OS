---@diagnostic disable: undefined-global

_OS_VERSION = "1.1.0b"

print("\n[C3OS-LUA] System Link Initialized")
print("C3OS Version: " .. _OS_VERSION .. "\n")

collectgarbage("incremental", 110, 200)

sys = {
    mem = function()
        return collectgarbage("count")
    end,

    gc = function()
        collectgarbage("generational")
    end,

    explore = function()
        if runFileManager then runFileManager() else print("Error: FM Not Linked Properly") end
    end
}

print("-----------------------")

c3_cls()
c3_update()

c3_drawRFrame(23, 13, 83, 40, 3)
c3_drawBitmap(28, 17, 7, 8, "image_Rpc_active_bits")

c3_set_font(1)
c3_print("Initial Setup", 37, 24)

c3_draw_frame(27, 44, 75, 3)
c3_update()

c3_set_font(4)
c3_print("Prep:", 27, 40)
c3_print("User Data...", 47, 40)

c3_update()

local function load_config()
    local config_path = "/cfg/user_prefs.lua"
    if c3_file_exists(config_path) then
        print("[INIT/CONFIG] Found user preferences!")
    else
        print("[INIT/CONFIG] No user preferences found!")
    end
end

c3_draw_line(28, 45, 65, 45)
c3_update()

c3_sleep(2500)

local checkFile_ = c3_file_exists("/bin")
if checkFile_ then
    print("[INIT/BIN] Found bin folder!")
end

load_config()

c3_draw_line(28, 45, 100, 45);
c3_update()

c3_sleep(100)

print("[LUA/PROC] Initializing Background Process")
if c3_file_exists("/security/troops.lua") then
    dofile("/security/troops.lua")
    if not troops.check_system() then
        print("[LUA/PROC/TROOPS] Failed to load troops for system defend, the system will start with no protection!")
    end
end

sys.gc()
print(string.format("[C3OS-LUA] Initialization Complete (%.2f KB Used)", sys.mem()))
print("-----------------------\n")