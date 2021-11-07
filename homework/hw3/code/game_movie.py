from movie import Movie
import random
import string


class GameMovie(Movie):
    def __init__(self, *args):
        if len(args) > 0:
            super(GameMovie, self).__init__(*args[:-1])
            self._director_name = args[-1]
        else:
            super(GameMovie, self).__init__()
            self._director_name = ''.join(random.choice(string.ascii_lowercase)
                                          for _ in range(random.randint(1, 41)))

    def __str__(self):
        return """[Game Movie]:
              -name: {0}
              -release year: {1}
              -director name: {2}
              -function result: {3}\n""".format(self._name, self._release_year,
                                              self._director_name, self._release_year_div_name())
