# SN_reactions

## This repository contains a tutorial for SN2 reaction modeling with ORCA.

*This is for didactic purposes only!*

The idea is :

1. Present a simple TS search for a basic 1D reaction coordinate ( [`00_relaxed_scan`](./00_relaxed_scan) )
2. Run a TS optimization and characterization
3. Run an IRC calculation and extract reactant and product structures
4. Reoptimize and characteriza the endpoints
5. Run a final electronic energy calculation with a higher level DFT

Steps 1-4 are calculated using the semiempirical quantum chemistry GFN2-xTB method. 
This yields good geometries and thermostatistical corrections with a very low computational cost.
Step 5 used the wB97x-V/def2-TZVPP method to get accurate final energies for each stationary point.

Final free energy values are then obtained using:

$G_{total} = E_{el}^{DFT} + G_{corr}^{XTB}$

$G_{total} = E_{el}^{DFT} + E_{ZPE} + E_{thermal} + k_{B}T - TS_{total}$

## Repository organization:

* [`initial_structures`](./initial_structures): contains the XYZ structures for different SN2 reaction starting structures
* [`00_relaxed_scan`](./00_relaxed_scan): contains the ORCA input file for the relaxed scan along the 1D reaction coordinate and the slurm submission file for the job
