#calculate all >10kb regions and the mean of sd
bedtools intersect -a t2t.uniq.txt -b sgdp_fastcn.sd.txt -wao |cut -f8 |ave_awk.sh
#bedtools shuffle simulation
cat t2t.centsat.sort.merge.bed telo.bed >cent.telo.bed
for i in {1..1000};do bedtools shuffle -i t2t.uniq.bed -g GCA_009914755.4.chrNames.fa.fai -excl cent.telo.bed >random_$i.bed;done &
#then run snakemake

#calculate the result of fastcn, without cent,telo,chrY
bedtools intersect -a sgdp_fastcn.sd.txt -b cent.telo.bed -wao |awk '$6=="-1"'|grep -v Y|cut -f4 |ave_awk.sh

