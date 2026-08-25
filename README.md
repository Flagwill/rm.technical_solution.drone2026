# rm.technical_solution.drone2026

2026 交龙空中机器人技术方案（RoboMaster 2026 技术报告，基于 elegantbook 模板）。

## 目录结构

```
main.tex              文档主文件（章节顺序与 \input 入口）
elegantbook.cls       文档类（勿修改）
latexmkrc             latexmk 配置（XeLaTeX + biber）
reference.bib         参考文献（biber 后端）

tex/                  正文章节，每章一个文件夹，与 PDF 章节一一对应
  ├── 0_前言/          前言（frontmatter）
  ├── 1_绪论/
  ├── 2_竞品与需求分析/
  ├── 3_概念设计/      3_概念设计.tex 聚合各设计小节（机械/视觉概念/视觉算法）
  ├── 4_详细设计/      4_详细设计.tex 聚合各设计小节（机械结构/硬件/软件/算法/定位导航）
  ├── 5_总结与展望/
  └── tech_sol25.tex   25 年机械技术文档参考（不属于正文）

figure/               图片资源，子目录与 tex/ 章节对应
  ├── 封面/
  ├── 1_绪论/
  ├── 2_竞品与需求分析/
  ├── 4_详细设计/      机械结构设计/、硬件设计/
  └── 5_总结与展望/
```

## 编译

```bash
latexmk          # 自动调用 XeLaTeX + biber，生成 main.pdf
```

需要 TeX Live 2022+，包含 ctex / xeCJK / newtx / biblatex-gb7714-2015 等宏包。

## 说明

- 调整章节顺序/增删章节：编辑 `main.tex` 中的 `\input{tex/章节/文件}` 即可。
- 图片引用需带扩展名，如 `\includegraphics{figure/4_详细设计/机械结构设计/xx.png}`。
- 构建产物（`.aux/.log/.pdf` 等）均已加入 `.gitignore`，不提交。
