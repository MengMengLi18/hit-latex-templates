# hit-latex-templates

哈尔滨工业大学研究生 LaTeX 模板集。目前提供开题报告模板，后续将加入中期考核与学位论文模板。

本项目为非官方模板，具体版式要求请以所在培养单位的规定为准。模板使用通用占位内容和公开书目示例。

## 模板列表

| 模板 | 状态 | 入口 |
| --- | --- | --- |
| 开题报告 | 已提供，默认博士学位开题报告封面 | [使用说明](proposal/README.md) · [PDF 预览](proposal/docs/preview.pdf) |
| 中期考核 | 待添加 | 计划放在 `midterm/` |
| 学位论文 | 待添加 | 计划放在 `thesis/` |

## 快速开始

安装包含 XeLaTeX、BibTeX、CTeX、natbib 和 gbt7714 的 TeX 发行版。开题模板已附带所需的开源中西文字体、HIT 校徽和校名字样。默认开启文字页眉与居中页码，封面不编号，目录使用罗马数字，正文从 1 开始。

进入开题模板目录并编译：

```sh
cd proposal
latexmk main.tex
```

Linux / macOS 也可以在仓库根目录运行：

```sh
sh proposal/build.sh
```

输出位于 `proposal/build/main.pdf`。编译脚本优先使用 latexmk；没有 latexmk 时自动调用 XeLaTeX 和 BibTeX。

在 [封面信息文件](proposal/cover-info.tex) 中填写封面字段，在 [正文文件](proposal/main.tex) 中填写报告内容，在 [文献数据库](proposal/references.bib) 中添加实际引用的文献。完整的引用、图表和样式选项说明见 [开题模板文档](proposal/README.md)。

在线 LaTeX 编辑器中可上传 `proposal/` 内的全部文件，选择 `main.tex` 为主文件、XeLaTeX 为编译器。

## 当前目录结构

```text
hit-latex-templates/
├── proposal/                  # 可独立使用的开题报告模板
│   ├── main.tex               # 正文与格式示例
│   ├── cover-info.tex         # 封面占位字段
│   ├── hit-proposal.sty       # 排版设置
│   ├── references.bib         # 公开书目示例
│   ├── assets/                # HIT 校徽、校名字样与来源说明
│   ├── fonts/                 # 开源字体与上游许可证
│   ├── figures/               # 图片目录
│   ├── docs/                  # 版式说明、文献条目说明和预览
│   ├── build.sh
│   └── README.md
├── README.md
├── LICENSE
└── THIRD_PARTY_NOTICES.md
```

中期考核与学位论文模板完成后，将分别加入 `midterm/` 和 `thesis/`，每个目录提供自己的编译入口和使用说明。

## 使用与维护

撰写个人报告时，可复制 `proposal/` 到独立目录使用；目录内的字体、许可文件和说明应一并保留。公开模板保留占位信息。

若要建立 Git 仓库，在本仓库根目录执行 `git init -b main`。根目录的 `.gitignore` 已覆盖各模板的编译产物、日志、编辑器状态和可选本地字体；公开示例 `docs/preview.pdf` 会保留。

## 许可

模板源代码与文档采用 [MIT License](LICENSE)。第三方字体遵循各自许可证；HIT 标识的相关权利归哈尔滨工业大学。详见 [第三方组件说明](THIRD_PARTY_NOTICES.md)。
