set title "Graph";
set xlabel "x-axis";
set ylabel "y-axis";
plot "output.dat" w linespoints title "data";
set terminal pdf color;
set out "graph.pdf";
replot;
