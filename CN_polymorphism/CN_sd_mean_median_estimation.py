# -- coding: utf-8 --
import numpy as np
import scipy
import argparse
import os
parser = argparse.ArgumentParser(description='test')

parser.add_argument('--input1',help='input fastcn file1')
parser.add_argument('--output', help='output file')

args = parser.parse_args()
sgdp_file=open(args.input1,'r')
out_put = open(args.output, 'w')
sgdp_lines = sgdp_file.readlines()
for i in range(len(sgdp_lines)):
    sgdp_line = sgdp_lines[i].strip("\n\r").split("\t")
    sgdp_len = len(sgdp_line)
    sgdp_id = sgdp_line[-1]
    sgdp_data = np.array([int(j) for j in sgdp_line[0:sgdp_len-1]])
    sgdp_mean = np.mean(sgdp_data)
    std1 = round(np.std(sgdp_data, ddof = 1),3)
    out_put.write(f"{sgdp_mean}\t{std1}\n")
        #t, p =scipy.stats.ttest_ind(a=file_data, b=sgdp_data, equal_var=True)
        #out_put.write(f"{file_id}\t{file_mean}\t{sgdp_mean}\t{t}\t{p}\n")
sgdp_file.close()
out_put.close()

