local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
    --formatting
    if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end
end

local capabilities = require('cmp_nvim_lsp').update_capabilities(
    vim.lsp.protocol.make_client_capabilities()
)

nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
    cmd = { "typescript-language-server", "--stdio" },
    capabilities = capabilities,
}


nvim_lsp.sumneko_lua.setup {
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                -- get the language server to recognize the vim global
                globals = { 'vim' }
            },

            workspace = {
                -- make the server aware of neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true)
            }
        }
    },
    capabilities = capabilities,
}

nvim_lsp.eslint.setup {
    on_attach = on_attach,
    filetypess = { "javascript", "javascriptreact", "javascript.jsx" },
    cmd = { "vscode-eslint-language-server", "--stdio" },
    capabilities = capabilities,
}

nvim_lsp.cssls.setup {
    on_attach = on_attach,
    filetypes = { "css", "scss", "less" },
    cmd = { "vscode-css-language-server", "--stdio" },
    capabilities = capabilities,
}
