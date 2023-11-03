set terminal png size 800,800
set output 'results-dec.png'
set xlabel "Number of recipients" font ",18"
set ylabel "Dec CPU time (s)" font ",18"
set key below
set key spacing 1.5
set key font ",16"
set key maxrows 2
set bmargin 8
set xtics 1 font ",16"
set ytics font "16"
plot \
"results.anon" u 1:4:5 with errorlines lw 2 pt 9 ps 2 linecolor rgb "red" title "anon", \
"results.auth" u 1:4:5 with errorlines lw 2 pt 2 ps 2 linecolor rgb "blue" title "auth", \
"results.naive-a-auth" u 1:4:5 with errorlines lw 2 pt 65 ps 2 linecolor rgb "green" title "naive-a-auth", \
"results.merge-a-auth" u 1:4:5 with errorlines lw 2 pt 4 ps 2 linecolor rgb "orange" title "merge-a-auth", \
"results.ra-anon" u 1:4:5 with errorlines lw 2 pt 5 ps 2 linecolor rgb "black" title "ra-anon", \
"results.ra-a-auth" u 1:4:5 with errorlines lw 2 pt 6 ps 2 linecolor rgb "purple" title "ra-a-auth"
