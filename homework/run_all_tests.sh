echo "Test #1. Empty test"
./hw5/code/cmake-build-debug/hw5 -f ./hw5/tests/in1.txt ./hw5/tests/out1.txt
echo "Test #2"
./hw5/code/cmake-build-debug/hw5 -f ./hw5/tests/in2.txt ./hw5/tests/out2.txt
echo "Random test #1"
./hw5/code/cmake-build-debug/hw5 -n 1 ./hw5/tests/rand_out1.txt
echo "Random test #2"
./hw5/code/cmake-build-debug/hw5 -n 30 ./hw5/tests/rand_out2.txt
echo "Random test #3"
./hw5/code/cmake-build-debug/hw5 -n 150 ./hw5/tests/rand_out3.txt