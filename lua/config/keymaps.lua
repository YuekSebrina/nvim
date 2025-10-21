local keymap = vim.keymap

-- ==================== Leader 键设置 ====================
-- Leader 键在 init.lua 中设置为空格
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = "\\"

-- ==================== 基础编辑 ====================
-- 保存和退出
keymap.set("n", "<leader>w", "<CMD>w<CR>", { desc = "保存文件" })
keymap.set("n", "<leader>q", "<CMD>q<CR>", { desc = "退出" })
keymap.set("n", "<leader>wq", "<CMD>wq<CR>", { desc = "保存并退出" })

-- 取消搜索高亮
keymap.set("n", "<ESC>", "<CMD>nohl<CR>", { desc = "取消高亮" })

-- ==================== 移动 (交换 j/k) ====================
vim.keymap.set('n', 'j', 'k', { noremap = true, desc = "向上移动" })
vim.keymap.set('n', 'k', 'j', { noremap = true, desc = "向下移动" })
vim.keymap.set('v', 'j', 'k', { noremap = true, desc = "向上移动" })
vim.keymap.set('v', 'k', 'j', { noremap = true, desc = "向下移动" })

-- ==================== 可视模式 - 移动行 ====================
keymap.set("v", "K", ":m '>+1<CR>gv=gv", { desc = "向下移动选中行" })
keymap.set("v", "J", ":m '<-2<CR>gv=gv", { desc = "向上移动选中行" })

-- ==================== 窗口管理 ====================
-- 分屏 (使用更直观的符号)
keymap.set("n", "<leader>|", "<C-w>v", { desc = "垂直分屏" })
keymap.set("n", "<leader>-", "<C-w>s", { desc = "水平分屏" })
keymap.set("n", "<leader>wo", "<C-w>o", { desc = "只保留当前窗口" })

-- 窗口大小调整
keymap.set("n", "<C-Up>", "<CMD>resize +2<CR>", { desc = "增加窗口高度" })
keymap.set("n", "<C-Down>", "<CMD>resize -2<CR>", { desc = "减少窗口高度" })
keymap.set("n", "<C-Left>", "<CMD>vertical resize -2<CR>", { desc = "减少窗口宽度" })
keymap.set("n", "<C-Right>", "<CMD>vertical resize +2<CR>", { desc = "增加窗口宽度" })

-- Tmux Navigator - 在 Vim/Tmux 窗格之间导航
keymap.set("n", "<C-h>", "<CMD>TmuxNavigateLeft<CR>", { desc = "导航到左侧窗口" })
keymap.set("n", "<C-j>", "<CMD>TmuxNavigateDown<CR>", { desc = "导航到下方窗口" })
keymap.set("n", "<C-k>", "<CMD>TmuxNavigateUp<CR>", { desc = "导航到上方窗口" })
keymap.set("n", "<C-l>", "<CMD>TmuxNavigateRight<CR>", { desc = "导航到右侧窗口" })
keymap.set("n", "<C-\\>", "<CMD>TmuxNavigatePrevious<CR>", { desc = "导航到上一个窗口" })

-- ==================== 注释 ====================
-- Ctrl+/ (终端中实际是 Ctrl+_)
keymap.set("n", "<C-_>", "<Plug>(comment_toggle_linewise_current)", { desc = "切换行注释" })
keymap.set("v", "<C-_>", "<Plug>(comment_toggle_linewise_visual)", { desc = "切换选中行注释" })

-- ==================== 插件管理 ====================
keymap.set("n", "<leader>L", "<CMD>Lazy<CR>", { desc = "打开 Lazy.nvim" })

-- ==================== 文件树 (nvim-tree) ====================
keymap.set("n", "<leader>e", "<CMD>NvimTreeToggle<CR>", { desc = "切换文件树" })
keymap.set("n", "<leader>E", "<CMD>NvimTreeFindFile<CR>", { desc = "在文件树中定位当前文件" })

-- ==================== Buffer 管理 ====================
keymap.set("n", "<Tab>", "<CMD>BufferLineCycleNext<CR>", { desc = "下一个 buffer" })
keymap.set("n", "<S-Tab>", "<CMD>BufferLineCyclePrev<CR>", { desc = "上一个 buffer" })
-- <leader>bd 由 snacks.nvim 提供 (智能删除,保持窗口布局)
-- Alt+w 也可以删除 buffer (snacks.nvim)
keymap.set("n", "<leader>bo", "<CMD>BufferLineCloseOthers<CR>", { desc = "关闭其他 buffer" })
keymap.set("n", "<leader>bp", "<CMD>BufferLinePick<CR>", { desc = "选择 buffer" })
keymap.set("n", "<leader>bc", "<CMD>BufferLinePickClose<CR>", { desc = "选择要关闭的 buffer" })

-- ==================== LSP ====================
-- LSP 跳转快捷键由 snacks.nvim 提供 (使用 picker)
-- gd - 跳转到定义
-- gD - 跳转到声明
-- gr - 查找引用
-- gI - 跳转到实现
-- gy - 跳转到类型定义
-- <leader>ss - LSP 符号
-- <leader>sS - LSP 工作区符号

-- 悬停文档
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "显示悬停文档" })

-- 代码操作
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "代码操作" })
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "重命名符号" })

-- 诊断 (由 snacks.nvim 提供)
-- <leader>sd - 诊断列表
-- <leader>sD - 当前 buffer 诊断
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "上一个诊断" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "下一个诊断" })
keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "显示诊断信息" })

-- ==================== Git Hunk (gitsigns) ====================
-- 这些快捷键在 gitsigns.lua 的 on_attach 中定义
-- ]h / [h - 导航 hunk
-- <leader>ghs - Stage hunk
-- <leader>ghr - Reset hunk
-- <leader>ghp - Preview hunk

-- ==================== 终端 ====================
-- 由 snacks.nvim 提供
-- <A-i> - 切换悬浮终端
-- <leader>tt - 切换分割终端 (底部 40% 高度)

-- ==================== Which-key ====================
-- <leader>? - 显示 buffer 本地快捷键

-- ==================== 其他 ====================
-- 更好的上下移动 (保持光标居中)
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "向下半页" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "向上半页" })

-- 搜索时保持光标居中
keymap.set("n", "n", "nzzzv", { desc = "下一个搜索结果" })
keymap.set("n", "N", "Nzzzv", { desc = "上一个搜索结果" })

-- 保持缩进时的可视模式选择
keymap.set("v", "<", "<gv", { desc = "左缩进" })
keymap.set("v", ">", ">gv", { desc = "右缩进" })

-- 粘贴时不覆盖寄存器
keymap.set("v", "p", '"_dP', { desc = "粘贴不覆盖寄存器" })
