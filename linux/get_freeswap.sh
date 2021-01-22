#!/bin/bash
free -m | grep Swap | awk '{printf "%2.f%%",$3/$2*100}'
