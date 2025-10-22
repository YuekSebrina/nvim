# Neovim 配置快捷键总览

## 📦 已安装插件列表

### 核心插件
- **lazy.nvim** - 插件管理器
- **nvim-lspconfig** - LSP 配置
- **mason.nvim** - LSP/工具安装管理器
- **blink.cmp** - 代码补全引擎 (Rust 实现)
- **nvim-treesitter** - 语法高亮和解析

### UI/主题
- **tokyonight.nvim** - Tokyo Night 主题 (Moon 风格)
- **lualine.nvim** - 状态栏
- **bufferline.nvim** - Buffer 标签栏
- **nvim-web-devicons** - 文件图标
- **noice.nvim** - UI 美化 (命令行、通知等)
- **nvim-notify** - 通知系统
- **rainbow-delimiters.nvim** - 彩虹括号

### 文件管理
- **nvim-tree.lua** - 文件树浏览器

### Git 集成
- **gitsigns.nvim** - Git 状态显示和操作

### 编辑增强
- **nvim-autopairs** - 括号自动配对
- **Comment.nvim** - 快速注释
- **vim-tmux-navigator** - Vim/Tmux 窗格导航

### 实用工具
- **which-key.nvim** - 快捷键提示
- **snacks.nvim** - 实用工具集合 (Picker、Dashboard、Indent、Terminal 等)
- **lazydev.nvim** - Lua 开发增强

---

## ⌨️ 快捷键映射表

