#!/usr/bin/env python

import glob
import os
import re
import sys

if sys.version_info.major == 3:
  raw_input = input

def handle_file(filename):
  destination = os.path.expanduser(os.path.join('~', filename))
  try:
    # os.link(filename, destination)
    raise ''
  except:
    answer = raw_input('Overwrite {} (y/n) [n]: '.format(destination))
    if answer == 'y':
      pass
      print('rm {}'.format(destination))
      print('ln {} {}'.format(filename, destination))
      # os.remove(destination)
      # os.link(filename, destination)
    else:
      print('ok, ignoring')

for current_dir, _, filenames in os.walk('.'):
  if not current_dir.startswith('./.git'):
    for filename in filenames:
      if os.path.realpath(filename) != os.path.realpath(__file__):
        filename = os.path.join(current_dir, filename)[2:]
        # handle_file(filename)
        print(filename)

