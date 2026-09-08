# SN_reactions

## This repository contains a tutorial for SN2 reaction modeling with ORCA.

*This is for didactic purposes only!*

The idea is :

1. Present a simple TS search for a basic 1D reaction coordinate ( [`00_relaxed_scan`](./00_relaxed_scan) )
2. Run a TS optimization and characterization ( [`01_TS_optimization`](./01_TS_optimization) )
3. Run an IRC calculation and extract reactant and product structures ( [`02_IRC`](./02_IRC) )
4. Reoptimize and characteriza the endpoints ( [`03_R-P_optimization`](./03_R-P_optimization) )
5. Run a final electronic energy calculation with a higher level DFT ( [`04_final_energies`](./04_final_energies) )

Steps 1-4 are calculated using the semiempirical quantum chemistry GFN2-xTB method. 
This yields good geometries and thermostatistical corrections with a very low computational cost.
Step 5 used the wB97x-V/def2-TZVPP method to get accurate final energies for each stationary point.

Final free energy values are then obtained using:

$G_{total} = E_{el}^{DFT} + G_{corr}^{XTB}$

$G_{total} = E_{el}^{DFT} + E_{ZPE} + E_{thermal} + k_{B}T - TS_{total}$

## Jupyter notebooks:

* [`TS_search_orca`](./TS_search_orca.ipynb): contains functions to read XYZ coordinates and energies from ORCA trajectories, visualize them as interactive plots in HPC/remote environments and extract relevant structures for the subsequent steps
* [`get_thermo_data`](./get_thermo_data.ipynb): contains functions to read ORCA output files and get electronic energies and thermostatistical corrections to obtaind free energy values of each stationary point
