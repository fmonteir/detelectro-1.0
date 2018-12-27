#!/bin/bash

#   This script saves the results in temp-data to examples/data

#   NO ARGUMENTS

geom=$(awk 'BEGIN{FS=","; RS=""} {print $22}' temp-data/simulationParameters.csv)
nsites=$(awk 'BEGIN{FS=","; RS=""} {print $2}' temp-data/simulationParameters.csv)
dt_inv=$(awk 'BEGIN{FS=","; RS=""} {print $4}' temp-data/simulationParameters.csv)
beta=$(awk 'BEGIN{FS=","; RS=""} {print $6}' temp-data/simulationParameters.csv)
U=$(awk 'BEGIN{FS=","; RS=""} {print $12}' temp-data/simulationParameters.csv)
mu=$(awk 'BEGIN{FS=","; RS=""} {print $14}' temp-data/simulationParameters.csv)
ny=$(awk 'BEGIN{FS=","; RS=""} {print $24}' temp-data/simulationParameters.csv)

if [ $geom -eq 1 ]
then
  mkdir examples/data/1d-chain-pbc/
  mkdir examples/data/1d-chain-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/1d-chain-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 2 ]
then
  mkdir examples/data/1d-chain-obc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/1d-chain-obc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 3 ]
then
  mkdir examples/data/2d-sq-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-sq-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 4 ]
then
  mkdir examples/data/2d-sq-obc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-sq-obc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 5 ]
then
  mkdir examples/data/2d-rec-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-rec-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 6 ]
then
  mkdir examples/data/2d-rec-obc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-rec-obc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 7 ]
then
  mkdir examples/data/2d-triang-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-triang-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 8 ]
then
  mkdir examples/data/2d-triang-nanoribbon/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-triang-nanoribbon/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 9 ]
then
  mkdir examples/data/2d-hc-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-hc-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 10 ]
then
  mkdir examples/data/2d-hc-nanoribbon/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-hc-nanoribbon/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 11 ]
then
  mkdir examples/data/2d-hc-nanoribbon-strain/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-hc-nanoribbon-strain/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 12 ]
then
  mkdir examples/data/2d-tmd-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-tmd-pbc/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 13 ]
then
  mkdir examples/data/2d-tmd-nanoribbon/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-tmd-nanoribbon/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi

if [ $geom -eq 14 ]
then
  mkdir examples/data/2d-tmd-nanoribbon-strain/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
  cp -r temp-data/* examples/data/2d-tmd-nanoribbon-strain/N$nsites-BETA$beta-U$U-MU$mu-NY$ny
fi
