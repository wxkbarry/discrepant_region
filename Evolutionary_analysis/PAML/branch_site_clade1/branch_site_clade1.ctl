 seqfile = ../KLRC.cds.nt_ali.fasta.rmchimp2b.fa * sequence data filename
 treefile = ../clade1_tree.txt * tree structure file name [CHANGE THIS]
 outfile = clade1.site.results.txt * main result file name
 noisy = 9 * 0,1,2,3,9: how much rubbish on the screen
 verbose = 1 * 1:detailed output
 runmode = 0 * 0:user defined tree
 seqtype = 1 * 1:codons
 CodonFreq = 2 * 0:equal, 1:F1X4, 2:F3X4, 3:F61
 model = 2 * 0:one omega ratio for all branches
 * 1:separate omega for each branch
 * 2:user specified dN/dS ratios for branches
 NSsites = 2 *
 getSE = 0
 icode = 0 * 0:universal code
 fix_kappa = 0 * 1:kappa fixed, 0:kappa to be estimated
 kappa = 1 * initial or fixed kappa
 fix_omega = 0 * 1:omega fixed, 0
 omega = 1 * initial omega
 Small_Diff = 1e-5
* ncatG = 3                     * SET THIS for 3 site categories under M3         
* ncatG = 10                    * SET THIS for 10 of site categories under M7 and M8
