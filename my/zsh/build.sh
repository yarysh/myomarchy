#!/bin/bash

cp ../../omarchy/default/bash/aliases configs/aliases
patch configs/aliases patches/aliases.patch

cp ../../omarchy/default/bash/envs configs/envs

cp ../../omarchy/default/bash/functions configs/functions
patch configs/functions patches/functions.patch

cp ../../omarchy/default/bash/init configs/init
patch configs/init patches/init.patch
