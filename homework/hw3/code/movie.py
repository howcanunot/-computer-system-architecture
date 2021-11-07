import random
import string


class Movie:
    def __init__(self, *args):
        self._name = ''
        self._release_year = 0
        if len(args) == 0:
            self.__read_random()
        else:
            self.__read_from_file(*args)

    def __read_from_file(self, name: str, release_year: int):
        self._name = name
        self._release_year = release_year

    def __read_random(self):
        self._name = ''.join(random.choice(string.ascii_lowercase) for _ in range(random.randint(1, 41)))
        self._release_year = 1950 + random.randint(0, 72)

    def _release_year_div_name(self) -> float:
        return self._release_year / len(self._name)
