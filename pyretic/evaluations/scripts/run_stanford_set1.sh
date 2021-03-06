#declare -a OPT_FLAGS_ARR=("-d -l -i -s 16 -c -g" "-d -l -i -s 16 -c" "-d -l -i -s 16" "-d -l -i" "-d -l" "-d" " ")
declare -a OPT_FLAGS_ARR=("-d -l -i -s 16 -c -g")


TEST='traffic_matrix_stanford'

i=8
DCR=1
for OPT_FLAGS in "${OPT_FLAGS_ARR[@]}"
do
    echo "Start Time"
    date
    sudo /opt/pypy-2.4.0/bin/pypy eval_compilation.py -r -u $OPT_FLAGS -t $TEST -f ./stanford/traffic_matrix/tm_$i/
    i=$((i - DCR ))
    sleep 10
done

TEST='path_loss_stanford'

i=8
DCR=1

for OPT_FLAGS in "${OPT_FLAGS_ARR[@]}"
do
    echo "Start Time"
    date
    sudo /opt/pypy-2.4.0/bin/pypy eval_compilation.py -r -u $OPT_FLAGS -t $TEST -f ./stanford/path_loss/pl_$i/
    i=$((i - DCR ))
    sleep 10
done



TEST='firewall_stanford'

i=8
DCR=1

for OPT_FLAGS in "${OPT_FLAGS_ARR[@]}"
do
    echo "Start Time"
    date

    sudo /opt/pypy-2.4.0/bin/pypy eval_compilation.py -r -u $OPT_FLAGS -t $TEST -f ./stanford/firewall/fl_$i/
    i=$((i - DCR ))
    sleep 10
done

TEST='ddos_stanford'

i=8
DCR=1
for OPT_FLAGS in "${OPT_FLAGS_ARR[@]}"
do
    echo "Start Time"
    date

    sudo /opt/pypy-2.4.0/bin/pypy eval_compilation.py -r -u $OPT_FLAGS -t $TEST -f ./stanford/ddos/dd_$i/
    i=$((i - DCR ))
    sleep 10
done


TEST='slice_stanford'

i=8
DCR=1
for OPT_FLAGS in "${OPT_FLAGS_ARR[@]}"
do
    echo "Start Time"
    date

    sudo /opt/pypy-2.4.0/bin/pypy eval_compilation.py -r -u $OPT_FLAGS -t $TEST -f ./stanford/slice_2/sl_$i/
    i=$((i - DCR ))
    sleep 10
done

TEST='congested_stanford'

i=8
DCR=1
for OPT_FLAGS in "${OPT_FLAGS_ARR[@]}"
do
    echo "Start Time"
    date

    sudo /opt/pypy-2.4.0/bin/pypy eval_compilation.py -r -u $OPT_FLAGS -t $TEST -f ./stanford/congested_link/cl_$i/
    i=$((i - DCR ))
    sleep 10
done

