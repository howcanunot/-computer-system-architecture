echo "Test #1";
time ./hw4/code/task -f ./hw4/tests/test01.txt ./hw4/tests/out01_1.txt ./hw4/tests/out01_2.txt

echo "Test #2";
time ./hw4/code/task -f ./hw4/tests/test02.txt ./hw4/tests/out02_1.txt ./hw4/tests/out02_2.txt;

echo "Test #3";
time ./hw4/code/task -f ./hw4/tests/test03.txt ./hw4/tests/out03_1.txt ./hw4/tests/out03_2.txt;

echo "Test #4";
time ./hw4/code/task -f ./hw4/tests/test04.txt ./hw4/tests/out04_1.txt ./hw4/tests/out04_2.txt;

echo "Test #5";
time ./hw4/code/task -f ./hw4/tests/test05.txt ./hw4/tests/out05_1.txt ./hw4/tests/out05_2.txt;


echo "Random test #1";
time ./hw4/code/task -n 1000 ./hw4/tests/outrand01_1.txt ./hw4/tests/outrand01_2.txt;

echo "Random Test #2";
time ./hw4/code/task -n 10000 ./hw4/tests/outrand02_1.txt ./hw4/tests/outrand02_2.txt;