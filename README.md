# SN_reactions

Tutorial for SN2 reaction modeling with ORCA.

This is for didatic purposes only!

The idea is :

1. Present a simple TS search for a basic 1D reaction coordinate
2. Run a TS optimization and characterization
3. Run an IRC calculation and extract reactant and product structures
4. Reoptimize and characteriza the endpoints
5. Run a final electronic energy calculation with a higher level DFT

Steps 1-4 are calculated using the semiemmpirical GFN2-xTB level. This yields good geometries and thermostatistical corrections.
Step 5 used the wB97x-V/def2-TZVPP method to get accurate final energies.

Final free energy values for the stationary points are obtained using:

dG = Eel + dThermo


