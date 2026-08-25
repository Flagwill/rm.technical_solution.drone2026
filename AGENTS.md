# AGENTS.md

本文件为仓库的长期记忆，供 AI 助手在每次会话开始时阅读。

## 项目

RoboMaster 2026 空中机器人技术方案，中文 LaTeX 文档（elegantbook 模板，XeLaTeX + biber + ctex）。

## 编译方式（务必用 XeLaTeX）

- 标准命令：`latexmk`（依赖根目录 `latexmkrc`，自动完成 xelatex + biber + 多遍编译，输出 `main.pdf`）
- 手动等价流程：
  1. `xelatex -interaction=nonstopmode -halt-on-error main.tex`
  2. `biber main`
  3. 再次运行两次 `xelatex`（解析交叉引用与目录）
- 构建产物（`.aux/.log/.pdf/.bcf` 等）已由 `.gitignore` 忽略，无需提交。

## 目录结构

```
main.tex              章节顺序与 \input 入口（调整章节只改这里）
elegantbook.cls       文档类，勿修改
latexmkrc             编译引擎配置
reference.bib         参考文献（biber）

tex/                  正文：每章一个文件夹，命名与 PDF 章节一致
  0_前言  1_绪论  2_竞品与需求分析  3_概念设计  4_详细设计  5_总结与展望
  tex/3_概念设计/3_概念设计.tex  为第 3 章主文件，内部 \input 聚合各设计小节
  tex/4_详细设计/4_详细设计.tex  为第 4 章主文件，内部 \input 聚合各设计小节
  tech_sol25.tex                 25 年机械技术文档参考，不属于正文

figure/               图片，子目录与 tex 章节对应
  封面  1_绪论  2_竞品与需求分析  4_详细设计/{机械结构设计,硬件设计}  5_总结与展望
```

## 约定与注意

- 新增/调整章节：在 `tex/` 建与章节同名文件夹，并在 `main.tex` 添加 `\input{tex/章节/文件}`。
- 图片引用必须带扩展名，如 `\includegraphics{figure/4_详细设计/机械结构设计/xx.png}`。
- `latexmkrc` 中 `$pdf_mode = 5` 表示 XeLaTeX，**切勿改回 0**（会退回普通 latex，中文编译直接失败）。
- 编译日志出现 `Missing character` 警告时，通常是 `‰`、`—` 等符号被误放进数学模式，改为文本模式（或 `\qty{...}{...}`）即可。
- 表格写法（`\multirow`、`\makecell`、`\longtable`）可参考正文中的既有表格。
