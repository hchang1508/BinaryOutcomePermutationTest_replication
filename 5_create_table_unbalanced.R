rm(list=ls())
library(xtable)
###########################################
##########Scenario 1: ununbalanced#############
###########################################
######
#n=50#
######
table_unbalanced_s1=c()
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n50')
files_s1_50=list.files()
output_50_s1=c()
for (i in 1:length(files_s1_50)){
  output_50_s1=rbind(output_50_s1, read.csv(files_s1_50[i])[,2:15])
}
result_50_s1=c(mean(output_50_s1[,1]),median(output_50_s1[,2]),mean(output_50_s1[,3]),median(output_50_s1[,4]),mean(output_50_s1[,5]),median(output_50_s1[,6]))
mean(output_50_s1[,13])
mean(output_50_s1[,14])

########
#n=100##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n100')
files_s1_100=list.files()
output_100_s1=c()
for (i in 1:length(files_s1_100)){
  output_100_s1=rbind(output_100_s1, read.csv(files_s1_100[i])[,2:15])
}
result_100_s1=c(mean(output_100_s1[,1]),median(output_100_s1[,2]),mean(output_100_s1[,3]),median(output_100_s1[,4]),mean(output_100_s1[,5]),median(output_100_s1[,6]))
mean(output_100_s1[,13])
mean(output_100_s1[,14])

########
#n=200##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n200')
files_s1_200=list.files()
output_200_s1=c()
for (i in 1:length(files_s1_200)){
  output_200_s1=rbind(output_200_s1, read.csv(files_s1_200[i])[,2:15])
}
result_200_s1=c(mean(output_200_s1[,1]),median(output_200_s1[,2]),mean(output_200_s1[,3]),median(output_200_s1[,4]),mean(output_200_s1[,5]),median(output_200_s1[,6]))
mean(output_200_s1[,13])
mean(output_200_s1[,14])

table_unbalanced_s1=rbind(result_50_s1,result_100_s1,result_200_s1)


xtable(round(table_unbalanced_s1,3))
table_unbalanced_s1






###########################################
##########Scenario 2: unbalanced##########
###########################################
######
#n=50#
######
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n50')
files_s2_50=list.files()
output_50_s2=c()
for (i in 1:length(files_s2_50)){
  output_50_s2=rbind(output_50_s2, read.csv(files_s2_50[i])[,2:15])
}
result_50_s2=c(mean(output_50_s2[,1]),median(output_50_s2[,2]),mean(output_50_s2[,3]),median(output_50_s2[,4]),mean(output_50_s2[,5]),median(output_50_s2[,6]))
mean(output_50_s2[,13])
mean(output_50_s2[,14])
########
#n=100##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n100')
files_s2_100=list.files()
output_100_s2=c()
for (i in 1:length(files_s2_100)){
  output_100_s2=rbind(output_100_s2, read.csv(files_s2_100[i])[,2:15])
}
result_100_s2=c(mean(output_100_s2[,1]),median(output_100_s2[,2]),mean(output_100_s2[,3]),median(output_100_s2[,4]),mean(output_100_s2[,5]),median(output_100_s2[,6]))
mean(output_100_s2[,13])
mean(output_100_s2[,14])

########
#n=200##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n200')
files_s2_200=list.files()
output_200_s2=c()
for (i in 1:length(files_s2_200)){
  output_200_s2=rbind(output_200_s2, read.csv(files_s2_200[i])[,2:15])
}
result_200_s2=c(mean(output_200_s2[,1]),median(output_200_s2[,2]),mean(output_200_s2[,3]),median(output_200_s2[,4]),mean(output_200_s2[,5]),median(output_200_s2[,6]))
mean(output_200_s2[,13])
mean(output_200_s2[,14])
table_unbalanced_s2=rbind(result_50_s2,result_100_s2,result_200_s2)

xtable(round(table_unbalanced_s2,3))





#####################################################################
##########Scenario 1: unbalanced algorith + balanced design##########
#####################################################################
######
#n=50#
######
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n50')
files_s1_50=list.files()
files_s1_50_2000=files_s1_50[grep('balanced_design_[0-9]+_50_2000.csv',files_s1_50)]
files_s1_50_5000=files_s1_50[grep('balanced_design_[0-9]+_50_5000.csv',files_s1_50)]
files_s1_50_10000=files_s1_50[grep('balanced_design_[0-9]+_50_10000.csv',files_s1_50)]
files_s1_50_20000=files_s1_50[grep('balanced_design_[0-9]+_50_20000.csv',files_s1_50)]

output_50_s1_2000=c()
output_50_s1_5000=c()
output_50_s1_10000=c()
output_50_s1_20000=c()

for (i in 1:length(files_s2_50)){
  output_50_s1_2000=rbind(output_50_s2, read.csv(files_s1_50_2000[i]))
  output_50_s1_5000=rbind(output_50_s2, read.csv(files_s1_50_5000[i]))
  #output_50_s1_10000=rbind(output_50_s2, read.csv(files_s1_50_10000[i]))
  #output_50_s1_20000=rbind(output_50_s2, read.csv(files_s1_50_20000[i]))
  
}
apply(output_50_s1_2000,2,mean)
apply(output_50_s1_5000,2,mean)
apply(output_50_s1_10000,2,mean)
apply(output_50_s1_20000,2,mean)

