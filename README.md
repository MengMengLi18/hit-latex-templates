# HIT 学位开题报告 LaTeX 模板

一份可独立使用的哈尔滨工业大学开题报告排版模板。默认封面为博士学位开题报告；正文仅包含通用章节、占位内容，以及图、表、公式和参考文献的格式示例。

[查看模板预览 PDF](docs/preview.pdf)

本项目是非官方模板，具体版式要求请以所在培养单位的规定为准。

## 包含内容

- 封面、四级目录、九个正文一级章节及自动生成的参考文献章节。
- 统一的页面尺寸、边距、字体、字号、行距、缩进和图表题注。
- BibTeX 文献库与上标方括号数字引用，支持多篇文献排序、压缩。
- 可直接使用的 Fandol 中文字体、TeX Gyre Termes 西文字体及其许可证。
- XeLaTeX 编译脚本、latexmk 配置和排除编译产物的 `.gitignore`。

## 快速开始

安装包含 XeLaTeX、BibTeX、CTeX、natbib 和 gbt7714 的 TeX 发行版。项目不在编译时下载字体或文件，也不要求启用 shell-escape。

在项目根目录运行：

```sh
latexmk main.tex
```

Linux / macOS 也可以运行：

```sh
sh build.sh
```

输出位于 `build/main.pdf`。脚本优先使用 latexmk；未安装 latexmk 时会执行 XeLaTeX → BibTeX → XeLaTeX → XeLaTeX。

Windows 中可以在 TeX 编辑器选择 XeLaTeX 与 BibTeX，或在终端运行上述 latexmk 命令。在线 LaTeX 编辑器中上传完整项目，选择 `main.tex` 为主文件、XeLaTeX 为编译器。

## 文件说明

| 文件或目录 | 用途 |
| --- | --- |
| `cover-info.tex` | 封面题目、学院、专业、导师、姓名、学号和日期等占位字段 |
| `main.tex` | 正文章节和格式示例 |
| `hit-proposal.sty` | 全部排版设置，与正文内容分开 |
| `references.bib` | 参考文献数据库；仅含公开的排版文献示例 |
| `figures/` | 个人报告副本中存放图片的位置 |
| `fonts/` | 开源字体、来源说明、许可证和校验值 |
| `docs/format-spec.md` | 默认版式参数 |
| `docs/preview.pdf` | 用公开占位内容编译的预览 |
| `build.sh`、`.latexmkrc` | 编译入口与配置 |

## 填写封面与正文

在 `cover-info.tex` 中修改封面字段，在 `main.tex` 中替换占位段落。

```tex
\proposalsetup{
  reporttype={博士学位开题报告},
  doctype={学位论文},
  title={论文题目},
  college={学院名称},
  major={专业学位类别},
  supervisor={导师姓名},
  cosupervisor={},
  author={研究生姓名},
  studentid={学号},
  date={年\quad 月\quad 日}
}
```

联合培养导师没有内容时，可将 `cosupervisor` 留空。报告名称可通过 `reporttype` 调整；题目或字段明显变长后，请检查封面是否仍能容纳。

标题依次使用 `\section`、`\subsection`、`\subsubsection` 和 `\paragraph`，不要手工输入编号。换段使用空行，首行缩进和行距由样式统一设置。

## 参考文献与引用

在 `references.bib` 中添加真实文献，再在正文中引用文献键。期刊、会议、图书和在线资料的字段示例见 [BibTeX 条目说明](docs/bibtex-entry-examples.md)。

```tex
单篇引用\cite{latex-book}。
多篇引用\cite{latex-book,texbook,ctex-package}。
```

默认使用 `natbib` 的上标数字引用，以及 `gbt7714-numerical.bst` 的顺序编码样式。文献按正文首次引用顺序编号，连续编号会自动压缩。它沿用 GB/T 7714-2015 数字样式的设置；如需其他标准版本，应按具体要求调整样式。

```tex
\bibliographystyle{gbt7714-numerical}
\bibliography{references}
```

参考文献标题和目录条目由模板生成，**不要重复写 `\section{参考文献}`，也不要编辑编译生成的 `.bbl` 文件**。修改文献后重新运行 `latexmk main.tex` 或 `sh build.sh`。

示例书目的核对来源：[LaTeX 手册出版信息](https://www.informit.com/store/latex-a-document-preparation-system-9780201529838)、[The TeXbook 作者页面](https://cs.stanford.edu/~knuth/abcde.html)、[CTeX 项目页面](https://ctan.org/pkg/ctex)。这些条目仅用于展示引用格式，与使用者的研究内容无关。

## 图、表与公式

模板含一个不依赖外部文件的图框、一张三线表和一个公式示例。插入自己的图片时，可替换为：

```tex
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\linewidth]{figures/example.pdf}
  \caption{图片标题}
  \label{fig:example}
\end{figure}
```

图片通常只设置宽度，以保持比例。正文中的图、表和公式编号分别使用 `\ref{...}` 和 `\eqref{...}`；将 `\label` 放在 `\caption` 后面。

## 样式选项

默认有页眉横线，页脚不显示页码；图题使用 `Figure`，表题使用“表”。可按需开启：

```tex
\usepackage[pagenumbers,chinesecaptions]{hit-proposal}
```

| 选项 | 作用 |
| --- | --- |
| `pagenumbers` | 正文和目录显示页脚页码；封面不显示 |
| `chinesecaptions` | 将图题标签改为“图” |
| `strictfonts` | 使用自行提供的宋体、黑体、楷体和 Times New Roman；缺少文件时报错 |

默认字体固定为项目附带的 Fandol 和 TeX Gyre Termes，不会根据某台机器上的字体自动改变。`strictfonts` 仅从 `fonts/local/` 加载，所需文件名见该目录的说明。该目录里的字体文件不会被 Git 默认收录。

## 用作公开模板仓库

在本目录中执行 `git init -b main` 可建立独立仓库；不要复制其他项目的 Git 历史。保留 `cover-info.tex` 中的占位内容；撰写个人报告时，建议复制到独立目录使用。

仓库需要保留源文件、开放字体及其许可证。`build/`、编译日志、同步文件和编辑器配置已被忽略。`docs/preview.pdf` 是可以公开的占位示例，已在忽略规则中单独保留。

## 许可

模板源代码和文档采用 [MIT License](LICENSE)。第三方字体按各自许可证分发，不适用本项目的 MIT 许可，详见 [第三方说明](THIRD_PARTY_NOTICES.md)。
