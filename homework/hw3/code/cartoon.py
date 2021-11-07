from movie import Movie
from enum import Enum
import random


class Cartoon(Movie):

    def __init__(self, *args):
        if len(args) > 0:
            super(Cartoon, self).__init__(*args[:-1])
            self._type = Cartoon(args[-1])
        else:
            super(Cartoon, self).__init__()
            self._type = CartoonType(random.randint(1, 3))

    def __str__(self):
        return """[Cartoon]:
              -name: {0}
              -release year: {1}
              -type: {2}
              -function result: {3}""".format(self._name, self._release_year,
                                              self._type, self._release_year_div_name())


class CartoonType(Enum):
    HAND = 1
    PUPPET = 2
    PLASTICINE = 3
