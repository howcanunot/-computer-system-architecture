#!/usr/bin/python3
import getopt
import sys
from container import Container


def error_message():
    print("incorrect command line!\n"
          "  Waited:\n"
          "     command: -f infile outfile01 outfile02\n"
          "  Or:\n"
          "     command: -n number outfile01 outfile02\n")


def main(argv):
    if len(argv) != 3:
        error_message()
        return

    try:
        opt, args = getopt.getopt(argv, "f:n")
    except getopt.GetoptError:
        error_message()
        return

    container = Container(args[0])
    container.fill()

    container.print(args[1])


if __name__ == '__main__':
    main(sys.argv[1:])
