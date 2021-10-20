echo "Test #1";
time /home/canunot/repos/computer-system-architecture/homework/hw2/code/cmake-build-debug/hw2 -f /home/canunot/repos/computer-system-architecture/homework/hw2/tests/test01.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out01_1.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out01_2.txt;

echo "Test #2";
time /home/canunot/repos/computer-system-architecture/homework/hw2/code/cmake-build-debug/hw2 -f /home/canunot/repos/computer-system-architecture/homework/hw2/tests/test02.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out02_1.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out02_2.txt;

echo "Test #3";
time /home/canunot/repos/computer-system-architecture/homework/hw2/code/cmake-build-debug/hw2 -f /home/canunot/repos/computer-system-architecture/homework/hw2/tests/test03.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out03_1.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out03_2.txt;

echo "Test #4";
time /home/canunot/repos/computer-system-architecture/homework/hw2/code/cmake-build-debug/hw2 -f /home/canunot/repos/computer-system-architecture/homework/hw2/tests/test04.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out04_1.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out04_2.txt;

echo "Test #5";
time /home/canunot/repos/computer-system-architecture/homework/hw2/code/cmake-build-debug/hw2 -f /home/canunot/repos/computer-system-architecture/homework/hw2/tests/test05.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out05_1.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/out05_2.txt;


echo "Random test #1";
time /home/canunot/repos/computer-system-architecture/homework/hw2/code/cmake-build-debug/hw2 -n 100 /home/canunot/repos/computer-system-architecture/homework/hw2/tests/outrand01_1.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/outrand01_2.txt;

echo "Random Test #2";
time /home/canunot/repos/computer-system-architecture/homework/hw2/code/cmake-build-debug/hw2 -n 1000 /home/canunot/repos/computer-system-architecture/homework/hw2/tests/outrand02_1.txt /home/canunot/repos/computer-system-architecture/homework/hw2/tests/outrand02_1.txt;