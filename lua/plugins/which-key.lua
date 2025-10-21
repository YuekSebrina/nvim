return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      ---@type false | "classic" | "modern" | "helix"
      preset = "helix",
      win = {
        -- no_overlap = true,
        title = false,
        width = 0.5,
      },
      -- stylua: ignore
      spec = {
        { "<leader>s",  group = "搜索/Snacks"                  },
        { "<leader>t",  group = "切换"                         },
        { "<leader>f",  group = "查找"                         },
        { "<leader>b",  group = "缓冲区"                       },
        { "<leader>gh", group = "Git 块"                      },
        { "<leader>gg", group = "Git"                         },
        { "<leader>g",  group = "Git"                         },
        { "<leader>e",  group = "文件树"                       },
        { "<leader>c",  group = "代码"                         },
      },
      -- expand all nodes without a description
      expand = function(node)
        return not node.desc
      end,
    },
    keys = {
      -- stylua: ignore
      { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "[Which-key] 缓冲区本地键映射", },
    },
  },
}
