#!/bin/sh
#
# Shell script to run the SSS experiments


for govt in ClusterActivity RewardActivity RewardSpecies ClusterSpecies 
do
  for run in 001 002 003 004 005 006 007 008 009 010 011 012 013 014 015 016 017 018 019 020
  do
    for market in var2 flat
    do
      for sink in nosink
      do
	for rwd in 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0 9.0 10.0
	do
	  for asp in 1.0 5.0
	  do
            for bet in 25.0 30.0
	    do
	      for rat in 1.0 2.0 10.0
	      do
	      dir=SSS_dir_${sink}_${govt}_all_${rwd}_${rat}_${market}_${bet}_noapproval_0.0_${asp}_
	      report=${sink}_${govt}_all_${rwd}_${rat}_${market}_${bet}_noapproval_0.0_${asp}_${run}
	      param=SSS_top-level_${report}.model
	      (cd ${dir}; /applics/app/fearlusg/fearlus/model1-1-5-2/fearlus-1.1.5.2_spom-2.3 -b -s -R SSS_report-config_${report}.repcfg -r SSS_report_${report}.txt -p $param > ${report}.out 2> ${report}.err) &
	      done
	    done
	  done
          wait
	done
      done
    done
  done
done
