#!/bin/bash -l

prefName="GeTe-mono"

echo 'scf'
mpirun -np 20 pw.x < $prefName.scf.in > $prefName.scf.out
echo 'nscfdos'
mpirun -np 20 pw.x < $prefName.nscfdos.in > $prefName.nscfdos.out
echo 'dos'
mpirun -np 20 dos.x < $prefName.dos.in > $prefName.dos.out

echo 'job done!'