### 基础配置
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `空格` | Normal | Leader 键 | 所有 leader 快捷键的前缀 |
| `\` | Normal | Local Leader | 局部 leader 键 |

---

### 基础编辑
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `<leader>w` | Normal | 保存文件 | :w |
| `<leader>q` | Normal | 退出 | :q |
| `<leader>wq` | Normal | 保存并退出 | :wq |
| `ESC` | Normal | 取消搜索高亮 | :nohl |

---

### 移动和编辑
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `j` | Normal/Visual | 向上移动 | 已交换 j/k |
| `k` | Normal/Visual | 向下移动 | 已交换 j/k |
| `K` | Visual | 向下移动选中行 | 移动整行 |
| `J` | Visual | 向上移动选中行 | 移动整行 |
| `Ctrl+d` | Normal | 向下半页 | 保持光标居中 |
| `Ctrl+u` | Normal | 向上半页 | 保持光标居中 |
| `n` | Normal | 下一个搜索结果 | 保持光标居中 |
| `N` | Normal | 上一个搜索结果 | 保持光标居中 |
| `<` | Visual | 左缩进 | 保持选择 |
| `>` | Visual | 右缩进 | 保持选择 |
| `p` | Visual | 粘贴不覆盖寄存器 | 保留原寄存器内容 |

---

### 窗口管理
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `<leader>\|` | Normal | 垂直分屏 | 左右分屏 |
| `<leader>-` | Normal | 水平分屏 | 上下分屏 |
| `<leader>wo` | Normal | 只保留当前窗口 | 关闭其他窗口 |
| `<leader>z` | Normal | Zen 模式 | 专注写作模式 |
| `<leader>Z` | Normal | Zoom 模式 | 最大化当前窗口 |
| `Ctrl+Up` | Normal | 增加窗口高度 | +2 行 |
| `Ctrl+Down` | Normal | 减少窗口高度 | -2 行 |
| `Ctrl+Left` | Normal | 减少窗口宽度 | -2 列 |
| `Ctrl+Right` | Normal | 增加窗口宽度 | +2 列 |

---

### Tmux 导航
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `Ctrl+h` | Normal | 导航到左侧窗口 | Vim/Tmux 无缝切换 |
| `Ctrl+j` | Normal | 导航到下方窗口 | Vim/Tmux 无缝切换 |
| `Ctrl+k` | Normal | 导航到上方窗口 | Vim/Tmux 无缝切换 |
| `Ctrl+l` | Normal | 导航到右侧窗口 | Vim/Tmux 无缝切换 |
| `Ctrl+\` | Normal | 导航到上一个窗口 | Vim/Tmux 无缝切换 |

---

### 注释
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `Ctrl+/` | Normal | 切换行注释 | 当前行注释/取消注释 |
| `Ctrl+/` | Visual | 切换行注释 | 选中行注释/取消注释 |
| `gcc` | Normal | 切换行注释 | 备用快捷键 |
| `gc` + 移动 | Normal | 注释移动范围 | 如 `gcap` 注释段落 |
| `gbc` | Normal | 切换块注释 | 块注释 |

---

### 插件管理
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `<leader>L` | Normal | 打开 Lazy.nvim | 插件管理器 |

---

### 文件树 (nvim-tree)
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `<leader>e` | Normal | 切换文件树 | 打开/关闭 |
| `<leader>E` | Normal | 定位当前文件 | 在文件树中定位 |

**文件树内快捷键:**
| 快捷键 | 功能 |
|--------|------|
| `Enter` | 打开文件/文件夹 |
| `a` | 创建文件/文件夹 |
| `d` | 删除 |
| `r` | 重命名 |
| `x` | 剪切 |
| `c` | 复制 |
| `p` | 粘贴 |
| `y` | 复制文件名 |
| `Y` | 复制相对路径 |
| `gy` | 复制绝对路径 |
| `R` | 刷新 |
| `?` | 帮助 |

---

### Buffer 管理
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `Tab` | Normal | 下一个 buffer | 切换标签页 |
| `Shift+Tab` | Normal | 上一个 buffer | 切换标签页 |
| `<leader>bd` | Normal | 删除 buffer | Snacks 智能删除 |
| `Alt+w` | Normal | 删除 buffer | Snacks 智能删除 (备用) |
| `<leader>bo` | Normal | 关闭其他 buffer | 只保留当前 |
| `<leader>bp` | Normal | 选择 buffer | 交互式选择 |
| `<leader>bc` | Normal | 选择要关闭的 buffer | 交互式关闭 |
| `<leader>,` | Normal | Buffer 列表 (Picker) | Snacks Picker |
| `<leader>sb` | Normal | Buffer 列表 (Picker) | Snacks Picker |

---

### LSP 功能
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `K` | Normal | 悬停文档 | 显示函数/变量文档 |
| `gd` | Normal | 跳转到定义 | Snacks Picker (有预览) |
| `gr` | Normal | 查找引用 | Snacks Picker (有预览) |
| `gD` | Normal | 跳转到声明 | Snacks Picker |
| `gI` | Normal | 跳转到实现 | Snacks Picker |
| `gy` | Normal | 跳转到类型定义 | Snacks Picker |
| `<leader>ca` | Normal | 代码操作 | Code Actions |
| `<leader>rn` | Normal | 重命名符号 | Rename Symbol |
| `<leader>d` | Normal | 显示诊断信息 | 浮窗显示错误 |
| `[d` | Normal | 上一个诊断 | 跳转到上一个错误 |
| `]d` | Normal | 下一个诊断 | 跳转到下一个错误 |
| `<leader>ss` | Normal | LSP 符号列表 | 文档符号 |
| `<leader>sS` | Normal | LSP 工作区符号 | 工作区符号 |
| `<leader>sd` | Normal | 诊断列表 | 所有诊断 |
| `<leader>sD` | Normal | 当前 buffer 诊断 | 当前文件诊断 |
| `Ctrl+o` | Normal | 返回上一个位置 | 跳转历史后退 |
| `Ctrl+i` | Normal | 前进到下一个位置 | 跳转历史前进 |

**已配置的 LSP 服务器:**
- **lua_ls** - Lua
- **clangd** - C/C++
- **pyright** - Python
- **rust_analyzer** - Rust

---

### 代码补全 (blink.cmp)
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `Tab` | Insert | 接受补全 | 确认选中项 |
| `Enter` | Insert | 接受补全 | 确认选中项 |
| `Ctrl+n` | Insert | 下一个补全项 | 向下选择 |
| `Ctrl+p` | Insert | 上一个补全项 | 向上选择 |
| `Up/Down` | Insert | 选择补全项 | 箭头键选择 |
| `Ctrl+e` | Insert | 关闭补全菜单 | 取消补全 |
| `Ctrl+Space` | Insert | 手动触发补全 | 强制打开补全 |

---

## 🔍 Snacks Picker (模糊查找)

### 快速访问
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader><space>` | 智能查找文件 | 自动选择最佳查找方式 |
| `<leader>,` | Buffer 列表 | 快速切换 buffer |

