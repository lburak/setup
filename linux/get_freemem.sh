#!/bin/bash
free -m | grep Mem | awk '{printf "%2.f%%",$3/$2*100}'
