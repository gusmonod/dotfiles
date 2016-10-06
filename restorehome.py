#!/usr/bin/env python

import os
import re
import shutil
import sys

if sys.version_info.major == 3:
  raw_input = input

for filename in os.listdir('.'):
  if re.match(r'^home\.[a-z-]+$', filename):
    destination = '~/' + filename[4:]
    answer = raw_input('Overwrite {} (y/n) [n]: '.format(destination))
    if answer == 'y':
      print('cp ' + filename + ' ' + destination)
      shutil.copyfile(filename, destination)
    else:
      print('ok, ignoring')

