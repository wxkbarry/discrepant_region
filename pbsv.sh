#pbsv this pipeline is from "https://github.com/PacificBiosciences/pbsv/"
#Align PacBio reads to a reference genome
pbmm2 align ref.fa movie1.subreads.bam ref.movie1.bam --sort --median-filter --sample sample1

#Discover signatures of structural variation
pbsv discover ref.movie1.bam ref.sample1.svsig.gz

#Call structural variants and assign genotypes
pbsv call ref.fa ref.sample1.svsig.gz ref.sample2.svsig.gz ref.var.vcf

#For large genomes with high sequencing coverage, it is recommended to process chromosomes separately.
for i in $(samtools view -H hg38.movie1.bam | grep '^@SQ' | cut -f2 | cut -d':' -f2); do
    pbsv discover --region $i hg38.movie1.bam hg38.sample1.$i.svsig.gz
done

pbsv call -j 8 hg38.fa hg38.sample1.*.svsig.gz hg38.sample1.vcf
