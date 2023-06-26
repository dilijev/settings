#!/usr/bin/python3

# This script was built via ChatGPT prompting and a small amount of manual
# editing.
#
# I use a lot of git aliases as well as the [pretty] configuration block, but
# I'd like to be able to share my commands as one-liners with collaborators
# without having them to have the same configuration as me. To achieve this,
# I'd like a tool that converts my git commands filled with aliases and configs
# to vanilla git commands that can be run on any computer with no configuration
# required.
#
# Please write a script to do this for me.
#
# Extend the above script with a conversion for --pretty= commands where pretty formatting has been specified in the config file.
#
# For example:
#
# If the command line contains
# --pretty=crisp
#
# And the config file contains
# [pretty]
# crisp=formatstring
#
# the command line should contain --pretty=format:"formatstring"
#
# Please add a main to this function so that I can call it as follows:
# python gitcmd.py git log --pretty=crisp
#
# ---
#
# Missing import fixed manually.
# Some small bug and semantics fixes via additional prompting and
# manual editing to put things together.
# Additional prompting and manual edits to apply --pretty= expansion
# after alias expansion.

import re
import subprocess
import sys


def get_alias_command(alias):
    command = subprocess.run(['git', 'config', '--get', f'alias.{alias}'], capture_output=True, text=True)
    return command.stdout.strip()


def get_pretty_format(format_name):
    command = subprocess.run(['git', 'config', '--get', f'pretty.{format_name}'], capture_output=True, text=True)
    return command.stdout.strip()


def convert_pretty_format(part):
    pretty_format = re.search(r'--pretty=(.*)', part).group(1)
    converted_format = get_pretty_format(pretty_format)
    return '--pretty=format:"{}"'.format(converted_format)


def convert_pretty_format_command(command):
    parts = command.split()
    converted_parts = []

    for part in parts:
        if part.startswith('--pretty=') and not part.startswith('--pretty=format:'):
            converted_parts.append(convert_pretty_format(part))
        else:
            converted_parts.append(part)

    return ' '.join(converted_parts)


def convert_git_commands(command):
    parts = command.split()

    if len(parts) >= 2:
        alias_command = get_alias_command(parts[1])
        if alias_command:
            parts[1] = alias_command

    converted_command = ' '.join(parts)
    return convert_pretty_format_command(converted_command)


def convert_script(script):
    lines = script.splitlines()
    converted_lines = []

    for line in lines:
        converted_lines.append(convert_git_commands(line))

    return '\n'.join(converted_lines)


def test():
    print(get_alias_command('lf'))

    # Example usage
    script_with_aliases = '''
    git co feature_branch
    git lg
    git branch --merged
    git lf
    git log --pretty=crisp
    '''

    print(script_with_aliases)

    converted_script = convert_script(script_with_aliases)
    print(converted_script)


def main():
    if sys.argv[1] == 'test':
        test()
        exit(0)

    # Check if any command-line arguments were provided
    if len(sys.argv) < 2:
        print("Usage: python3 gitcmd.py <git_command>")
        return

    # Concatenate command-line arguments to form the Git command
    git_command = ' '.join(sys.argv[1:])

    # Convert the Git command and print the result
    converted_command = convert_git_commands(git_command)
    print(converted_command)


if __name__ == '__main__':
    main()
