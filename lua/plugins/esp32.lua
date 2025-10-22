-- ESP32 开发助手插件配置
-- 快捷键说明：
--   <leader>RM - 选择端口并监控
--   <leader>Rm - 监控（使用上次端口）
--   <leader>RF - 选择端口并烧录
--   <leader>Rf - 烧录（使用上次端口）
--   <leader>Rc - 菜单配置
--   <leader>RC - 清理构建
--   <leader>Rr - 重新配置项目
--   <leader>Ri - 项目信息
-- Which-key 分组在 lua/plugins/which-key.lua 中定义
return {
  {
    "Aietes/esp32.nvim",
    name = "esp32.nvim",
    ft = { "c", "cpp" }, -- 只在 C/C++ 文件中加载
    dependencies = {
      "folke/snacks.nvim",
    },
    opts = {
      -- 使用标准的 "build" 目录而不是默认的 "build.clang"
      build_dir = "build",
    },
    config = function(_, opts)
      require("esp32").setup(opts)
    end,
    keys = {
      {
        "<leader>RM",
        function()
          require("esp32").pick("monitor")
        end,
        desc = "ESP32: 选择端口并监控",
      },
      {
        "<leader>Rm",
        function()
          require("esp32").command("monitor")
        end,
        desc = "ESP32: 监控",
      },
      {
        "<leader>RF",
        function()
          require("esp32").pick("flash")
        end,
        desc = "ESP32: 选择端口并烧录",
      },
      {
        "<leader>Rf",
        function()
          require("esp32").command("flash")
        end,
        desc = "ESP32: 烧录",
      },
      {
        "<leader>Rc",
        function()
          require("esp32").command("menuconfig")
        end,
        desc = "ESP32: 配置",
      },
      {
        "<leader>RC",
        function()
          require("esp32").command("clean")
        end,
        desc = "ESP32: 清理",
      },
      { "<leader>Rr", ":ESPReconfigure<CR>", desc = "ESP32: 重新配置项目" },
      { "<leader>Ri", ":ESPInfo<CR>", desc = "ESP32: 项目信息" },
    },
  },
}
