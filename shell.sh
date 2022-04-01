#!/usr/bin/env bash


if [ "$1" == "" ]; then
  export COFFEA_IMAGE=coffeateam/coffea-dask:latest
else
  export COFFEA_IMAGE=$1
fi

singularity exec -B ${PWD}:/${PWD}\
    -B /uscms_data/d3/dhoang/VH_analysis/CMSSW_12_2_1/src/PhysicsTools/NanoAODTools/outDir/:/data \
    /cvmfs/unpacked.cern.ch/registry.hub.docker.com/${COFFEA_IMAGE} \
    /bin/bash --rcfile /srv/.bashrc