########
#n=100##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n100')
files_s1_100=list.files()
files_s1_100_2000=files_s1_50[grep('balanced_design_[0-9]+_100_2000.csv',files_s1_100)]
files_s1_100_5000=files_s1_50[grep('balanced_design_[0-9]+_100_5000.csv',files_s1_100)]
files_s1_100_10000=files_s1_50[grep('balanced_design_[0-9]+_100_10000.csv',files_s1_100)]
files_s1_100_20000=files_s1_50[grep('balanced_design_[0-9]+_100_20000.csv',files_s1_100)]

output_100_s1_2000=c()
output_100_s1_5000=c()
output_100_s1_10000=c()
output_100_s1_20000=c()

for (i in 1:length(files_s2_50)){
  output_100_s1_2000=rbind(output_100_s2, read.csv(files_s1_100_2000[i]))
  output_100_s1_5000=rbind(output_100_s2, read.csv(files_s1_100_5000[i]))
  #output_50_s1_10000=rbind(output_50_s2, read.csv(files_s1_50_10000[i]))
  #output_50_s1_20000=rbind(output_50_s2, read.csv(files_s1_50_20000[i]))
  
}
apply(output_100_s1_2000,2,mean)
apply(output_100_s1_5000,2,mean)
apply(output_100_s1_10000,2,mean)
apply(output_100_s1_20000,2,mean)
########
#n=200##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n200')
files_s1_200=list.files()
files_s1_200_2000=files_s1_50[grep('balanced_design_[0-9]+_200_2000.csv',files_s1_200)]
files_s1_200_5000=files_s1_50[grep('balanced_design_[0-9]+_200_5000.csv',files_s1_200)]
files_s1_200_10000=files_s1_50[grep('balanced_design_[0-9]+_200_10000.csv',files_s1_200)]
files_s1_200_20000=files_s1_50[grep('balanced_design_[0-9]+_200_20000.csv',files_s1_200)]
output_200_s1_2000=c()
output_200_s1_5000=c()
output_200_s1_10000=c()
output_200_s1_20000=c()
for (i in 1:length(files_s2_50)){
  output_200_s1_2000=rbind(output_200_s2, read.csv(files_s1_200_2000[i]))
  output_200_s1_5000=rbind(output_200_s2, read.csv(files_s1_200_5000[i]))
  #output_50_s1_10000=rbind(output_50_s2, read.csv(files_s1_50_10000[i]))
  #output_50_s1_20000=rbind(output_50_s2, read.csv(files_s1_50_20000[i]))
  
}
apply(output_200_s1_2000,2,mean)
apply(output_200_s1_5000,2,mean)
apply(output_200_s1_10000,2,mean)
apply(output_200_s1_20000,2,mean)

########
#n=1000#
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n1000')
files_s1_1000=list.files()
files_s1_1000_2000=files_s1_50[grep('balanced_design_[0-9]+_1000_2000.csv',files_s1_1000)]
files_s1_1000_5000=files_s1_50[grep('balanced_design_[0-9]+_1000_5000.csv',files_s1_1000)]
files_s1_1000_10000=files_s1_50[grep('balanced_design_[0-9]+_1000_10000.csv',files_s1_1000)]
files_s1_1000_20000=files_s1_50[grep('balanced_design_[0-9]+_1000_20000.csv',files_s1_1000)]
output_1000_s1_2000=c()
output_1000_s1_5000=c()
output_1000_s1_10000=c()
output_1000_s1_20000=c()
for (i in 1:length(files_s2_50)){
  output_1000_s1_2000=rbind(output_1000_s2, read.csv(files_s1_1000_2000[i]))
  output_1000_s1_5000=rbind(output_1000_s2, read.csv(files_s1_1000_5000[i]))
  #output_50_s1_10000=rbind(output_50_s2, read.csv(files_s1_50_10000[i]))
  #output_50_s1_20000=rbind(output_50_s2, read.csv(files_s1_50_20000[i]))
  
}
apply(output_1000_s1_2000,2,mean)
apply(output_1000_s1_5000,2,mean)
apply(output_1000_s1_10000,2,mean)
apply(output_1000_s1_20000,2,mean)

#####################################################################
##########Scenario 2: unbalanced algorith + balanced design##########
#####################################################################


#n=50#
######
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n50')
files_s2_50=list.files()
files_s2_50_2000=files_s1_50[grep('balanced_design_[0-9]+_50_2000.csv',files_s2_50)]
files_s2_50_5000=files_s1_50[grep('balanced_design_[0-9]+_50_5000.csv',files_s2_50)]
files_s2_50_10000=files_s1_50[grep('balanced_design_[0-9]+_50_10000.csv',files_s2_50)]
files_s2_50_20000=files_s1_50[grep('balanced_design_[0-9]+_50_20000.csv',files_s2_50)]

