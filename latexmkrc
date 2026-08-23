# 使用 XeLaTeX 引擎，适配中文模板和 ctex 字体配置
$pdf_mode = 0;
$pdflatex = 'xelatex -interaction=nonstopmode -halt-on-error %O %S';
# 参考文献后端使用 biber（适配 biblatex）
$bibtex = 'biber';
# 自动运行参考文献处理
$bibtex_use = 2;
