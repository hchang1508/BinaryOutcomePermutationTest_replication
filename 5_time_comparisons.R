rm(list=ls())
library(xtable)
#############################################
###Time the Algorithm########################
#############################################


#####################################################################
##########Scenario 1: unbalanced algorith + balanced design##########
#####################################################################
######
#n=50#
######
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n50')
files_s1_50=list.files()
files_s1_50_1000=files_s1_50[grep('balanced_design_[0-9]+_50_1000.csv',files_s1_50)]
files_s1_50_2000=files_s1_50[grep('balanced_design_[0-9]+_50_2000.csv',files_s1_50)]
files_s1_50_5000=files_s1_50[grep('balanced_design_[0-9]+_50_5000.csv',files_s1_50)]
files_s1_50_10000=files_s1_50[grep('balanced_design_[0-9]+_50_10000.csv',files_s1_50)]
files_s1_50_20000=files_s1_50[grep('balanced_design_[0-9]+_50_20000.csv',files_s1_50)]

output_50_s1_1000=c()
output_50_s1_2000=c()
output_50_s1_5000=c()
output_50_s1_10000=c()
output_50_s1_20000=c()

for (i in 1:length(files_s1_50_2000)){
  output_50_s1_1000=rbind(output_50_s1_1000, read.csv(files_s1_50_1000[i]))
  output_50_s1_2000=rbind(output_50_s1_2000, read.csv(files_s1_50_2000[i]))
  output_50_s1_5000=rbind(output_50_s1_5000, read.csv(files_s1_50_5000[i]))
  output_50_s1_10000=rbind(output_50_s1_10000, read.csv(files_s1_50_10000[i]))
  output_50_s1_20000=rbind(output_50_s1_20000, read.csv(files_s1_50_20000[i]))
  
}
time_50_s1=cbind(apply(output_50_s1_1000,2,mean), apply(output_50_s1_2000,2,mean),apply(output_50_s1_5000,2,mean),apply(output_50_s1_10000,2,mean),apply(output_50_s1_20000,2,mean))

########
#n=100##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n100')
files_s1_100=list.files()

files_s1_100_1000=files_s1_100[grep('balanced_design_[0-9]+_100_1000.csv',files_s1_100)]
files_s1_100_2000=files_s1_100[grep('balanced_design_[0-9]+_100_2000.csv',files_s1_100)]
files_s1_100_5000=files_s1_100[grep('balanced_design_[0-9]+_100_5000.csv',files_s1_100)]
files_s1_100_10000=files_s1_100[grep('balanced_design_[0-9]+_100_10000.csv',files_s1_100)]
files_s1_100_20000=files_s1_100[grep('balanced_design_[0-9]+_100_20000.csv',files_s1_100)]

output_100_s1_1000=c()
output_100_s1_2000=c()
output_100_s1_5000=c()
output_100_s1_10000=c()
output_100_s1_20000=c()

for (i in 1:length(files_s1_100_2000)){
  output_100_s1_1000=rbind(output_100_s1_1000, read.csv(files_s1_100_1000[i]))
  output_100_s1_2000=rbind(output_100_s1_2000, read.csv(files_s1_100_2000[i]))
  output_100_s1_5000=rbind(output_100_s1_5000, read.csv(files_s1_100_5000[i]))
  output_100_s1_10000=rbind(output_100_s1_10000, read.csv(files_s1_100_10000[i]))
  output_100_s1_20000=rbind(output_100_s1_20000, read.csv(files_s1_100_20000[i]))
}

time_100_s1=cbind(apply(output_100_s1_1000,2,mean),apply(output_100_s1_2000,2,mean),apply(output_100_s1_5000,2,mean),apply(output_100_s1_10000,2,mean),apply(output_100_s1_20000,2,mean))


