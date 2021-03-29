#gnuplot -e "filename='foo.tsv'" timeCPUs-plot.p
# pleamble
set terminal png size 500,500
set output filename . '.png'
set title 'time elapsed vs CPUs'
set style line 5 lt rgb "blue" lw 2 pt 6
#set logscale y

# Read .tsv file
set datafile separator "\t"
plot filename using 1:2 with linespoints ls 5
