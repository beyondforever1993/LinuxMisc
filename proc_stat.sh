#!/usr/bin/awk -f

{
    #printf("pid: %d\n", $1);
    #printf("comm: %s\n", $2);
    #printf("state: %c\n", $3);
    #printf("ppid: %d\n", $4);
    #printf("pgrp: %d\n", $5);
    #printf("session: %d\n", $6);
    #printf("tty_nr: %d\n", $7);
    #printf("tpgid: %d\n", $8);
    #printf("flags: %u\n", $9);
    #printf("minflt: %lu\n", $10);
    #printf("cminflt: %lu\n", $11);
    #printf("cmajflt: %lu\n", $12);
    printf("vsize: %lu bytes %fkb %fmb\n", $23, $23/1024.0, $23/1024.0/1024.0);
    printf("rss: %lu pages %lu kb\n", $24, $24*4);
}