########
#n=200##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n200')
files_s1_200=list.files()
files_s1_200_1000=files_s1_200[grep('balanced_design_[0-9]+_200_1000.csv',files_s1_200)]
files_s1_200_2000=files_s1_200[grep('balanced_design_[0-9]+_200_2000.csv',files_s1_200)]
files_s1_200_5000=files_s1_200[grep('balanced_design_[0-9]+_200_5000.csv',files_s1_200)]
files_s1_200_10000=files_s1_200[grep('balanced_design_[0-9]+_200_10000.csv',files_s1_200)]
files_s1_200_20000=files_s1_200[grep('balanced_design_[0-9]+_200_20000.csv',files_s1_200)]
output_200_s1_1000=c()
output_200_s1_2000=c()
output_200_s1_5000=c()
output_200_s1_10000=c()
output_200_s1_20000=c()
for (i in 1:length(files_s1_200_2000)){
  output_200_s1_1000=rbind(output_200_s1_1000, read.csv(files_s1_200_1000[i]))
  output_200_s1_2000=rbind(output_200_s1_2000, read.csv(files_s1_200_2000[i]))
  output_200_s1_5000=rbind(output_200_s1_5000, read.csv(files_s1_200_5000[i]))
  output_200_s1_10000=rbind(output_200_s1_10000, read.csv(files_s1_200_10000[i]))
  output_200_s1_20000=rbind(output_200_s1_20000, read.csv(files_s1_200_20000[i]))
  
}
time_200_s1=cbind(apply(output_200_s1_1000,2,mean),apply(output_200_s1_2000,2,mean),apply(output_200_s1_5000,2,mean),apply(output_200_s1_10000,2,mean),apply(output_200_s1_20000,2,mean))

########
#n=500#
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n500')
files_s1_500=list.files()
files_s1_500_1000=files_s1_500[grep('balanced_design_[0-9]+_500_1000.csv',files_s1_500)]
files_s1_500_2000=files_s1_500[grep('balanced_design_[0-9]+_500_2000.csv',files_s1_500)]
files_s1_500_5000=files_s1_500[grep('balanced_design_[0-9]+_500_5000.csv',files_s1_500)]
files_s1_500_10000=files_s1_500[grep('balanced_design_[0-9]+_500_10000.csv',files_s1_500)]
files_s1_500_20000=files_s1_500[grep('balanced_design_[0-9]+_500_20000.csv',files_s1_500)]
output_500_s1_1000=c()
output_500_s1_2000=c()
output_500_s1_5000=c()
output_500_s1_10000=c()
output_500_s1_20000=c()
for (i in 1:length(files_s1_500_2000)){
  output_500_s1_1000=rbind(output_500_s1_1000, read.csv(files_s1_500_1000[i]))
  output_500_s1_2000=rbind(output_500_s1_2000, read.csv(files_s1_500_2000[i]))
  output_500_s1_5000=rbind(output_500_s1_5000, read.csv(files_s1_500_5000[i]))
  output_500_s1_10000=rbind(output_500_s1_10000, read.csv(files_s1_500_10000[i]))
  output_500_s1_20000=rbind(output_500_s1_20000, read.csv(files_s1_500_20000[i]))
  
}
time_500_s1=cbind(apply(output_500_s1_1000,2,mean),apply(output_500_s1_2000,2,mean),apply(output_500_s1_5000,2,mean),apply(output_500_s1_10000,2,mean),apply(output_500_s1_20000,2,mean))

########
#n=1000#
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s1/n1000')
files_s1_1000=list.files()
files_s1_1000_1000=files_s1_1000[grep('balanced_design_[0-9]+_1000_1000.csv',files_s1_1000)]
files_s1_1000_2000=files_s1_1000[grep('balanced_design_[0-9]+_1000_2000.csv',files_s1_1000)]
files_s1_1000_5000=files_s1_1000[grep('balanced_design_[0-9]+_1000_5000.csv',files_s1_1000)]
files_s1_1000_10000=files_s1_1000[grep('balanced_design_[0-9]+_1000_10000.csv',files_s1_1000)]
files_s1_1000_20000=files_s1_1000[grep('balanced_design_[0-9]+_1000_20000.csv',files_s1_1000)]
output_1000_s1_1000=c()
output_1000_s1_2000=c()
output_1000_s1_5000=c()
output_1000_s1_10000=c()
output_1000_s1_20000=c()
for (i in 1:length(files_s1_1000_10000)){
  output_1000_s1_1000=rbind(output_1000_s1_1000, read.csv(files_s1_1000_1000[i]))
  output_1000_s1_2000=rbind(output_1000_s1_2000, read.csv(files_s1_1000_2000[i]))
  output_1000_s1_5000=rbind(output_1000_s1_5000, read.csv(files_s1_1000_5000[i]))
  output_1000_s1_10000=rbind(output_1000_s1_10000, read.csv(files_s1_1000_10000[i]))
  output_1000_s1_20000=rbind(output_1000_s1_20000, read.csv(files_s1_1000_20000[i]))
  
}
time_1000_s1=cbind(apply(output_1000_s1_1000,2,mean),apply(output_1000_s1_2000,2,mean),apply(output_1000_s1_5000,2,mean),apply(output_1000_s1_10000,2,mean),apply(output_1000_s1_20000,2,mean))

