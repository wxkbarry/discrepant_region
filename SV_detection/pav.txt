pav
the pipeline is from "https://github.com/EichlerLab/pav"
#align parameters used in this study
minimap2 -x asm20 -m 10000 -z 10000,50 -r 50000 --end-bonus=100 --secondary=no -a -t {params.cpu} --eqx -Y -O 5,56 -E 4,1 -B 5 {input.ref_fa} {input.fa}
