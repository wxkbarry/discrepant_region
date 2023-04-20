import pandas as pd
import os
manifest_df = pd.read_csv('bed.list', header=0, index_col='sample', sep='\t')
def find_bed(wildcards):
    return manifest_df.at[wildcards.sample, 'bed']
rule all:
    input:
        expand("{sample}.sd", sample=manifest_df.index),
rule calcul_sd:
    input:
        find_bed
    output:
        '{sample}.sd'
    threads:
        1
    resources:
        mem = 8
    shell:'''
        bedtools intersect -a {input} -b sgdp_fastcn.sd.pos.txt -wao |cut -f8 >{wildcards.sample}.tmp.sd
        cat {wildcards.sample}.tmp.sd | ave_awk.sh - >{output}
'''
