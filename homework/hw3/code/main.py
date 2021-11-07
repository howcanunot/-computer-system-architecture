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
        opt, args = getopt.getopt(argv, "f:n")
    except getopt.GetoptError:
        error_message()
        return

    container = Container(args[0])
    container.fill()

    container.print(args[1])
    container.shuffle()
    container.print(args[2])

    print("--- {} seconds ---".format(time.time() - start))


if __name__ == '__main__':
    main(sys.argv[1:])
