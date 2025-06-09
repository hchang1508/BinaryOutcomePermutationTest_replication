home_dir = "/home/hc654/BinaryOutcomePermutationTest"
setwd(home_dir)

#the script below has the compare_ATE function to run simulations
source("2_sim_raw.R")  #compare_ATE



#command line, take input from command line
args = commandArgs(trailingOnly=TRUE)
index = as.integer(args[1])
nperm=as.integer(args[2])
#set random seed
set.seed(index)

#output file name
save_path_50= paste0("/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s3/n50/",'balanced_design_',index,'_50_' ,nperm, '.csv')
save_path_100= paste0("/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s3/n100/",'balanced_design_',index,'_100_' ,nperm, '.csv')
save_path_200=  paste0("/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s3/n200/",'balanced_design_',index,'_200_' ,nperm, '.csv')


#This script contains simulations for the balanced case with SATE=0 and v11_share=0.25, v01_share=0.25, v10_share=0.
#The sample sizes is n=50,100,200
#The number of treated units is nt=0.5*n.

############################################################
#########Balanced Case and SATE=0###########################
############################################################

print('Unbalanced')
v11_share=0.25
v10_share=0.25
v01_share=0
test_type=1
nsim=10

#############################
#####n=100###################
#############################
n=50
nt=25
print(n)
result_50=compare_ATE_balanced_design_unbalanced_algorithm(nsim,n,nt,v11_share,v10_share,v01_share,1,nperm,display_progress=FALSE,warning_msg=FALSE)
write.csv(result_50,file = save_path_50)


#############################
#####n=100###################
#############################
n=100
nt=30
print(n)
result_100=compare_ATE_balanced_design_unbalanced_algorithm(nsim,n,nt,v11_share,v10_share,v01_share,1,nperm,display_progress=FALSE,warning_msg=FALSE)
write.csv(result_100,file = save_path_100)

#############################
#####n=200###################
#############################
n=200
nt=100
print(n)
result_200=compare_ATE_balanced_design_unbalanced_algorithm(nsim,n,nt,v11_share,v10_share,v01_share,1,nperm,display_progress=FALSE,warning_msg=FALSE)
write.csv(result_200,file = save_path_200)







