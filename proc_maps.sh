#!/usr/bin/awk -f

BEGIN {
    startAddr = 0;
    endAddr   = 0;
    totalMem  = 0;
}

{
    startAddr = substr($1, 1, 8);
    endAddr   = substr($1, 10, 8);
    diffMem = strtonum("0x"endAddr) - strtonum("0x"startAddr);
    totalMem += diffMem;
    printf("%10ubtyes %7.2fkb %4.2fmb %s\n", diffMem, diffMem/1024.0, diffMem/1024.0/1024.0, $0);
}

END {
    printf("%10ubtyes %7.2fkb %4.2fmb\n", totalMem, totalMem/1024.0, totalMem/1024.0/1024.0);
}

