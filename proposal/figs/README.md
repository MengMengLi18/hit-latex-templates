# HIT 校徽与校名字样

本目录保存哈尔滨工业大学土木工程学院“校徽图片”下载页面提供的黑色校徽与校名字样。封面使用这些文件，编译时无需联网。

- [官方资源下载页面](https://civil.hit.edu.cn/2018/0420/c9283a204875/page.htm)
- [学校校徽说明页面](https://www.hit.edu.cn/12254/list.htm)
- `hit-emblem.jpg`：720 × 720 像素，[原始文件](https://civil.hit.edu.cn/_upload/article/images/8e/b7/7d0c258340adaed249946ea9b260/7bf25826-2168-4043-97ed-050eb11ef316.jpg)。
- `hit-wordmark.jpg`：1417 × 459 像素，[原始文件](https://civil.hit.edu.cn/_upload/article/images/8e/b7/7d0c258340adaed249946ea9b260/43cb5877-f9d8-4ff8-b34f-4ddea0781d75.jpg)。

资源获取日期：2026-11-18。保存的文件与官方原始文件逐字节一致；LaTeX 只在排版时裁去外围留白并等比缩放，不修改标识图案。

校徽与校名字样属于哈尔滨工业大学标识，相关权利归哈尔滨工业大学，不纳入本项目的 MIT 许可。本项目为非官方排版模板。

原始文件 SHA-256：

```text
cbfab46f26ab2d922c9709a4a2a4d75df2775f7ade7479a5b5e9da746cb77c76  hit-emblem.jpg
fd1aad3a6cb79cd0f62bfed3c049bba7036b63a917dec4afa3556d76549173aa  hit-wordmark.jpg
```

## 深圳校区

[哈尔滨工业大学（深圳）官网](https://www.hitsz.edu.cn/)展示的完整标识在校名后带“（深圳）”，英文校名带 `SHENZHEN`，校徽主体沿用 HIT 图案。

本目录的两张黑色原图是通用校徽和通用校名字样。模板设置 `campus={深圳}` 时，在校名字样下方单独排印“（深圳）”，并将默认左页眉改为“哈尔滨工业大学（深圳）”。校区附注由 LaTeX 排字，原始标识图像保持不变；本排版不声称复刻官网横向组合标识或某份指定封面规范。

## 正文图片

可将自己的 PDF、PNG、JPG 图片放在本目录，在正文中使用 `\includegraphics{figs/文件名}`。SVG 源图可一并保存，排版前导出为 PDF 或 PNG。Git 忽略规则保留 `figs/` 下的源图，包括 PDF 图件；编译生成的整份报告 PDF 存放在 `build/`。
