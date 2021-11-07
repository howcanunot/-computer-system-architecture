from movie import Movie
import random


class Documentary(Movie):
    def __init__(self, *args):
        if len(args) > 0:
            super(Documentary, self).__init__(*args[:-1])
            self._duration = args[-1]
        else:
            super(Documentary, self).__init__()
            self._duration = random.randint(1950, 2022)

    def __str__(self):
        return """[Documentary]:
              -name: {0}
              -release year: {1}
              -duration: {2}
              -function result: {3}""".format(self._name, self._release_year,
                                              self._duration, self._release_year_div_name())
