Here is some code to leverage htCondor to evaluate some compression algorithms, primarily using turbobench. There are some docker implementations to do this with command line tools (rather than using the libraries in memory), but I could not get them to work in this environment.

R-code to generate a report based on the data is contained 

# TurboBench benchmarking. 

* tbench.sub - the submission file.
* tbench.sh - the script that runs tbench.
* codecs.csv - a list of codecs, parameters, cpu, and memory configs we want to try.
* tcodec.csv - as above, but just one codec.

This configuration requires a compiled copy of TurboBench to be contained in program.tar.gz. The path to your test file (what you want to compress) is hard coded in tbench.sh.

# Other bencharking

We also want to try gzip (because it is the standard we are comparing against), and blosc (which is really promising for binary data like ours).

# R report
