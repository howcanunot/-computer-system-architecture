#!/usr/bin/python3
import getopt
import sys
import time
from container import Container


def error_message():
    print("incorrect command line!\n"
          "  Waited:\n"
          "     command: -f infile outfile01 outfile02\n"
          "  Or:\n"
          "     command: -n number outfile01 outfile02\n")


def main(argv):
    if len(argv) != 4:
        error_message()
        return

    start = time.time()
    try:
        opt, args = getopt.getopt(argv, "n:f:")
    except getopt.GetoptError:
        error_message()
        return

    if opt[0][0] == '-n':
        container = Container(size=opt[0][1])
    else:
        container = Container(filename=opt[0][1])
    container.fill()

    container.print(args[0])
    container.shuffle()
    container.print(args[1])

    print("--- {} seconds ---\n\n".format(time.time() - start))


if __name__ == '__main__':
    main(sys.argv[1:])
