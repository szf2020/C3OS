---@diagnostic disable: undefined-global

troops = {}

function troops.check_system()
    local folders = {"/bin", "/cfg", "/security"}
    for _, f in ipairs(folders) do
        if not c3_file_exists(f) then
            print("[TROOPS] CRITICAL: Folder " .. f .. " missing!")
            return false
        end
    end

    if c3_get_heap_kb() < 10 then
        print("[TROOPS] CRITICAL: Not enough RAM!")
        return false
    end

    return true
end

print("[TROOPS] Guardian Loaded")