### 文件查找 (<leader>s)
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>sf` | 查找文件 | 在项目中查找文件 |
| `<leader>sr` | 最近打开的文件 | Recent files |
| `<leader>sp` | 项目列表 | 切换项目 |
| `<leader>sg` | 全局搜索 (Grep) | 在所有文件中搜索文本 |

### 搜索工具 (<leader>s)
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>sk` | 快捷键列表 | 查看所有快捷键 |
| `<leader>sc` | 命令列表 | Vim 命令 |
| `<leader>s:` | 命令历史 | 历史命令 |
| `<leader>s/` | 搜索历史 | 搜索历史 |
| `<leader>s"` | 寄存器 | 查看寄存器内容 |
| `<leader>sh` | 高亮组 | 查看高亮定义 |
| `<leader>sH` | 帮助文档 | Neovim 帮助 |
| `<leader>sM` | Man 手册 | Man pages |
| `<leader>sI` | 图标列表 | Nerd Font 图标 |

### 导航工具 (<leader>s)
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>sj` | 跳转历史 | Jump list |
| `<leader>sm` | 标记列表 | Marks |
| `<leader>sl` | 位置列表 | Location list |
| `<leader>sq` | 快速修复列表 | Quickfix list |
| `<leader>su` | Undo 历史树 | 可视化 undo 历史 |

### 其他工具 (<leader>s)
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>sa` | 拼写建议 | Spelling suggestions |
| `<leader>sA` | 自动命令 | Autocmds |
| `<leader>sn` | 通知历史 | Notifications |
| `<leader>sr` | 恢复上次查找 | Resume picker |

---

## 🌿 Git 操作

### Git 快速访问
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `Ctrl+g` | 打开 Lazygit | 图形化 Git 界面 |

### Git 导航
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `]h` | Normal | 下一个 hunk | 跳转到下一个改动 |
| `[h` | Normal | 上一个 hunk | 跳转到上一个改动 |
| `]c` | Normal | 下一个 hunk (备用) | 跳转到下一个改动 |
| `[c` | Normal | 上一个 hunk (备用) | 跳转到上一个改动 |

### Git Hunk 操作 (<leader>gh)
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `<leader>ghs` | Normal | 暂存改动块 | Stage hunk |
| `<leader>ghr` | Normal | 重置改动块 | Reset hunk |
| `<leader>ghp` | Normal | 预览改动 | Preview hunk |
| `<leader>ghS` | Normal | 暂存整个文件 | Stage buffer |
| `<leader>ghR` | Normal | 重置整个文件 | Reset buffer |
| `<leader>ghu` | Normal | 撤销暂存 | Undo stage hunk |

