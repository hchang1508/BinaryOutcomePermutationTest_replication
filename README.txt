This repository contains the replication code for Table 2 and Table 3 of the paper 

"Fast computation of exact confidence intervals for randomized experiments with binary outcomes".

The entire calculation is carried on Yale HPC. 
https://research.computing.yale.edu/services/high-performance-computing

#############################################################################################
#############################################################################################

To replicate Table 2

1. Run "1_simulation_balanced_case_1.R" for the First Scenario n=50,100,200
2. Run "1_simulation_balanced_case_1_n1000.R" for the First Scenario n=1000
3. Run "1_simulation_balanced_case_2.R" for the Second Scenario n=50,100,200
4. Run "1_simulation_balanced_case_2_n1000.R" for the Second Scenario n=1000

Note: One may need to change a) home_dir, 2) index, 3)save_path_XXXX in these files to execute the code.

5. Run "5_create_table_balanced.R": to replicate the entire Table 2

#############################################################################################
#############################################################################################

To replicate Table 3

1. Run "1_simulation_unbalanced_case_1.R" for the First Scenario n=50,100,200
2. Run "1_simulation_unbalanced_case_2.R" for the Second Scenario n=50,100,200

Note: One may need to change a) home_dir, 2) index, 3)save_path_XXXX in these files to execute the code.

3. Run "5_create_table_unbalanced.R": to replicate the entire Table 3

#############################################################################################
#############################################################################################

To replicate the counterexample in Footnote 9

1. Run "1_checking_lemma3_1.R"

#############################################################################################
#############################################################################################

Other files:

1. submit_job_XXX.sh: the bash files we used to interact with the Yale HPC.
2. 2_sim_raw.R: contains functions for simulations.
3. 2_permutation_test.R: contains functions to run permutation tests.
4. permutation_test.cpp: Rcpp code for the permutation tests.