#####################################################################
#######Balanced: Scenario 1##########################################
#####################################################################
#######
#n=50##
#######
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s1/n50')
files_balanced_s1_50=list.files()
output_balanced_s1_50=c()

for (i in 1:length(files_balanced_s1_50)){
  output_balanced_s1_50=rbind(output_balanced_s1_50,read.csv(files_balanced_s1_50[i])[,c('perm_width','dim_time')])
}

time_width_balanced_s1_50=apply(output_balanced_s1_50,2,mean)
########
#n=100##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s1/n100')
files_balanced_s1_100=list.files()
output_balanced_s1_100=c()

for (i in 1:length(files_balanced_s1_100)){
  output_balanced_s1_100=rbind(output_balanced_s1_100,read.csv(files_balanced_s1_100[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s1_100=apply(output_balanced_s1_100,2,mean)

########
#n=200##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s1/n200')
files_balanced_s1_200=list.files()
output_balanced_s1_200=c()

for (i in 1:length(files_balanced_s1_200)){
  output_balanced_s1_200=rbind(output_balanced_s1_200,read.csv(files_balanced_s1_200[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s1_200=apply(output_balanced_s1_200,2,mean)

########
#n=500##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s1/n500')
files_balanced_s1_500=list.files()
output_balanced_s1_500=c()

for (i in 1:length(files_balanced_s1_500)){
  output_balanced_s1_500=rbind(output_balanced_s1_500,read.csv(files_balanced_s1_500[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s1_500=apply(output_balanced_s1_500,2,mean)
#########
#n=1000##
#########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s1/n1000')
files_balanced_s1_1000=list.files()
output_balanced_s1_1000=c()

for (i in 1:length(files_balanced_s1_1000)){
  output_balanced_s1_1000=rbind(output_balanced_s1_1000,read.csv(files_balanced_s1_1000[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s1_1000=apply(output_balanced_s1_1000,2,mean)


#####################################################
###Make Table: Scenario 1############################
#####################################################
time_width_balanced_s1=rbind(time_width_balanced_s1_50,time_width_balanced_s1_100,time_width_balanced_s1_200,time_width_balanced_s1_500,time_width_balanced_s1_1000)

#time 
time_unbalanced_s1=rbind(time_50_s1['dim_time',],time_100_s1['dim_time',],time_200_s1['dim_time',],time_500_s1['dim_time',],time_1000_s1['dim_time',])
table_time_s1=cbind(time_width_balanced_s1[,'dim_time'], time_unbalanced_s1)

xtable(table_time_s1)
#width
width_unbalanced_s1=rbind(time_50_s1['perm_width',],time_100_s1['perm_width',],time_200_s1['perm_width',],time_500_s1['perm_width',],time_1000_s1['perm_width',])
table_width_s1=cbind(time_width_balanced_s1[,'perm_width'], width_unbalanced_s1)
xtable(table_width_s1)

#####################################################################
##########Scenario 2: unbalanced algorith + balanced design##########
#####################################################################

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n50')
files_s2_50=list.files()

files_s2_50_1000=files_s2_50[grep('balanced_design_[0-9]+_50_1000.csv',files_s2_50)]
files_s2_50_2000=files_s2_50[grep('balanced_design_[0-9]+_50_2000.csv',files_s2_50)]
files_s2_50_5000=files_s2_50[grep('balanced_design_[0-9]+_50_5000.csv',files_s2_50)]
files_s2_50_10000=files_s2_50[grep('balanced_design_[0-9]+_50_10000.csv',files_s2_50)]
files_s2_50_20000=files_s2_50[grep('balanced_design_[0-9]+_50_20000.csv',files_s2_50)]
output_50_s2_1000=c()
output_50_s2_2000=c()
output_50_s2_5000=c()
output_50_s2_10000=c()
output_50_s2_20000=c()

for (i in 1:length(files_s2_50_2000)){
  output_50_s2_1000=rbind(output_50_s2_1000, read.csv(files_s2_50_1000[i]))
  output_50_s2_2000=rbind(output_50_s2_2000, read.csv(files_s2_50_2000[i]))
  output_50_s2_5000=rbind(output_50_s2_5000, read.csv(files_s2_50_5000[i]))
  output_50_s2_10000=rbind(output_50_s2_10000, read.csv(files_s2_50_10000[i]))
  output_50_s2_20000=rbind(output_50_s2_20000, read.csv(files_s2_50_20000[i]))
  
}
time_50_s2=cbind(apply(output_50_s2_1000,2,mean), apply(output_50_s2_2000,2,mean),apply(output_50_s2_5000,2,mean),apply(output_50_s2_10000,2,mean),apply(output_50_s2_20000,2,mean))

########
#n=100##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n100')
files_s2_100=list.files()
files_s2_100_1000=files_s2_100[grep('balanced_design_[0-9]+_100_1000.csv',files_s2_100)]
files_s2_100_2000=files_s2_100[grep('balanced_design_[0-9]+_100_2000.csv',files_s2_100)]
files_s2_100_5000=files_s2_100[grep('balanced_design_[0-9]+_100_5000.csv',files_s2_100)]
files_s2_100_10000=files_s2_100[grep('balanced_design_[0-9]+_100_10000.csv',files_s2_100)]
files_s2_100_20000=files_s2_100[grep('balanced_design_[0-9]+_100_20000.csv',files_s2_100)]

output_100_s2_1000=c()
output_100_s2_2000=c()
output_100_s2_5000=c()
output_100_s2_10000=c()
output_100_s2_20000=c()
for (i in 1:length(files_s2_100_2000)){
  output_100_s2_1000=rbind(output_100_s2_1000, read.csv(files_s2_100_1000[i]))
  output_100_s2_2000=rbind(output_100_s2_2000, read.csv(files_s2_100_2000[i]))
  output_100_s2_5000=rbind(output_100_s2_5000, read.csv(files_s2_100_5000[i]))
  output_100_s2_10000=rbind(output_100_s2_10000, read.csv(files_s2_100_10000[i]))
  output_100_s2_20000=rbind(output_100_s2_20000, read.csv(files_s2_100_20000[i]))
}
time_100_s2=cbind(apply(output_100_s2_1000,2,mean),apply(output_100_s2_2000,2,mean),apply(output_100_s2_5000,2,mean),apply(output_100_s2_10000,2,mean),apply(output_100_s2_20000,2,mean))


########
#n=200##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n200')
files_s2_200=list.files()
files_s2_200_1000=files_s2_200[grep('balanced_design_[0-9]+_200_1000.csv',files_s2_200)]
files_s2_200_2000=files_s2_200[grep('balanced_design_[0-9]+_200_2000.csv',files_s2_200)]
files_s2_200_5000=files_s2_200[grep('balanced_design_[0-9]+_200_5000.csv',files_s2_200)]
files_s2_200_10000=files_s2_200[grep('balanced_design_[0-9]+_200_10000.csv',files_s2_200)]
files_s2_200_20000=files_s2_200[grep('balanced_design_[0-9]+_200_20000.csv',files_s2_200)]

output_200_s2_1000=c()
output_200_s2_2000=c()
output_200_s2_5000=c()
output_200_s2_10000=c()
output_200_s2_20000=c()
for (i in 1:length(files_s2_200_2000)){
  output_200_s2_1000=rbind(output_200_s2_1000, read.csv(files_s2_200_1000[i]))
  output_200_s2_2000=rbind(output_200_s2_2000, read.csv(files_s2_200_2000[i]))
  output_200_s2_5000=rbind(output_200_s2_5000, read.csv(files_s2_200_5000[i]))
  output_200_s2_10000=rbind(output_200_s2_10000, read.csv(files_s2_200_10000[i]))
  output_200_s2_20000=rbind(output_200_s2_20000, read.csv(files_s2_200_20000[i]))
  
}
time_200_s2=cbind(apply(output_200_s2_1000,2,mean),apply(output_200_s2_2000,2,mean),apply(output_200_s2_5000,2,mean),apply(output_200_s2_10000,2,mean),apply(output_200_s2_20000,2,mean))

########
#n=500##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n500')
files_s2_500=list.files()
files_s2_500_1000=files_s2_500[grep('balanced_design_[0-9]+_500_1000.csv',files_s2_500)]
files_s2_500_2000=files_s2_500[grep('balanced_design_[0-9]+_500_2000.csv',files_s2_500)]
files_s2_500_5000=files_s2_500[grep('balanced_design_[0-9]+_500_5000.csv',files_s2_500)]
files_s2_500_10000=files_s2_500[grep('balanced_design_[0-9]+_500_10000.csv',files_s2_500)]
files_s2_500_20000=files_s2_500[grep('balanced_design_[0-9]+_500_20000.csv',files_s2_500)]
output_500_s2_5000=c()
output_500_s2_2000=c()
output_500_s2_5000=c()
output_500_s2_50000=c()
output_500_s2_20000=c()
for (i in 1:length(files_s2_500_20000)){
  output_500_s2_5000=rbind(output_500_s2_5000, read.csv(files_s2_500_1000[i]))
  output_500_s2_2000=rbind(output_500_s2_2000, read.csv(files_s2_500_2000[i]))
  output_500_s2_5000=rbind(output_500_s2_5000, read.csv(files_s2_500_5000[i]))
  output_500_s2_50000=rbind(output_500_s2_50000, read.csv(files_s2_500_10000[i]))
  output_500_s2_20000=rbind(output_500_s2_20000, read.csv(files_s2_500_20000[i]))
  
}
time_500_s2=cbind(apply(output_500_s2_5000,2,mean),apply(output_500_s2_2000,2,mean),apply(output_500_s2_5000,2,mean),apply(output_500_s2_50000,2,mean),apply(output_500_s2_20000,2,mean))


########
#n=1000#
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s2/n1000')
files_s2_1000=list.files()
files_s2_1000_1000=files_s2_1000[grep('balanced_design_[0-9]+_1000_1000.csv',files_s2_1000)]
files_s2_1000_2000=files_s2_1000[grep('balanced_design_[0-9]+_1000_2000.csv',files_s2_1000)]
files_s2_1000_5000=files_s2_1000[grep('balanced_design_[0-9]+_1000_5000.csv',files_s2_1000)]
files_s2_1000_10000=files_s2_1000[grep('balanced_design_[0-9]+_1000_10000.csv',files_s2_1000)]
files_s2_1000_20000=files_s2_1000[grep('balanced_design_[0-9]+_1000_20000.csv',files_s2_1000)]
output_1000_s2_1000=c()
output_1000_s2_2000=c()
output_1000_s2_5000=c()
output_1000_s2_10000=c()
output_1000_s2_20000=c()
for (i in 1:length(files_s2_1000_20000)){
  output_1000_s2_1000=rbind(output_1000_s2_1000, read.csv(files_s2_1000_1000[i]))
  output_1000_s2_2000=rbind(output_1000_s2_2000, read.csv(files_s2_1000_2000[i]))
  output_1000_s2_5000=rbind(output_1000_s2_5000, read.csv(files_s2_1000_5000[i]))
  output_1000_s2_10000=rbind(output_1000_s2_10000, read.csv(files_s2_1000_10000[i]))
  output_1000_s2_20000=rbind(output_1000_s2_20000, read.csv(files_s2_1000_20000[i]))
  
}
time_1000_s2=cbind(apply(output_1000_s2_1000,2,mean),apply(output_1000_s2_2000,2,mean),apply(output_1000_s2_5000,2,mean),apply(output_1000_s2_10000,2,mean),apply(output_1000_s2_20000,2,mean))

#####################################################################
#######Balanced: Scenario 2##########################################
#####################################################################
#######
#n=50##
#######
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s2/n50')
files_balanced_s2_50=list.files()
output_balanced_s2_50=c()

for (i in 1:length(files_balanced_s2_50)){
  output_balanced_s2_50=rbind(output_balanced_s2_50,read.csv(files_balanced_s2_50[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s2_50=apply(output_balanced_s2_50,2,mean)


########
#n=100##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s2/n100')
files_balanced_s2_100=list.files()
output_balanced_s2_100=c()

for (i in 1:length(files_balanced_s2_100)){
  output_balanced_s2_100=rbind(output_balanced_s2_100,read.csv(files_balanced_s2_100[i])[,c('perm_width','dim_time')])
}

time_width_balanced_s2_100=apply(output_balanced_s2_100,2,mean)

########
#n=200##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s2/n200')
files_balanced_s2_200=list.files()
output_balanced_s2_200=c()

for (i in 1:length(files_balanced_s2_200)){
  output_balanced_s2_200=rbind(output_balanced_s2_200,read.csv(files_balanced_s2_200[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s2_200=apply(output_balanced_s2_200,2,mean)

########
#n=500##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s2/n500')
files_balanced_s2_500=list.files()
output_balanced_s2_500=c()

for (i in 1:length(files_balanced_s2_500)){
  output_balanced_s2_500=rbind(output_balanced_s2_500,read.csv(files_balanced_s2_500[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s2_500=apply(output_balanced_s2_500,2,mean)

#########
#n=1000##
#########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s2/n1000')
files_balanced_s2_1000=list.files()
output_balanced_s2_1000=c()

for (i in 1:length(files_balanced_s2_1000)){
  output_balanced_s2_1000=rbind(output_balanced_s2_1000,read.csv(files_balanced_s2_1000[i])[,c('perm_width','dim_time')])
}

time_width_balanced_s2_1000=apply(output_balanced_s2_1000,2,mean)

#####################################################
###Make Table: Scenario 2############################
#####################################################
time_width_balanced_s2=rbind(time_width_balanced_s2_50,time_width_balanced_s2_100,time_width_balanced_s2_200,time_width_balanced_s2_500,time_width_balanced_s2_1000)

#time 
time_unbalanced_s2=rbind(time_50_s2['dim_time',],time_100_s2['dim_time',],time_200_s2['dim_time',],time_500_s2['dim_time',],time_1000_s2['dim_time',])
table_time_s2=cbind(time_width_balanced_s2[,'dim_time'], time_unbalanced_s2)

xtable(table_time_s2)
#width
width_unbalanced_s2=rbind(time_50_s2['perm_width',],time_100_s2['perm_width',],time_200_s2['perm_width',],time_500_s2['perm_width',],time_1000_s2['perm_width',])
table_width_s2=cbind(time_width_balanced_s2[,'perm_width'], width_unbalanced_s2)
xtable(table_width_s2)




#####################################################################
##########Scenario 3: unbalanced algorith + balanced design##########
#####################################################################
######
#n=50#
######
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s3/n50')
files_s3_50=list.files()
files_s3_50_1000=files_s3_50[grep('balanced_design_[0-9]+_50_1000.csv',files_s3_50)]
files_s3_50_2000=files_s3_50[grep('balanced_design_[0-9]+_50_2000.csv',files_s3_50)]
files_s3_50_5000=files_s3_50[grep('balanced_design_[0-9]+_50_5000.csv',files_s3_50)]
files_s3_50_10000=files_s3_50[grep('balanced_design_[0-9]+_50_10000.csv',files_s3_50)]
files_s3_50_20000=files_s3_50[grep('balanced_design_[0-9]+_50_20000.csv',files_s3_50)]

output_50_s3_1000=c()
output_50_s3_2000=c()
output_50_s3_5000=c()
output_50_s3_10000=c()
output_50_s3_20000=c()

for (i in 1:length(files_s3_50_2000)){
  output_50_s3_1000=rbind(output_50_s3_1000, read.csv(files_s3_50_1000[i]))
  output_50_s3_2000=rbind(output_50_s3_2000, read.csv(files_s3_50_2000[i]))
  output_50_s3_5000=rbind(output_50_s3_5000, read.csv(files_s3_50_5000[i]))
  output_50_s3_10000=rbind(output_50_s3_10000, read.csv(files_s3_50_10000[i]))
  output_50_s3_20000=rbind(output_50_s3_20000, read.csv(files_s3_50_20000[i]))
  
}
time_50_s3=cbind(apply(output_50_s3_1000,2,mean), apply(output_50_s3_2000,2,mean),apply(output_50_s3_5000,2,mean),apply(output_50_s3_10000,2,mean),apply(output_50_s3_20000,2,mean))

########
#n=100##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s3/n100')
files_s3_100=list.files()

files_s3_100_1000=files_s3_100[grep('balanced_design_[0-9]+_100_1000.csv',files_s3_100)]
files_s3_100_2000=files_s3_100[grep('balanced_design_[0-9]+_100_2000.csv',files_s3_100)]
files_s3_100_5000=files_s3_100[grep('balanced_design_[0-9]+_100_5000.csv',files_s3_100)]
files_s3_100_10000=files_s3_100[grep('balanced_design_[0-9]+_100_10000.csv',files_s3_100)]
files_s3_100_20000=files_s3_100[grep('balanced_design_[0-9]+_100_20000.csv',files_s3_100)]

output_100_s3_1000=c()
output_100_s3_2000=c()
output_100_s3_5000=c()
output_100_s3_10000=c()
output_100_s3_20000=c()

for (i in 1:length(files_s3_100_2000)){
  output_100_s3_1000=rbind(output_100_s3_1000, read.csv(files_s3_100_1000[i]))
  output_100_s3_2000=rbind(output_100_s3_2000, read.csv(files_s3_100_2000[i]))
  output_100_s3_5000=rbind(output_100_s3_5000, read.csv(files_s3_100_5000[i]))
  output_100_s3_10000=rbind(output_100_s3_10000, read.csv(files_s3_100_10000[i]))
  output_100_s3_20000=rbind(output_100_s3_20000, read.csv(files_s3_100_20000[i]))
}

time_100_s3=cbind(apply(output_100_s3_1000,2,mean),apply(output_100_s3_2000,2,mean),apply(output_100_s3_5000,2,mean),apply(output_100_s3_10000,2,mean),apply(output_100_s3_20000,2,mean))


########
#n=200##
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s3/n200')
files_s3_200=list.files()
files_s3_200_1000=files_s3_200[grep('balanced_design_[0-9]+_200_1000.csv',files_s3_200)]
files_s3_200_2000=files_s3_200[grep('balanced_design_[0-9]+_200_2000.csv',files_s3_200)]
files_s3_200_5000=files_s3_200[grep('balanced_design_[0-9]+_200_5000.csv',files_s3_200)]
files_s3_200_10000=files_s3_200[grep('balanced_design_[0-9]+_200_10000.csv',files_s3_200)]
files_s3_200_20000=files_s3_200[grep('balanced_design_[0-9]+_200_20000.csv',files_s3_200)]
output_200_s3_1000=c()
output_200_s3_2000=c()
output_200_s3_5000=c()
output_200_s3_10000=c()
output_200_s3_20000=c()
for (i in 1:length(files_s3_200_2000)){
  output_200_s3_1000=rbind(output_200_s3_1000, read.csv(files_s3_200_1000[i]))
  output_200_s3_2000=rbind(output_200_s3_2000, read.csv(files_s3_200_2000[i]))
  output_200_s3_5000=rbind(output_200_s3_5000, read.csv(files_s3_200_5000[i]))
  output_200_s3_10000=rbind(output_200_s3_10000, read.csv(files_s3_200_10000[i]))
  output_200_s3_20000=rbind(output_200_s3_20000, read.csv(files_s3_200_20000[i]))
  
}
time_200_s3=cbind(apply(output_200_s3_1000,2,mean),apply(output_200_s3_2000,2,mean),apply(output_200_s3_5000,2,mean),apply(output_200_s3_10000,2,mean),apply(output_200_s3_20000,2,mean))

########
#n=500#
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s3/n500')
files_s3_500=list.files()
files_s3_500_1000=files_s3_500[grep('balanced_design_[0-9]+_500_1000.csv',files_s3_500)]
files_s3_500_2000=files_s3_500[grep('balanced_design_[0-9]+_500_2000.csv',files_s3_500)]
files_s3_500_5000=files_s3_500[grep('balanced_design_[0-9]+_500_5000.csv',files_s3_500)]
files_s3_500_10000=files_s3_500[grep('balanced_design_[0-9]+_500_10000.csv',files_s3_500)]
files_s3_500_20000=files_s3_500[grep('balanced_design_[0-9]+_500_20000.csv',files_s3_500)]
output_500_s3_1000=c()
output_500_s3_2000=c()
output_500_s3_5000=c()
output_500_s3_10000=c()
output_500_s3_20000=c()
for (i in 1:length(files_s3_500_2000)){
  output_500_s3_1000=rbind(output_500_s3_1000, read.csv(files_s3_500_1000[i]))
  output_500_s3_2000=rbind(output_500_s3_2000, read.csv(files_s3_500_2000[i]))
  output_500_s3_5000=rbind(output_500_s3_5000, read.csv(files_s3_500_5000[i]))
  output_500_s3_10000=rbind(output_500_s3_10000, read.csv(files_s3_500_10000[i]))
  output_500_s3_20000=rbind(output_500_s3_20000, read.csv(files_s3_500_20000[i]))
  
}
time_500_s3=cbind(apply(output_500_s3_1000,2,mean),apply(output_500_s3_2000,2,mean),apply(output_500_s3_5000,2,mean),apply(output_500_s3_10000,2,mean),apply(output_500_s3_20000,2,mean))

########
#n=1000#
########
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/unbalanced_s3/n1000')
files_s3_1000=list.files()
files_s3_1000_1000=files_s3_1000[grep('balanced_design_[0-9]+_1000_1000.csv',files_s3_1000)]
files_s3_1000_2000=files_s3_1000[grep('balanced_design_[0-9]+_1000_2000.csv',files_s3_1000)]
files_s3_1000_5000=files_s3_1000[grep('balanced_design_[0-9]+_1000_5000.csv',files_s3_1000)]
files_s3_1000_10000=files_s3_1000[grep('balanced_design_[0-9]+_1000_10000.csv',files_s3_1000)]
files_s3_1000_20000=files_s3_1000[grep('balanced_design_[0-9]+_1000_20000.csv',files_s3_1000)]
output_1000_s3_1000=c()
output_1000_s3_2000=c()
output_1000_s3_5000=c()
output_1000_s3_10000=c()
output_1000_s3_20000=c()
for (i in 1:length(files_s3_1000_10000)){
  output_1000_s3_1000=rbind(output_1000_s3_1000, read.csv(files_s3_1000_1000[i]))
  output_1000_s3_2000=rbind(output_1000_s3_2000, read.csv(files_s3_1000_2000[i]))
  output_1000_s3_5000=rbind(output_1000_s3_5000, read.csv(files_s3_1000_5000[i]))
  output_1000_s3_10000=rbind(output_1000_s3_10000, read.csv(files_s3_1000_10000[i]))
  output_1000_s3_20000=rbind(output_1000_s3_20000, read.csv(files_s3_1000_20000[i]))
  
}
time_1000_s3=cbind(apply(output_1000_s3_1000,2,mean),apply(output_1000_s3_2000,2,mean),apply(output_1000_s3_5000,2,mean),apply(output_1000_s3_10000,2,mean),apply(output_1000_s3_20000,2,mean))


#####################################################################
#######Balanced: Scenario 3##########################################
#####################################################################
#######
#n=50##
#######
setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s3/n50')
files_balanced_s3_50=list.files()
output_balanced_s3_50=c()

for (i in 1:length(files_balanced_s3_50)){
  output_balanced_s3_50=rbind(output_balanced_s3_50,read.csv(files_balanced_s3_50[i])[,c('perm_width','dim_time')])
}

time_width_balanced_s3_50=apply(output_balanced_s3_50,2,mean)
########
#n=100##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s3/n100')
files_balanced_s3_100=list.files()
output_balanced_s3_100=c()

for (i in 1:length(files_balanced_s3_100)){
  output_balanced_s3_100=rbind(output_balanced_s3_100,read.csv(files_balanced_s3_100[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s3_100=apply(output_balanced_s3_100,2,mean)

########
#n=200##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s3/n200')
files_balanced_s3_200=list.files()
output_balanced_s3_200=c()

for (i in 1:length(files_balanced_s3_200)){
  output_balanced_s3_200=rbind(output_balanced_s3_200,read.csv(files_balanced_s3_200[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s3_200=apply(output_balanced_s3_200,2,mean)

########
#n=500##
########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s3/n500')
files_balanced_s3_500=list.files()
output_balanced_s3_500=c()

for (i in 1:length(files_balanced_s3_500)){
  output_balanced_s3_500=rbind(output_balanced_s3_500,read.csv(files_balanced_s3_500[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s3_500=apply(output_balanced_s3_500,2,mean)
#########
#n=1000##
#########

setwd('/home/hc654/palmer_scratch/binary_outcome_sim/balanced_s3/n1000')
files_balanced_s3_1000=list.files()
output_balanced_s3_1000=c()

for (i in 1:length(files_balanced_s3_1000)){
  output_balanced_s3_1000=rbind(output_balanced_s3_1000,read.csv(files_balanced_s3_1000[i])[,c('perm_width','dim_time')])
}
time_width_balanced_s3_1000=apply(output_balanced_s3_1000,2,mean)


#####################################################
###Make Table: Scenario 1############################
#####################################################
time_width_balanced_s3=rbind(time_width_balanced_s3_50,time_width_balanced_s3_100,time_width_balanced_s3_200,time_width_balanced_s3_500,time_width_balanced_s3_1000)

#time 
time_unbalanced_s3=rbind(time_50_s3['dim_time',],time_100_s3['dim_time',],time_200_s3['dim_time',],time_500_s3['dim_time',],time_1000_s3['dim_time',])
table_time_s3=cbind(time_width_balanced_s3[,'dim_time'], time_unbalanced_s3)

xtable(table_time_s3)
#width
width_unbalanced_s3=rbind(time_50_s3['perm_width',],time_100_s3['perm_width',],time_200_s3['perm_width',],time_500_s3['perm_width',],time_1000_s3['perm_width',])
table_width_s3=cbind(time_width_balanced_s3[,'perm_width'], width_unbalanced_s3)
xtable(table_width_s3)