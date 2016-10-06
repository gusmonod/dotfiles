#!/usr/bin/env python

import os
import re
import sys

if sys.version_info.major == 3:
  raw_input = input

for filename in os.listdir('.'):
  if re.match(r'^home\.[a-z-]+$', filename) and os.path.isfile(filename):
    destination = os.path.expanduser('~/' + filename[4:])
    try:
      os.link(filename, destination)
    except:
      answer = raw_input('Overwrite {} (y/n) [n]: '.format(destination))
      if answer == 'y':
        os.remove(destination)
        os.link(filename, destination)
      else:
        print('ok, ignoring')

