#!/bin/bash

rivalcfg --battery-level | tr ' ' '\a' | awk -F'\a' '{print $3}'
