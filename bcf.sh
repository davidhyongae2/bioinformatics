#Pip_bioinform.sh generates genome calls (SNPs, indels, RNA expression) for visualization in IGV. BAM files can also be analyzed with BCFtools, as shown in the following YouTube video.
#Bioinformatics Coach. (2022), Variant Calling using BCFTOOLS | BCFTOOLS Tutorial | Germline variant calling.YouTube.https://www.youtube.com/watch?v=mKqdfdtv0cI

#Danecek, P., Bonfield, J. K., Liddle, J., Marshall, J., Ohan, V., Pollard, M. O., Whitwham, A., Keane, T., Kokubun, T., Beaudoin, M., & Li, H. (2021). Twelve years of SAMtools and BCFtools. GigaScience, 10(3), giab008. doi.org 
bcftools mpileup -O b -o raw.bcf -f ref/genome.fasta -threads 8 -q 20 -Q 30 output.sorted.bam
#haploid vs diploid
bcftools call --ploidy 1 -m -v -o variant.raw.vcf raw.bcf

#count of variance
grep -v -c '^#' variants.raw.vcf

#variance types
bcftools view -v snps variants.raw.vcf | grep -v -c '^#'
bcftools view -v indels variants.raw.vcf | grep -v -c '^#'
#variance position
bcftools query -f '%POS\n' variants.raw.vcf > file.txt
