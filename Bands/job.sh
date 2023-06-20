#!/bin/bash -l

prefName="GeTe-mono"

echo 'scf'
mpirun -np 40 pw.x < $prefName.scf.in > $prefName.scf.out
echo 'nscfbands'
mpirun -np 40 pw.x < $prefName.nscfbands.in > $prefName.nscfbands.out
echo 'band '
mpirun -np 40 bands.x < $prefName.bands.in > $prefName.bands.out

echo 'job done!'
