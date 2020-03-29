# -*- coding: utf-8 -*-

import re
from xkeysnail.transform import *

define_keymap(lambda wm_class: wm_class != 'Gnome-terminal', {
    K('LSuper-V'): K('C-V'),
    K('LSuper-X'): K('C-X'),
    K('LSuper-C'): K('C-C'),
    K('LSuper-F'): K('C-F'),
    K('LSuper-S'): K('C-S'),
    K('LSuper-Z'): K('C-Z'),
    K('LSuper-W'): K('C-W'),
    K('LSuper-T'): K('C-T'),
    K('LSuper-R'): K('C-R'),
    K('LSuper-Q'): K('C-Q'),
    K('LSuper-L'): K('C-L'),
    K('LSuper-A'): K('C-A')
}, 'non-terminal')

define_keymap(re.compile('Gnome-terminal'), {
    K('LSuper-V'): K('C-Shift-V'),
    K('LSuper-X'): K('C-Shift-X'),
    K('LSuper-C'): K('C-Shift-C'),
    K('LSuper-A'): K('C-A')
}, 'terminal')

define_multipurpose_modmap({
    Key.LEFT_ALT: [Key.MUHENKAN, Key.LEFT_ALT],
    Key.RIGHT_ALT: [Key.HENKAN, Key.RIGHT_ALT]
})
