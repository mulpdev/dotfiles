local WINDOWS = "Windows"

local DEBUG = true
local function debuglog(s)
	local SEP = "/" -- this works on Windows with vim.fn.resolve()
	local debugfname = vim.fn.resolve(vim.fn.stdpath('config') .. SEP .. "custom_helper.log")

	if s == '' then
		-- wipes old file if it existed
		local debugfd = io.open(debugfname, 'w')
		debugfd:close()
	else
		-- append string
		local debugfd = io.open(debugfname, 'a')
		debugfd:write(s)
		debugfd:write('\n')
		debugfd:close()
	end
end

local function getOSName()
	local osname
	if jit then
		osname = jit.os
	else
		local fh, ferr = assert(io.popen("uname -o 2>/dev/null", "r"))
		if fh then
			osname = fh.read()
		end
	end

	local ret = osname or WINDOWS
	if DEBUG then debuglog("getOSName() == " .. ret) end
	return ret
end

local function isWindows()
	local ret = getOSName() == WINDOWS
	if DEBUG then debuglog("isWindows() == " .. (ret and 'true' or 'false')) end
	return ret
end

debuglog("")

return {isWindows = isWindows }
