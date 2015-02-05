#!/bin/sh
# get reference genome
wget -O db.zip ftp://ftp.ccb.jhu.edu/pub/data/bowtie2_indexes/$1.zip
unzip db.zip
# get run files
wget -O seq.fastq.bz2 $2
bzip2 -cd seq.fastq.bz2 > seq.fastq
# run tophat with parameters
tophat $1 seq.fastq
