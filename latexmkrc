# 使用 XeLaTeX 引擎，适配中文模板和 ctex 字体配置
# pdf_mode=5：xelatex 生成 .xdv 后由 xdvipdfmx 转为 PDF
$pdf_mode = 5;
$xelatex = 'xelatex -interaction=nonstopmode -halt-on-error %O %S';
# 参考文献后端使用 biber（适配 biblatex）
$bibtex = 'biber';
# 自动运行参考文献处理
$bibtex_use = 2;
# 只构建主文档 main.tex，忽略根目录下的参考文件（如 tech_sol25.tex）
@default_files = ('main.tex');
