require('telescope').setup {
  defaults = {
    -- https://www.educba.com/lua-regex/
    file_ignore_patterns = { "build", "node%_modules", "%.git[/\\].*", "%.vscode", "%.png", "%.jpg", "%.jpeg", "%.svg", "%.eps" },
  },
  pickers = {
    colorscheme = {
      enable_preview = true
    },
  },
  extensions = {
  }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>pf', function()
  builtin.find_files {
    --https://cheatography.com/njones/cheat-sheets/ripgrep/
    find_command = { "rg", "--path-separator", "/", "--files", "--hidden", "--no-ignore-vcs", "--smart-case", "-L", "-F" },
  }
end)

vim.keymap.set('n', '<leader>pg', function()
    builtin.find_files {
      find_command = { "rg", "--path-separator", "/", "--files", "--hidden", "--smart-case", "-L", "-F" },
    }
  end)
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

