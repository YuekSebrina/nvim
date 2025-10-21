return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",        -- C/C++ LSP
        "pyright",       -- Python LSP
        "rust-analyzer", -- Rust LSP
      },
    },
    opts_extend = { "ensure_installed" },
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      local function ensure_installed()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end
      if mr.refresh then
        mr.refresh(ensure_installed)
      else
        ensure_installed()
      end
    end,
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = { 'saghen/blink.cmp' },
    config = function()
      vim.diagnostic.config({
        underline = false,
        signs = false,
        update_in_insert = false,
        virtual_text = { spacing = 2, prefix = "●" },
        severity_sort = true,
        float = {
          border = "rounded",
        },
      })
      
      local capabilities = require('blink.cmp').get_lsp_capabilities()

      -- 配置 Lua LSP
      vim.lsp.config('lua_ls', {
        capabilities = capabilities,
      })

      -- 配置 C/C++ LSP
      vim.lsp.config('clangd', {
        capabilities = capabilities,
        cmd = {
          'clangd',
          '--background-index',
          '--header-insertion=iwyu',
          '--completion-style=detailed',
          '--query-driver=/usr/bin/g++,/usr/bin/gcc',
          '--header-insertion-decorators=false',
          '--pch-storage=memory',
          '--all-scopes-completion',
          '--cross-file-rename',
          '--suggest-missing-includes',
          '--fallback-style=Google',
        },
        init_options = {
          clangdFileStatus = true,
          usePlaceholders = true,
          completeUnimported = true,
          semanticHighlighting = true,
          fallbackFlags = { '-std=c++17' },
        },
      })

      -- 配置 Python LSP
      vim.lsp.config('pyright', {
        capabilities = capabilities,
        settings = {
          python = {
            analysis = {
              autoSearchPaths = true,
              diagnosticMode = 'workspace',
              useLibraryCodeForTypes = true,
            },
          },
        },
      })

      -- 配置 Rust LSP
      vim.lsp.config('rust_analyzer', {
        capabilities = capabilities,
        settings = {
          ['rust-analyzer'] = {
            cargo = {
              allFeatures = true,
            },
            checkOnSave = {
              command = 'clippy',
            },
          },
        },
      })

      -- 启用所有 LSP 服务器
      vim.lsp.enable('lua_ls')
      vim.lsp.enable('clangd')
      vim.lsp.enable('pyright')
      vim.lsp.enable('rust_analyzer')
    end
  },
}