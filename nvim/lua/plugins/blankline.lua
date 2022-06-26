local present, blankline = pcall(require, "indent_blankline")

if not present then
   return
end

local hl = vim.api.nvim_set_hl
hl(0, "IndentBlanklineContextChar", {
   link = "Comment",
})
hl(0, "IndentBlanklineContextStart", {
   link = "Comment",
})
local options = {
   indentLine_enabled = 1,
   char = "▏",
   filetype_exclude = {
      "help",
      "terminal",
      "packer",
      "lspinfo",
      "TelescopePrompt",
      "TelescopeResults",
      "lsp-installer",
      "",
   },
   buftype_exclude = { "terminal" },
   show_trailing_blankline_indent = false,
   show_first_indent_level = false,
   show_current_context = true,
   show_current_context_start = true,
}

blankline.setup(options)
