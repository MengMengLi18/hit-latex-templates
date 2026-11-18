# 字体

默认编译使用本目录中未修改的开源 OpenType 字体，不需要另外安装中文字体。

| 字体 | 用途 | 上游版本与来源 |
| --- | --- | --- |
| FandolSong Regular / Bold | 中文正文及粗体 | Fandol 0.3，https://ctan.org/pkg/fandol |
| FandolHei Regular / Bold | 中文标题 | Fandol 0.3，同上 |
| FandolKai Regular | 楷体文字（`\kaishu`） | Fandol 0.3，同上 |
| TeX Gyre Termes 四种字面 | 西文正文及粗体、斜体 | 2.004，https://ctan.org/pkg/tex-gyre |

Fandol 的原始说明和许可证在 `fandol/README`、`fandol/COPYING`；TeX Gyre Termes 的说明和许可证在 `tex-gyre/README-TeX-Gyre-Termes.txt`、`tex-gyre/GUST-FONT-LICENSE.txt`。这些上游文件和字体内的原作者信息须保留。

`SHA256SUMS` 记录九个字体文件的校验值。在本目录运行 `sha256sum -c SHA256SUMS` 可进行检查。

可选的 `strictfonts` 模式只读取 `local/` 中由使用者自行提供的字体。公开模板不包含这些可选字体。