### Git 信息查看 (<leader>gg)
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>ggl` | Git 日志 (Picker) | 带预览的提交历史 |
| `<leader>ggd` | Git Diff (Picker) | 查看差异 |
| `<leader>ggb` | Git Blame 当前行 | 查看行提交信息 |
| `<leader>ggB` | 在浏览器打开仓库 | GitHub/GitLab |

### Git 其他操作 (<leader>g)
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `<leader>gb` | Normal | 显示行 blame | Git blame (完整信息) |
| `<leader>gd` | Normal | 显示 diff | Diff this |
| `<leader>gD` | Normal | 显示 diff (HEAD) | Diff this ~ |

**Git 状态符号:**
| 符号 | 含义 |
|------|------|
| `+` | 新增行 (Added) |
| `~` | 修改行 (Modified) |
| `_` | 删除行 (Deleted) |
| `‾` | 顶部删除 |
| `?` | 未跟踪文件 (Untracked) |

---

## 🔧 Toggle 功能 (<leader>t)

### 编辑器功能切换
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>ts` | 拼写检查 | Toggle spell |
| `<leader>tw` | 自动换行 | Toggle wrap |
| `<leader>tl` | 行号 | Toggle line number |
| `<leader>tL` | 相对行号 | Toggle relative number |
| `<leader>tc` | Conceal level | 隐藏层级 |

### 开发工具切换
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>td` | 诊断信息 | Toggle diagnostics |
| `<leader>th` | Inlay hints | LSP 类型提示 |
| `<leader>tT` | Treesitter | 语法高亮 |
| `<leader>tg` | 缩进线 | Toggle indent guides |

### Git 切换
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>tb` | 切换背景 (明暗) | Dark/Light theme |
| `<leader>tD` | Dim 模式 | 暗化非活动区域 |

### 性能相关
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>ta` | 动画 | Toggle animations |
| `<leader>tS` | 滚动动画 | Toggle scroll animation |
| `<leader>tpp` | Profiler | 性能分析 |
| `<leader>tph` | Profiler 高亮 | 性能高亮 |

---

## 🖥️ 终端

| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `Alt+i` | Normal/Terminal | 切换终端 | 浮动终端 |
| `<leader>tt` | Normal/Terminal | 切换终端 (备用) | 浮动终端 |
| `Ctrl+\`` | Normal/Terminal | 切换终端 (备用2) | 浮动终端 |

---

## 📝 其他实用工具

### Snacks 实用工具
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `<leader>n` | 通知历史 | 查看历史通知 |
| `<leader>un` | 隐藏所有通知 | 清除通知 |
| `<leader>.` | Scratch Buffer | 临时笔记本 |
| `<leader>S` | 选择 Scratch | 选择临时缓冲区 |
| `<leader>cR` | 重命名文件 | 文件重命名 |
| `<leader>si` | 显示图片 | 图片预览 |

### 单词引用跳转
| 快捷键 | 功能 | 说明 |
|--------|------|------|
| `]]` | 下一个引用 | 跳转到下一个单词引用 |
| `[[` | 上一个引用 | 跳转到上一个单词引用 |

---

## 🔑 Which-key 帮助
| 快捷键 | 模式 | 功能 | 说明 |
|--------|------|------|------|
| `<leader>?` | Normal | 显示 Buffer 本地快捷键 | 查看当前缓冲区可用快捷键 |
| `<leader>` + 等待 | Normal | 显示所有快捷键 | 等待 300ms 自动显示 |

**快捷键组:**
| 前缀 | 组名 | 说明 |
|------|------|------|
| `<leader>s` | Search/Snacks | Snacks Picker 和搜索工具 |
| `<leader>t` | Toggle | 切换各种功能 |
| `<leader>b` | Buffer | Buffer 操作 |
| `<leader>gh` | Git Hunk | Git 改动块操作 |
| `<leader>gg` | Git | Git 高级操作 |
| `<leader>g` | Git | Git 基础操作 |
| `<leader>e` | 文件树 | nvim-tree 操作 |
| `<leader>c` | Code | 代码操作 |

---

## 🎨 编辑器设置

### 基础选项
- **相对行号**: 启用
- **绝对行号**: 启用
- **Tab 大小**: 4 空格
- **自动缩进**: 启用
- **自动换行**: 禁用
- **光标行高亮**: 启用
- **系统剪贴板**: 集成
- **搜索**: 忽略大小写 (智能)
- **真彩色**: 启用
- **Sign 列**: 始终显示

