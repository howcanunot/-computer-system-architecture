echo "\nTest #1";
time /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/code/cmake-build-debug/hw1 -f /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/test01.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out01_1.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out01_2.txt;

echo "\nTest #2";
time /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/code/cmake-build-debug/hw1 -f /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/test02.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out02_1.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out02_2.txt;

echo "\nTest #3";
time /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/code/cmake-build-debug/hw1 -f /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/test03.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out03_1.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out03_2.txt;

echo "\nTest #4";
time /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/code/cmake-build-debug/hw1 -f /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/test04.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out04_1.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out04_2.txt;

echo "\nTest #5";
time /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/code/cmake-build-debug/hw1 -f /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/test05.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out05_1.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/out05_2.txt;


echo "\nRandom test #1";
time /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/code/cmake-build-debug/hw1 -n 100 /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/outrand01_1.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/outrand01_2.txt;

echo "\nRandom Test #2";
time /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/code/cmake-build-debug/hw1 -n 10000 /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/outrand02_1.txt /Users/mac/CLionProjects/computer-system-architecture/homework/hw1/tests/outrand02_2.txt;