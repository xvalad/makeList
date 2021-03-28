# pleamble
set terminal png size 500,500
set output 'timeCPUs-plot.png'
set title 'time elapsed vs CPUs'
set style line 5 lt rgb "blue" lw 2 pt 6
#set logscale y

# Read file: timeVsCPU.tsv
set datafile separator "\t"
plot "timeVsCPU.tsv" using 1:2 with linespoints ls 5
