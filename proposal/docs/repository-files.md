# 公开仓库的文件范围

| 类别 | Git 默认处理 |
| --- | --- |
| `main.tex`、`cover-info.tex`、样式、公开示例 `references.bib` | 保留，公开仓库使用占位信息 |
| `figs/` 中的校徽、校名、正文源图与来源说明 | 保留，包括 PDF 图件 |
| `fonts/fandol/`、`fonts/tex-gyre/` 和许可证 | 保留，独立编译需要这些开源字体 |
| README、编译脚本、`.latexmkrc`、许可证 | 保留 |
| `docs/preview.pdf` | 保留，作为公开模板预览 |
| `build/`、`out/`、`_build/`、其他编译 PDF | 忽略 |
| LaTeX 辅助文件、日志、同步文件、目录缓存 | 忽略 |
| `fonts/local/` 中自行提供的字体 | 忽略，但保留 `README.txt` |
| `private/`、`personal/`、`local-data/`、`local-output/`、`.local/` | 忽略 |
| `*.local.tex`、`*.local.bib`、Word 原稿、压缩包和备份文件 | 忽略 |
| 编辑器配置、系统缓存和 `.env` 本地配置 | 忽略 |

实际个人报告放在公开模板仓库之外。`.gitignore` 按路径和文件名工作，不能识别正文中的个人信息，也不能隐藏已跟踪文件的修改。公开的 `main.tex`、`cover-info.tex` 和 `references.bib` 应继续保留通用示例。

在仓库根目录可检查：

```sh
git status --short
git ls-files -ci --exclude-standard
```

第二条命令列出“已经跟踪、但现在匹配忽略规则”的文件；设置 `.gitignore` 本身不会把这些文件从版本记录中移除。
