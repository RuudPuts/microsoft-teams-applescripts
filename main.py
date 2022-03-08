#!/usr/bin/python3

from jinja2 import Environment, FileSystemLoader
import os
import shutil

TEMP_DIR = '.temp'

# Define the actions
# All actions are executed with keyboard shortcut ⌘ + Shift + hotkey
# The description is used in the file of the compiled AppleScript
actions = [
  {
    'description': 'toggle audio',
    'hotkey': 'M'
  },
  {
    'description': 'toggle video',
    'hotkey': 'O'
  },
  {
    'description': 'toggle raise hand',
    'hotkey': 'K'
  },
  {
    'description': 'leave meeting',
    'hotkey': 'H'
  }
]

# Load the stencil in Jinja2
file_loader = FileSystemLoader('templates')
env = Environment(loader=file_loader, trim_blocks=True, lstrip_blocks=True)
template = env.get_template('action.stencil')

# Create the temporary directory if not exists
if not os.path.exists(TEMP_DIR):
  os.makedirs(TEMP_DIR)

# Loop through all actions
for action in actions:
  # Generate the AppleScript from the stencil and store in temp directory
  filename = f'microsoft-teams-{action["description"].replace(" ", "-")}'
  script_file = os.path.join(TEMP_DIR, f'{filename}.applescript')
  compiled_file = f'{filename}.scpt'

  with open(script_file, 'w') as file:
    rendered_template = template.render(action=action)
    file.write(rendered_template)

  # Compile the AppleScript
  os.system(f'osacompile -o {compiled_file} {script_file}')

# Remove the temporary directory
if os.path.exists(TEMP_DIR):
  shutil.rmtree(TEMP_DIR)