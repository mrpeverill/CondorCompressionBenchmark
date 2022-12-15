Here is some code to leverage htCondor to evaluate some compression algorithms, primarily using turbobench. There are some docker implementations to do this with command line tools (rather than using the libraries in memory), but I could not get them to work in this environment.

My output data (tested on a subject folder containing a few .nii scan files from a neuroimaging subject) is contained in the .tar.gz files. 

I have written a report on the data. The code, as well as .md output is available in this repository, and additionally on my blog.

# TurboBench benchmarking. 

* tbench.sub - the submission file.
* tbench.sh - the script that runs tbench.
* codecs.csv - a list of codecs, parameters, cpu, and memory configs we want to try.
* tcodec.csv - as above, but just one codec.

This configuration requires a compiled copy of TurboBench to be contained in program.tar.gz. The path to your test file (what you want to compress) is hard coded in tbench.sh.

# Other bencharking

We also want to try gzip (because it is the standard we are comparing against). Benchmark data is provided by gzip's -v option, and by wrapping the executable in a call to GNU time (not the bash time built in). Relevant files:

* gziptests.sub - submission file
* tgzip.sh - test script
* gzipjobs.csv - the system configurations we want to iterate over.
