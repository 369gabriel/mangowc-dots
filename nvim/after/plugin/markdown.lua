-- ~/.config/nvim/after/plugin/markdown.lua

-- Configuração para o plugin render-markdown.nvim
require('render-markdown').setup({
    render_modes = true,
    enabled = true,
})

vim.api.nvim_set_hl(0, 'RenderMarkdownH1', { fg = '#ffffff', bold = true })  -- H1 em branco e negrito
vim.api.nvim_set_hl(0, 'RenderMarkdownH2', { fg = '#e0e0e0', bold = true })  -- H2 em cinza claro e negrito
vim.api.nvim_set_hl(0, 'RenderMarkdownH3', { fg = '#d0d0d0', bold = true })  -- H3 em cinza mais claro e negrito
vim.api.nvim_set_hl(0, 'RenderMarkdownH4', { fg = '#c0c0c0' })               -- H4 em cinza médio
vim.api.nvim_set_hl(0, 'RenderMarkdownH5', { fg = '#b0b0b0' })               -- H5 em cinza médio
vim.api.nvim_set_hl(0, 'RenderMarkdownH6', { fg = '#a0a0a0' })               -- H6 em cinza claro

-- Fundo para títulos
vim.api.nvim_set_hl(0, 'RenderMarkdownH1Bg', { bg = '#333333' })  -- Fundo escuro para H1
vim.api.nvim_set_hl(0, 'RenderMarkdownH2Bg', { bg = '#2a2a2a' })  -- Fundo escuro para H2
vim.api.nvim_set_hl(0, 'RenderMarkdownH3Bg', { bg = '#222222' })  -- Fundo escuro para H3
vim.api.nvim_set_hl(0, 'RenderMarkdownH4Bg', { bg = '#1a1a1a' })  -- Fundo escuro para H4
vim.api.nvim_set_hl(0, 'RenderMarkdownH5Bg', { bg = '#121212' })  -- Fundo escuro para H5
vim.api.nvim_set_hl(0, 'RenderMarkdownH6Bg', { bg = '#0a0a0a' })  -- Fundo escuro para H6

-- Blocos de código
vim.api.nvim_set_hl(0, 'RenderMarkdownCode', { bg = '#1a1a1a', fg = '#a0a0a0' })  -- Fundo escuro e texto cinza
vim.api.nvim_set_hl(0, 'RenderMarkdownCodeInline', { bg = '#1a1a1a', fg = '#a0a0a0' })  -- Igual ao bloco de código
vim.api.nvim_set_hl(0, 'RenderMarkdownInlineHighlight', { bg = '#1a1a1a', fg = '#a0a0a0' })  -- Igual ao código inline

-- Listas e marcadores
vim.api.nvim_set_hl(0, 'RenderMarkdownBullet', { fg = '#e0e0e0' })  -- Marcadores de lista em cinza claro
vim.api.nvim_set_hl(0, 'RenderMarkdownQuote', { fg = '#707070', italic = true })  -- Citações em cinza escuro e itálico
vim.api.nvim_set_hl(0, 'RenderMarkdownDash', { fg = '#808080' })  -- Linhas temáticas em cinza

-- Links
vim.api.nvim_set_hl(0, 'RenderMarkdownLink', { fg = '#808080', underline = true })  -- Links em cinza com sublinhado
vim.api.nvim_set_hl(0, 'RenderMarkdownWikiLink', { fg = '#808080', underline = true })  -- WikiLinks em cinza com sublinhado

-- Checkboxes
vim.api.nvim_set_hl(0, 'RenderMarkdownUnchecked', { fg = '#a0a0a0' })  -- Checkbox não marcado em cinza claro
vim.api.nvim_set_hl(0, 'RenderMarkdownChecked', { fg = '#e0e0e0' })    -- Checkbox marcado em cinza claro
vim.api.nvim_set_hl(0, 'RenderMarkdownTodo', { fg = '#ffffff' })        -- Todo em branco

-- Tabelas
vim.api.nvim_set_hl(0, 'RenderMarkdownTableHead', { fg = '#ffffff', bold = true })  -- Cabeçalho da tabela em branco e negrito
vim.api.nvim_set_hl(0, 'RenderMarkdownTableRow', { fg = '#e0e0e0' })                -- Linhas da tabela em cinza claro
vim.api.nvim_set_hl(0, 'RenderMarkdownTableFill', { fg = '#808080' })               -- Preenchimento da tabela em cinza

-- Callouts (alertas)
vim.api.nvim_set_hl(0, 'RenderMarkdownSuccess', { fg = '#00ff00' })  -- Sucesso em verde
vim.api.nvim_set_hl(0, 'RenderMarkdownInfo', { fg = '#00ffff' })     -- Info em ciano
vim.api.nvim_set_hl(0, 'RenderMarkdownHint', { fg = '#ffff00' })     -- Dica em amarelo
vim.api.nvim_set_hl(0, 'RenderMarkdownWarn', { fg = '#ffa500' })     -- Aviso em laranja
vim.api.nvim_set_hl(0, 'RenderMarkdownError', { fg = '#ff0000' })    -- Erro em vermelho
