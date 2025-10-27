require("gyaf")
-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("lazy").setup({
  spec = {
      {
          'nvim-telescope/telescope.nvim',
          version = '0.1.8',
          dependencies = { 'nvim-lua/plenary.nvim' },
      },
      'github/copilot.vim',
      'nvim-treesitter/nvim-treesitter',
      {
      "ficcdaf/ashen.nvim",
      lazy = false,
      priority = 1000,
      opts = {
       },
      },
      'theprimeagen/harpoon',
      'norcalli/nvim-colorizer.lua',
      'mbbill/undotree',
      'neovim/nvim-lspconfig',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/nvim-cmp',
      'vonheikemen/lsp-zero.nvim',
      {
      'windwp/nvim-autopairs',
      event = "InsertEnter",
      config = true
      },
      {
          "kevinhwang91/nvim-ufo",
          dependencies = {
              { "kevinhwang91/promise-async" },
          },
          config = function()
              vim.opt.foldmethod = "expr"
              vim.opt.foldexpr = 'v:lua.require("ufo").foldexpr()'
              vim.opt.foldenable = true
              vim.opt.foldlevel = 99
              require("ufo").setup({
                  provider_selector = function(bufnr, filetype, buftype)
                      return {'treesitter', 'indent'}
                  end
              })
          end,
      },
      {
          'MeanderingProgrammer/render-markdown.nvim',
          dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
          opts = {},
      },
      {'akinsho/toggleterm.nvim', version = "*", config = true},


  },
  checker = { enabled = false },
})

