#!/bin/sh
#
# Shell script to create the SSS preliminary experiments. These are designed
# to cover sinks/nosinks and RewardActivity/RewardSpecies, at various BETs and
# ASPs, and for flat and var2 market. There will be 20 runs each

for run in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
  for govt in ClusterActivity ClusterSpecies RewardActivity RewardSpecies
  do
    for sink in NO
    do
      for market in flat var2
      do
        for bet in 25.0 30.0
	do
	  for asp in 1.0 5.0
	  do
	    for rwd in 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0
	    do
	      for rat in 1.0 2.0 10.0
	      do
	      ./SSS-StopC2-Cluster-expt.pl $govt $sink $market all $rwd $rat $bet NO 0.0 $asp $run
	      done
	    done
	  done
	done
      done
    done
  done
done
