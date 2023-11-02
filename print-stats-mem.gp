set terminal png size 800,800
set output 'results-mem.png'
set xlabel "Number of recipients" font ",18"
set ylabel "Mean Max Memory Usage (kB)" font ",18"
set key below
set key spacing 1.5
set key font ",16"
set bmargin 8
set xtics 1 font ",16"
set ytics font ",16"
set yrange[39000:43000]
plot \
"results-mem.anon" u 1:2:3 with errorlines lw 2 pt 9 ps 2 linecolor rgb "red" title "anon", \
"results-mem.auth" u 1:2:3 with errorlines lw 2 pt 2 ps 2 linecolor rgb "blue" title "auth", \
"results-mem.naive-a-auth" u 1:2:3 with errorlines lw 2 pt 65 ps 2 linecolor rgb "green" title "naive-a-auth", \
"results-mem.merge-a-auth" u 1:2:3 with errorlines lw 2 pt 4 ps 2 linecolor rgb "orange" title "merge-a-auth", \
"results-mem.ra-anon" u 1:2:3 with errorlines lw 2 pt 5 ps 2 linecolor rgb "black" title "ra-anon", \
"results-mem.ra-a-auth" u 1:2:3 with errorlines lw 2 pt 6 ps 2 linecolor rgb "purple" title "ra-a-auth"
