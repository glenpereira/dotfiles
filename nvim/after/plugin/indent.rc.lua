local status, indent = pcall(require, 'indent-blankline')
if (not status) then return end

indent.setup {
    space_char_blankline = " ",
}
