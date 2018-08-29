#!/usr/bin/python

from subprocess import call
import os

TMD_IP = [ 
    ("192.168.10.2", "MK3"),
    ("192.168.2.2", "MK5")
]

# Stream redirection
devnull = open(os.devnull, "w")

def pingTmd(tmd):
    return True if call( ["ping", tmd[0], "-c", "1"], stdout=devnull, stderr=devnull ) == 0 else False

def main():
    out = ""
    conn = False
    for tmd in TMD_IP:
        if pingTmd(tmd):
            out += tmd[1] + " "
            conn = True

    if conn:
        print out.rstrip()
        print 
        print "00FF00"
    else:
        print "No TMD found"
        print 
        print "FF0000"

main()
