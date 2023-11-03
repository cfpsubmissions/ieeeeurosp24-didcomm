set terminal png size 800,800
set output 'results-naiveaa-enc.png'
set xlabel "Number of recipients" font ",16"
set ylabel "Enc CPU time (s)" font ",16"
set key right bottom
set key spacing 1.5
set xtics 1 font ",14"
set ytics font ",14"
plot \
"results.anon" u 1:2:3 with errorlines lw 2 pt 9 ps 2 linecolor rgb "red" title "anon", \
"results.auth" u 1:2:3 with errorlines lw 2 pt 2 ps 2 linecolor rgb "blue" title "auth", \
"results.naive-a-auth" u 1:2:3 with errorlines lw 2 pt 65 ps 2 linecolor rgb "green" title "naive-a-auth", \
