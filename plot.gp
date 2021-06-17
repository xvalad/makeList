set terminal png size 800,600 font 'Veranda, 16'
set output 'dist.png'
set y2tics 1, 0.03
set xlabel "det dist (mm)"
set ylabel "Indexing rate (%)"
set y2label "b length stdev (nm)"
set format x "%.2f"
plot "out-geom-ref.txt" u ($1/100):(($2/$3)*100) w p ps 1 pt 7 axis x1y1 t "Indexing rate", "out-geom-ref.txt" u ($1/100):7 w p ps 1 pt 11 axis x1y2  t "Stdev b-length"


set output 'b.png'
unset key
set ylabel "b length (nm)"
plot "out-geom-ref.txt" u ($1/100):4:5 w yerr  ps 3 pt 7
