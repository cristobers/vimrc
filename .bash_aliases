# custom functions
function ../ { cd '..'; }
function ../../ { cd '../../'; }
function ../../../ { cd '../../../'; }

bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
