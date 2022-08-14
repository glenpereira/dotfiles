require("glen.set")
require("glen.remap")
require("glen.packer")
require("glen.highlights")

local has = function(x)
    return vim.fn.has(x) == 1
end
  
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
    require('glen.macos')
end
 
if is_win then
    require('glen.windows')
end
