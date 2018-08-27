#ifdef _MSC_VER
#  ifdef _WIN64
#    define CONFIG_64
#    include "mpdecimal64vc.h"
#  else
#    define CONFIG_32
#    include "mpdecimal32vc.h"
#  endif
#else
#  include "mpdecimal_cc.h"
#endif
