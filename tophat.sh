#!/bin/sh
# get reference genome
wget -O db.zip ftp://ftp.ccb.jhu.edu/pub/data/bowtie_indexes/$1.ebwt.zip
unzip db.zip
# get run files
wget -O seq.fastq.bz2 $2
# run tophat with parameters
tophat $1 seq.fastq.bz2
