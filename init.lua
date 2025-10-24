--Problemi sia con LSP che con cmp, autocompletamento. Risolverli.

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('rebelot/kanagawa.nvim')
--Plug('KijitoraFinch/nanode.nvim')
Plug('kyazdani42/nvim-tree.lua')
Plug('kyazdani42/nvim-web-devicons')
Plug('romgrk/barbar.nvim')
Plug('nvim-lualine/lualine.nvim') 
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('hrsh7th/cmp-buffer') 
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline') 
Plug('hrsh7th/nvim-cmp')
Plug('hrsh7th/cmp-nvim-lsp' ) 
Plug('hrsh7th/cmp-nvim-lsp-signature-help')
Plug('neovim/nvim-lspconfig')

vim.call('plug#end')

home = os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require "common"
--dofile("theme.lua")
require "theme"
require "vimtree"
require "barbar"
require "lua_line"
require "lsp"
require "cmp"
