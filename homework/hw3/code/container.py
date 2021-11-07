import random
from movie import Movie
from input import get_from_file, get_random


class Container:
    def __init__(self, size="-1", filename=None):
        self.__size = int(size)
        self.__filename = filename
        self.__cont = []

    def fill(self):
        if self.__size == "-1":
            with open(self.__filename, 'r') as file:
                data = file.readlines()
                self.__size = len(data)
                self.__cont = [get_from_file(line.split(' ')) for line in data]
        else:
            self.__cont = [get_random() for _ in range(self.__size)]

    def print(self, filename):
        with open(filename, 'w') as file:
            for movie in self.__cont:
                file.write(str(movie) + "\n")

    def quick_sort(self, cont: list) -> list:
        if len(cont) <= 1:
            return cont

        pivot = cont[random.randint(0, len(cont) - 1)]
        less = [num for num in cont if num < pivot]
        equal = [num for num in cont if num == pivot]
        greater = [num for num in cont if num > pivot]

        return self.quick_sort(less) + equal + self.quick_sort(greater)

    def shuffle(self):
        self.__cont = self.quick_sort(self.__cont)

