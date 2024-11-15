#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# By yongcong.wang @ 15/11/2024
import os
import ycm_core

flags = [
    '-std=c++17',
    '-x', 'c++',
    '-I', '.',
    '-I', './include',
    '-I', '/usr/include',
    '-I', '/usr/local/include'
]

compilation_database_folder = 'build'

if os.path.exists('build/compile_commands.json'):
    compilation_database_folder = os.path.join(os.getcwd(), 'build')

if compilation_database_folder:
    database = ycm_core.CompilationDatabase(compilation_database_folder)
else:
    database = None

def MakeRelativePathsInFlagsAbsolute(flags, working_directory):
    if not working_directory:
        return list(flags)
    new_flags = []
    make_next_absolute = False
    for flag in flags:
        if make_next_absolute:
            make_next_absolute = False
            new_flags.append(os.path.join(working_directory, flag))
            continue
        if flag == '-I' or flag == '-isystem':
            make_next_absolute = True
        elif flag.startswith('-I') or flag.startswith('-isystem'):
            path = flag[2:]
            new_flags.append('-I' + os.path.join(working_directory, path))
        else:
            new_flags.append(flag)
    return new_flags

def FlagsForFile(filename, **kwargs):
    if database:
        compilation_info = database.GetCompilationInfoForFile(filename)
        if not compilation_info.compiler_flags_:
            return None
        final_flags = MakeRelativePathsInFlagsAbsolute(
            compilation_info.compiler_flags_,
            compilation_info.compiler_working_dir_)
    else:
        relative_to = os.path.dirname(os.path.abspath(__file__))
        final_flags = MakeRelativePathsInFlagsAbsolute(flags, relative_to)

    return {
        'flags': final_flags,
        'do_cache': True
    }

