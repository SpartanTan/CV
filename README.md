# CV · Typst

谈至存的中英文简历。使用共用 Typst 模板，A4 单栏排版，可导出带可选中文字和链接的 PDF。

## 分支

- `latex`：迁移前的完整 LaTeX 版本，包括旧模板、历史简历和编译设置。
- `typst`：当前 Typst 版本。
- `main`：默认分支，使用当前 Typst 版本。

```bash
git switch main
# 查看原版时：git switch latex
```

## 文件

| 文件 | 用途 |
| --- | --- |
| `cv_cn.typ` | 中文简历内容 |
| `cv_en.typ` | 英文简历内容 |
| `resume.typ` | 共用字体、颜色、页面、标题和经历条目样式 |
| `Makefile` | 编译、实时编译、合并 PDF |
| `output/pdf/` | 生成的 PDF，不加入 Git |

原来的 `.tex` 文件和历史资料可在 `latex` 分支找到。两种语言分别保留原稿内容，没有自动补齐或统一经历。

## 安装

1. 安装 [Typst 编译器](https://github.com/typst/typst/releases)，并将 `typst` 加入 `PATH`。本次使用 **Typst 0.15.1** 验证。
2. 安装 **Liberation Sans** 和 **Noto Sans CJK SC** 字体。Ubuntu / WSL：

   ```bash
   sudo apt update
   sudo apt install fonts-liberation fonts-noto-cjk make poppler-utils
   fc-cache -f
   ```

   `poppler-utils` 仅合并 PDF 时需要，编译单份简历不需要它。

3. 检查环境：

   ```bash
   typst --version
   typst fonts
   ```

无需 TeX Live、LaTeX Workshop 或第三方 Typst 包。模板使用系统字体；更换电脑时请安装相同字体，以保持分页一致。

## VS Code

安装推荐扩展 **Tinymist Typst**（`myriad-dreamin.tinymist`），打开整个仓库文件夹。

1. 打开 `cv_cn.typ` 或 `cv_en.typ`。
2. 在命令面板中搜索 Tinymist 的预览命令，查看当前文件。
3. 按 `Ctrl+Shift+B` 运行默认构建任务，同时生成中英文 PDF。
4. 在 `output/pdf/` 查看结果；合并版可通过“运行任务”中的 `CV: merge PDFs` 生成。

如果 VS Code 找不到刚安装的编译器，重启 VS Code，并在集成终端确认 `typst --version` 能运行。

## 命令行

```bash
make             # 编译中英文
make cn          # 只编译中文
make en          # 只编译英文
make merge       # 合并，顺序为中文两页 + 英文两页
make watch-cn    # 保存后持续重新编译中文（Ctrl+C 退出）
make watch-en    # 保存后持续重新编译英文
make clean       # 删除三份生成的 PDF
```

如编译器不在 `PATH`：

```bash
make TYPST="$HOME/.local/bin/typst"
```

不使用 Make 或插件也可以直接编译：

```bash
mkdir -p output/pdf
typst compile cv_cn.typ output/pdf/cv_cn.pdf
typst compile cv_en.typ output/pdf/cv_en.pdf
```

也可以把三个 `.typ` 文件上传到 [Typst 网页编辑器](https://typst.app/)，并上传或配置同名字体，以保持排版一致。

## 修改内容与排版

- 修改对应的 `cv_cn.typ` / `cv_en.typ` 即可更新内容；`#entry(...)` 表示经历，`#bullets(...)` 表示成果列表。
- 在 `resume.typ` 中统一修改正文字号、页边距、字体及颜色。
- 当前两份简历各两页，第二页从实验室经历开始，通过 `#pagebreak()` 控制。内容显著增减时，可以移动或删除这个分页标记。
- GitHub、LinkedIn、项目代码、演示视频、奖项证明的链接均已保留；图标改为文本链接。

## 原稿中待核对的信息

本次迁移保留这些差异，没有推断事实：

- 畅加风行 / Plusgo：中文为 `2024.12 - 至今`，英文为 `12.2024 - 05.2025`。
- 最后一项机器人奖项：中文为 2017 年，英文原稿写的是 2018 年，但日期为 `08.2017`。
- 两种语言的课程、项目和成果描述原本有差异，仍分别维护；原来注释掉的经历保存在 `latex` 分支。

原 LaTeX 模板源自 Jake Gutierrez 的 resume（基于 sb2nov/resume）；历史来源注释保存在 `latex` 分支。
