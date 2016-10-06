#!/usr/bin/env python

import glob
import os
import re
import sys

if sys.version_info.major == 3:
  raw_input = input

def link_file(filename):
  destination = os.path.expanduser(os.path.join('~', filename))
  try:
    os.link(filename, destination)
  except:
    answer = raw_input('Overwrite {} (y/n) [n]: '.format(destination))
    if answer == 'y':
      os.remove(destination)
      os.link(filename, destination)

for current_dir, _, filenames in os.walk('.'):
  if not current_dir.startswith('./.git'):
    for filename in filenames:
      if os.path.realpath(filename) != os.path.realpath(__file__):
        filename = os.path.join(current_dir, filename)[2:]
        print(filename)
        link_file(filename)

