from game_movie import GameMovie
from cartoon import Cartoon
from documentary import Documentary
import random


def get_from_file(movie_data: list):
    movie_type = movie_data[0]
    if movie_type == 'game_movie':
        return GameMovie(*movie_data[1:])
    elif movie_type == 'cartoon':
        return Cartoon(*movie_data[1:])
    elif movie_type == 'documentary':
        return Documentary(*movie_data[1:])
    else:
        print("Unknown movie type")


def get_random():
    movie_type = random.choice(['game_movie', 'cartoon', 'documentary'])
    if movie_type == 'game_movie':
        return GameMovie()
    elif movie_type == 'cartoon':
        return Cartoon()
    else:
        return Documentary()