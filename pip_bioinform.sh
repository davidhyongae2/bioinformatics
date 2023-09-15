#run fasta seq
for var1 in {3..1000}
do
grep -v ">" $var1.fasta > $var1.fasta1
awk '/^>/ {printf("%s%s\t",(N>0?"\n":""),$0);N++;next;} {printf("%s",$0);} END {printf("\n");}' < $var1.fasta1 > $var1.fasta2
rm $var1.fasta1
done

#align fastaq
bowtie -X project -1 strand1.fq -2 strand2.fq -S file.sam
read -p "Press enter to continue"
bowtie -X project -1 strand1.fq  -2 strand2.fq | samtools view -b -o file.bam
read -p "Press enter to continue"
#sam to bam
samtools view -bS file.sam > file.bam
read -p "Press enter to continue"
#bam sort
samtools sort -o file1.sort.bam file1.bam
read -p "Press enter to continue"
#index bam
samtools index file1.sort.bam 
read -p "Press enter to continue"
File1.sort.bam.bai

#igv read the call
