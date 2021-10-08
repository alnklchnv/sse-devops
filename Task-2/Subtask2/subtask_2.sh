in="test.csv"
train="test.train.csv"
test="test.test.csv"
awk -v train="$train" -v test="$test" '{if(rand()<0.9) {print > train} else {print > test}}' $in