output_50_s2=c()
output_50_s2_2000=c()
output_50_s2_5000=c()
output_50_s2_10000=c()
output_50_s2_20000=c()

for (i in 1:length(files_s2_50)){
  output_50_s2_2000=rbind(output_50_s2, read.csv(files_s2_50_2000[i]))
  output_50_s2_5000=rbind(output_50_s2, read.csv(files_s2_50_5000[i]))
  #output_50_s1_10000=rbind(output_50_s2, read.csv(files_s1_50_10000[i]))
  #output_50_s1_20000=rbind(output_50_s2, read.csv(files_s1_50_20000[i]))
  
}

apply(output_50_s2_2000,2,mean)
apply(output_50_s2_5000,2,mean)
apply(output_50_s2_10000,2,mean)
apply(output_50_s2_20000,2,mean)
########
#n=100##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n100')
files_s2_100=list.files()
files_s2_100_2000=files_s1_50[grep('balanced_design_[0-9]+_100_2000.csv',files_s2_100)]
files_s2_100_5000=files_s1_50[grep('balanced_design_[0-9]+_100_5000.csv',files_s2_100)]
files_s2_100_10000=files_s1_50[grep('balanced_design_[0-9]+_100_10000.csv',files_s2_100)]
files_s2_100_20000=files_s1_50[grep('balanced_design_[0-9]+_100_20000.csv',files_s2_100)]
output_100_s2=c()
output_100_s2_2000=c()
output_100_s2_5000=c()
output_100_s2_10000=c()
output_100_s2_20000=c()
for (i in 1:length(files_s2_50)){
  output_100_s2_2000=rbind(output_100_s2, read.csv(files_s2_100_2000[i]))
  output_100_s2_5000=rbind(output_100_s2, read.csv(files_s2_100_5000[i]))
  #output_50_s1_10000=rbind(output_50_s2, read.csv(files_s1_50_10000[i]))
  #output_50_s1_20000=rbind(output_50_s2, read.csv(files_s1_50_20000[i]))
  
}
apply(output_100_s2_2000,2,mean)
apply(output_100_s2_5000,2,mean)
apply(output_100_s2_10000,2,mean)
apply(output_100_s2_20000,2,mean)

########
#n=200##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n200')
files_s2_200=list.files()
files_s2_200_2000=files_s1_50[grep('balanced_design_[0-9]+_200_2000.csv',files_s2_200)]
files_s2_200_5000=files_s1_50[grep('balanced_design_[0-9]+_200_5000.csv',files_s2_200)]
files_s2_200_10000=files_s1_50[grep('balanced_design_[0-9]+_200_10000.csv',files_s2_200)]
files_s2_200_20000=files_s1_50[grep('balanced_design_[0-9]+_200_20000.csv',files_s2_200)]
output_200_s2=c()
output_200_s2_2000=c()
output_200_s2_5000=c()
output_200_s2_10000=c()
output_200_s2_20000=c()
for (i in 1:length(files_s2_50)){
  output_200_s2_2000=rbind(output_200_s2, read.csv(files_s2_200_2000[i]))
  output_200_s2_5000=rbind(output_200_s2, read.csv(files_s2_200_5000[i]))
  #output_50_s1_10000=rbind(output_50_s2, read.csv(files_s1_50_10000[i]))
  #output_50_s1_20000=rbind(output_50_s2, read.csv(files_s1_50_20000[i]))
  
}
apply(output_200_s2_2000,2,mean)
apply(output_200_s2_5000,2,mean)
apply(output_200_s2_10000,2,mean)
apply(output_200_s2_20000,2,mean)

########
#n=1000#
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n1000')
files_s2_1000=list.files()
files_s2_1000_2000=files_s1_50[grep('balanced_design_[0-9]+_1000_2000.csv',files_s2_1000)]
files_s2_1000_5000=files_s1_50[grep('balanced_design_[0-9]+_1000_5000.csv',files_s2_1000)]
files_s2_1000_10000=files_s1_50[grep('balanced_design_[0-9]+_1000_10000.csv',files_s2_1000)]
files_s2_1000_20000=files_s1_50[grep('balanced_design_[0-9]+_1000_20000.csv',files_s2_1000)]
output_1000_s2=c()
output_1000_s2_2000=c()
output_1000_s2_5000=c()
output_1000_s2_10000=c()
output_1000_s2_20000=c()
for (i in 1:length(files_s2_50)){
  output_1000_s2_2000=rbind(output_1000_s2, read.csv(files_s2_1000_2000[i]))
  output_1000_s2_5000=rbind(output_1000_s2, read.csv(files_s2_1000_5000[i]))
  #output_50_s1_10000=rbind(output_50_s2, read.csv(files_s1_50_10000[i]))
  #output_50_s1_20000=rbind(output_50_s2, read.csv(files_s1_50_20000[i]))
  
}
apply(output_1000_s2_2000,2,mean)
apply(output_1000_s2_5000,2,mean)
apply(output_1000_s2_10000,2,mean)
apply(output_1000_s2_20000,2,mean)
