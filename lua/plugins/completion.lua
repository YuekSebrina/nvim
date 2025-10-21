return {
  {
    'saghen/blink.cmp',
    -- optional: provides snippets for the snippet source
    -- dependencies = { 'rafamadriz/friendly-snippets' },

    -- use a release tag to download pre-built binaries
    version = '1.*',
    -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
    -- build = 'cargo build --release',
    -- If you use nix, you can build from source using latest nightly rust with:
    -- build = 'nix run .#build-plugin',

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
      -- 'super-tab' for mappings similar to vscode (tab to accept)
      -- 'enter' for enter to accept
      -- 'none' for no mappings
      --
      -- All presets have the following mappings:
      -- C-space: Open menu or open docs if already open
      -- C-n/C-p or Up/Down: Select next/previous item
      -- C-e: Hide menu
      -- C-k: Toggle signature help (if signature.enabled = true)
      --
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = { preset = 'super-tab' },

      appearance = {
        -- 'mono' (default) for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
        -- Adjusts spacing to ensure icons are aligned
        nerd_font_variant = 'mono'
      },

      -- Default list of enabled providers defined so that you can extend it
      -- elsewhere in your config, without redefining it, due to `opts_extend`
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },

        -- 配置每个源的优先级
        providers = {
          lsp = {
            name = 'LSP',
            module = 'blink.cmp.sources.lsp',
            score_offset = 90,  -- LSP 补全优先级最高
            -- 优先显示关键字和常用项
            transform_items = function(_, items)
              -- 对补全项进行排序,关键字优先
              table.sort(items, function(a, b)
                local a_is_keyword = a.kind == 14  -- CompletionItemKind.Keyword
                local b_is_keyword = b.kind == 14

                if a_is_keyword and not b_is_keyword then
                  return true
                elseif not a_is_keyword and b_is_keyword then
                  return false
                end

                -- 其他情况按默认排序
                return false
              end)
              return items
            end,
          },

          snippets = {
            name = 'Snippets',
            module = 'blink.cmp.sources.snippets',
            score_offset = 85,  -- 代码片段次优先
          },

          path = {
            name = 'Path',
            module = 'blink.cmp.sources.path',
            score_offset = 80,  -- 路径补全
          },

          buffer = {
            name = 'Buffer',
            module = 'blink.cmp.sources.buffer',
            score_offset = 70,  -- 缓冲区内容优先级较低
            -- 基于使用频率排序
            keyword_length = 2,  -- 最少2个字符才触发
          },
        },
      },

      -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
      -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
      -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
      --
      -- See the fuzzy documentation for more information
      fuzzy = {
        implementation = "prefer_rust_with_warning",
        -- 排序配置
        sorts = {
          "label",       -- 按字母顺序
          "kind",        -- 按类型排序 (关键字、函数、变量等)
          "score",       -- 按匹配分数排序
          "sort_text",   -- 按 LSP 提供的排序文本
        },
        -- 预选择配置
        preselect = true,  -- 自动预选择第一项
      },

      completion = {
        -- 自动括号
        accept = {
          auto_brackets = {
            enabled = true,  -- 启用自动括号
          },
        },

        -- 自动显示文档
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 200,
          window = {
            border = "rounded",
          },
        },

        -- 补全菜单配置
        menu = {
          border = "rounded",
          max_height = 20,
          -- 配置补全项的显示列
          draw = {
            -- 显示图标和类型标签,调整间距
            columns = {
              { "kind_icon", "label", "label_description", gap = 1 },
              { "kind", gap = 1 }
            },
            components = {
              kind_icon = {
                text = function(ctx)
                  return ctx.kind_icon .. " "  -- 图标后添加空格
                end,
              },
            },
          },
        },

        -- 列表选择配置
        list = {
          selection = {
            preselect = true,      -- 自动预选择第一项
            auto_insert = false,   -- 不自动插入,需要手动确认
          },
          -- 基于频率的智能排序
          cycle = {
            from_bottom = true,
            from_top = true,
          },
        },

        -- Ghost text (内联预览)
        ghost_text = {
          enabled = true,
        },
      },
    },
    opts_extend = { "sources.default" }
  }
}