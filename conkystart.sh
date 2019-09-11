#!/bin/bash
killall conky
conky -c ~/.conky/.conkyrc1 &
conky -c ~/.conky/.conkyrc2 &
