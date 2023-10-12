#!/bin/bash
rivalcfg --battery-level | tr -d '[:blank:]' | awk -F] '{print $2}'
