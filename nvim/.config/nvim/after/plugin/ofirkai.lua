function Ofirkai(color)
    color = color or "ofirkai"
    local status = pcall(vim.cmd.colorscheme, color)
    if not status then return end

    local groups = {
        "Normal",
        "NormalNC",
        "NormalFloat",
        "SignColumn",
        "LineNr",
        "CursorLineNr",
        "EndOfBuffer",
        "MsgArea",
        "StatusLine",
        "StatusLineNC",
        "ModeMsg",
        "MsgSeparator",
        "Search",
        "IncSearch",
        "Pmenu",
        "PmenuSbar",
        "PmenuThumb",
    }

    for _, group in ipairs(groups) do
        vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
    end
end

Ofirkai()
