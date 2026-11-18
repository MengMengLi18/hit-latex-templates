# BibTeX 条目填写示例

以下内容只展示字段结构，花括号中的占位内容必须替换成真实出版信息。不要把未填写的占位条目作为正式引用。

## 期刊论文

```bibtex
@article{article-key,
  author  = {Family, Given and Family, Given},
  title   = {真实论文题名},
  journal = {期刊名称},
  year    = {出版年份},
  volume  = {卷号},
  number  = {期号},
  pages   = {起始页--终止页},
  doi     = {真实 DOI}
}
```

## 会议论文

```bibtex
@inproceedings{conference-key,
  author    = {Family, Given and Family, Given},
  title     = {真实论文题名},
  booktitle = {会议论文集名称},
  year      = {出版年份},
  pages     = {起始页--终止页},
  doi       = {真实 DOI}
}
```

## 图书

```bibtex
@book{book-key,
  author    = {Family, Given},
  title     = {真实书名},
  edition   = {版次},
  address   = {出版地},
  publisher = {出版社},
  year      = {出版年份}
}
```

## 在线资料

```bibtex
@online{online-key,
  author  = {{机构名称}},
  title   = {真实资料标题},
  year    = {发布年份},
  url     = {真实链接},
  urldate = {YYYY-MM-DD}
}
```

缺少某个非必需字段时，可以删除该字段，不应猜测。多个作者之间使用 `and`，机构作者使用双层花括号。连续页码用 `--`；大小写敏感的缩写可用花括号保护。
