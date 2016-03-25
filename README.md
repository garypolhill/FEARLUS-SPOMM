# FEARLUS-SPOMM
Scripts for supporting experiments with FEARLUS-SPOMM

The Swarm libraries used by the software (see http://www.swarm.org/wiki/Main_Page) are not supported as well as they once were. (Indeed, development work on Swarm is now only occasionally done by volunteers, most researchers having moved to NetLogo or RePast.) You may therefore struggle to use the software.

Compiling the FEARLUS-SPOMM code should 'simply' be a case of installing Swarm, and then running 'make' in the directory extracted from the FEARLUS-model1-1-5-2.tar.gz tarball. If you are feeling fussy, do 'make dev' to crash on warnings. The 'simply' is because different versions of the Swarm libraries feature varying API, and some of the code uses the Obj-C API. You may find the successful compilation sensitive to the version of Linux, gcc, and so forth. At some point, given sufficient demand and a suitable location, a release as a virtual machine would probably be a better bet.

This folder contains further code supporting the entry in the OpenABM.org database at https://www.openabm.org/model/4961/version/1/view

The scripts herein specifically support the paper available at http://dx.doi.org/10.1016/j.envsoft.2012.11.011

To replicate the results reported in that paper:

1. Use SSS-StopC2-Cluster-create.sh to set up all the parameter files
2. Use SSS-StopC2-Cluster-run.sh to run the model (note that this will take a long time, and you will need to edit the location of the FEARLUS-SPOMM software
3. Use analysege_gpLU2.pl to process all the results files and create a summary CSV file
4. Remove results from the summary CSV file as described in the paper 
5. Use the R scripts and treehist3.pl to create the results images and tables. The command used for the above paper was: ./treehist3.pl -cp 0.0075 LOBEC.clustq.csv LOBEC.rpart3Xfr.pdf Richness G,M,B,A,X

Much of the code, however, especially in the compressed tar file, has been used in other publications, most notably, http://dx.doi.org/10.1080/1747423X.2011.558601

All code in this repository is released under the GNU General Public Licence.
