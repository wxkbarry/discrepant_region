#graph-sv alginment 
minimap2  -t 12 -cx asm20 --secondary=no --eqx -Y -K 8G -s 1000 reference.fasta input.fasta -o out.paf
#we manually checked the breakpoints and check the cigar string to detect SVs>=10kbp


