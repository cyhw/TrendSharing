nW = (1000 1500 2000 2500 3000)
batch_period = (5 10 15 20 25)

algo=$1

echo 'varying nW'
for w in ${nW[@]}
  do
    echo $w
    java -jar cainiao.jar $w ./dataset/cainiao/node.csv ./dataset/cainiao/order.txt ./dataset/cainiao/sample.txt $algo ${batch_period[2]} &
  done

echo 'varying batch_period'
for period in ${batch_period[@]}
  do
    if [ $period != ${batch_period[2]} ];then
      echo $period
      java -jar cainiao.jar ${nW[2]} ./dataset/cainiao/node.csv ./dataset/cainiao/order.txt ./dataset/cainiao/sample.txt $algo $period &
    fi
  done