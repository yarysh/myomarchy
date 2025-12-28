#!/bin/bash

cp ../../omarchy/config/swayosd/config.toml configs/config.toml
cp ../../omarchy/config/swayosd/style.css configs/style.css && patch configs/style.css patches/style.patch
