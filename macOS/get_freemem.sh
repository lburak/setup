#!/bin/bash
memory_pressure | grep percentage | awk '{print $5}'