### Snacks 增强功能
- **Dashboard**: 启动页面
- **Indent Guides**: 缩进线和作用域高亮
- **Picker**: 模糊查找 (类似 Telescope)
- **Statuscolumn**: 增强的状态列
- **Words**: 单词引用高亮
- **Zen/Zoom**: 专注模式

### 主题
- **配色方案**: Tokyo Night Moon
- **状态栏**: Lualine (Tokyo Night 主题)
- **图标**: Nerd Font (JetBrains Mono)

---

## 📝 使用技巧

### 1. 快捷键提示
- 按 `空格` 键,等待 300ms,会自动显示可用的快捷键
- 按 `<leader>sk` 查看所有快捷键列表

### 2. 文件查找和搜索
- `<leader><space>` - 最快的文件查找方式
- `<leader>sf` - 查找文件
- `<leader>sg` - 全局搜索文本
- `<leader>sr` - 最近打开的文件
- 所有 Picker 都支持预览和模糊匹配

### 3. 代码补全优先级
- 关键字优先显示
- LSP 补全 > 代码片段 > 路径 > 缓冲区
- 自动记忆常用补全项

### 4. Git 工作流
- 使用 `]c` 和 `[c` 快速浏览改动
- `<leader>ghp` 预览改动
- `<leader>ghs` 暂存满意的改动
- `Ctrl+g` 或 `<leader>gg` 打开 Lazygit 进行完整的 Git 操作
- `<leader>ggl` 查看可视化的提交历史

### 5. LSP 导航
- `gd` 查看定义 (Picker 视图,支持预览)
- `K` 查看文档
- `Ctrl+o` 返回
- `gr` 查看所有引用 (Picker 视图)
- `<leader>ss` 查看文档符号

### 6. Buffer 管理
- 使用 `Tab`/`Shift+Tab` 快速切换
- `<leader>,` 或 `<leader>sb` 打开 Picker 视图
- `<leader>bd` 或 `Alt+w` 智能删除 (保持窗口布局)
- `<leader>bo` 关闭其他所有 buffer

### 7. 专注模式
- `<leader>z` - Zen 模式 (隐藏所有 UI)
- `<leader>Z` - Zoom 模式 (最大化当前窗口)
- 适合专注写作和阅读代码

### 8. 诊断和错误
- `<leader>sd` - 查看所有诊断 (Picker 视图)
- `[d` / `]d` - 快速跳转错误
- `<leader>d` - 浮窗显示详细错误信息

---

## 🔧 后续可以添加的插件

### 文件查找
- ~~**telescope.nvim**~~ - 已由 Snacks Picker 替代
- **fzf.vim** - FZF 集成 (可选)

### Git 增强
- **lazygit.nvim** - Lazygit 集成 (Snacks 已集成)
- **diffview.nvim** - Diff 查看器

### AI 补全
- **codecompanion.nvim** - Claude/OpenAI 集成
- **copilot.lua** - GitHub Copilot

### 其他
- **trouble.nvim** - 诊断列表 (Snacks Picker 已提供类似功能)
- **todo-comments.nvim** - TODO 注释高亮
- ~~**indent-blankline.nvim**~~ - 已由 Snacks Indent 替代

---

## 🚀 快速参考

### 最常用的 10 个快捷键
1. `<leader><space>` - 智能查找文件
2. `<leader>sg` - 全局搜索
3. `<leader>,` - Buffer 列表
4. `gd` - 跳转到定义
5. `gr` - 查找引用
6. `<leader>e` - 文件树
7. `Ctrl+g` - Lazygit
8. `<leader>sk` - 快捷键列表
9. `<leader>ghp` - 预览 Git 改动
10. `<leader>z` - Zen 模式

---

*最后更新: 2025-10-21*
*配置位置: ~/.config/nvim/*
