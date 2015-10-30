#!/usr/bin/env bash
set -ex

git clone $REPO cpskin-test
cd cpskin-test
/opt/python2.7.8/bin/python bootstrap.py
bin/buildout -c jenkins.cfg
Xvfb :1 -screen 0 1024x768x16 &> xvfb.log  &
DISPLAY=:1.0
export DISPLAY
bin/test
bin/code-analysis
bin/code-analysis-coverage