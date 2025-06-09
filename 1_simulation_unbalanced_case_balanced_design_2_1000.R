home_dir = "/home/hc654/BinaryOutcomePermutationTest"
setwd(home_dir)

#the script below has the compare_ATE function to run simulations
source("2_sim_raw.R")  #compare_ATE



#command line, take input from command line
args = commandArgs(trailingOnly=TRUE)
index = as.integer(args[1])
nperm = as.integer(args[2])

#set random seed
set.seed(index)

#output file name
save_path_1000=  paste0("/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n1000/",'balanced_design_',index,'_1000_',nperm,'.csv')

#This script contains simulations for the balanced case with SATE=0 and v11_share=0.08, v01_share=0, v10_share=0.
#The sample sizes is n=1000
#The number of treated units is nt=0.5*n.

############################################################
#########Balanced Case and SATE=0###########################
############################################################
print('Unbalanced')
v11_share=0.08
v10_share=0
v01_share=0
test_type=1
nsim=1

#############################
#####n=1000###################
#############################
n=1000
nt=500
print(n)
start.time=proc.time()
result_1000=compare_ATE_balanced_design_unbalanced_algorithm(nsim,n,nt,v11_share,v10_share,v01_share,1,nperm=nperm,display_progress=FALSE,warning_msg=FALSE)
end.time=proc.time()
print(end.time-start.time)
write.csv(result_1000,file = save_path_1000)





