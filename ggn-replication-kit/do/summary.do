** The following Stata programs run all 
** steps necessary to estimate our results
** from scratch.

************************************************************
**   Run CPS analysis
************************************************************

** NOTE: the programs below call the program "fragment-prepare-cps-data.do"
** and also the program "fragment-run-our-bbs-procedure.do"

** The following program recreates all of our CPS figures.
*do create-cps-figures.do
**
** The following program recreates our main results from CPS
** using alternative standard errors
**
do run-cps-regs-with-clustered-errors.do

************************************************************
**   Run Computationally Intensive CPS analysis
**  (constructing "modified" block bootstrap standard errors)
************************************************************

**
** The following programs require hours to run and a fast computer.
** 
** To begin exploring our data/results, we recommend using/modifyin the 
**  "run-cps-regs-with-clustered-errors.do" file
**

**
** NOTE: the programs below call the program "fragment-prepare-cps-data.do"
** and also the program "fragment-run-our-bbs-procedure.do"
**

** Use the "all" option to debug, but run it piece by piece in practice.
do run-cps-main-tables.do all
* do run-cps-appendix-tables.do all

** The following program runs our CPS regressions at the individual level.
*do run-individual-level-regressions.do

** The following program creates a table of our main results, but presenting
** all triple-difference point estimates.
*do recover-all-ddd-estimates.do





