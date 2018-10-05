runs=5

function runscilla
{
    n=$1
    i=1
    while [[ $i -le $runs ]]
    do
        ../../../../bin/scilla-runner -init init.json -istate state_${n}.json -imessage message.json -o output.json -iblockchain blockchain.json -i contract.scilla -libdir ../../../..//src/stdlib -gaslimit 900000
        
        i=$(($i + 1))
    done
}

function runexp
{
    n=$1
    t=`(time runscilla ${1}) 2>&1 | tee -a timer-log.txt | grep "real" | cut -d $'\t' -f 2`
    echo "Time for $runs runs of list size $1: $t"
}

rm timer-log.txt
runexp 1
runexp 100
runexp 200
runexp 400
runexp 600
runexp 1000
runexp 1505
runexp 2001
runexp 2500
runexp 2999
