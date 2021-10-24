# CSA - Homework 2

Савко Богдан БПИ203

Вариант 7, 8

## Обобщенный артефакт
Фильм:

название - char*
от 1 до 40 байтов

год выпуска - int
4 байта

## Базовые альтернативы (уникальные параметры, задающие отличительные альтернатив)
- Игровые фильмы

имя режисёра - char* от 1 до 40 байтов

- Мультфильмы

способ создание - enum (кукольный, нарисованный, пластилинновый) 4 байта
- Документальные

длительность в минутах - int 4 байта

## Общие для всех альтернатив функции
Частное от деления года выхода фильма
на количество
символов в названии - double 8 байт

## Метрики

- 7 интерфейсных модулей (.h) - 2.26 Кб
- 6 модулей реализации (.cpp) - 7.6 Кб
- файлы вывода (.txt) - 2.41 Мб


Время выполнения программы находится в README.md в tests/

Для запуска тестом нужно ввести команду "source run_all_tests.sh" из директории homework

## Сравнение с предыдущей реализацией
По сравнению с процедурной реализацией код претерпел несильные изменения. Все абстрации вынесены в отдельные классы, которые имеют общего наследника movie.
Тесты показывают, что ооп реализация работает немного быстрее(на самом большом тесте).