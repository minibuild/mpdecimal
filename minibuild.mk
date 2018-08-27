module_type = 'lib-static'
module_name = 'mpdecimal'

src_search_dir_list = ['vendor/libmpdec']
asm_search_dir_list = ['vendor/libmpdec']
include_dir_list = ['include']

build_list = [
  'basearith.c',
  'constants.c',
  'context.c',
  'convolute.c',
  'crt.c',
  'difradix2.c',
  'fnt.c',
  'fourstep.c',
  'io.c',
  'memory.c',
  'mpdecimal.c',
  'numbertheory.c',
  'sixstep.c',
  'transpose.c',
]

definitions_linux_x86    = ['ASM', 'PPRO']
definitions_linux_x86_64 = ['ASM']
definitions_linux_arm    = ['ANSI']
definitions_linux_arm64  = ['ANSI']

definitions_macosx  = ['ASM']

definitions_windows_x86 = ['PPRO']

if BUILDSYS_TOOLSET_NAME == 'msvs':
    definitions_windows = ['MASM', '_CRT_SECURE_NO_WARNINGS']
    build_list_windows_x86_64 = ['vcdiv64.asm']
else:
    definitions_windows = ['ASM']
    disabled_warnings = ['unknown-pragmas']