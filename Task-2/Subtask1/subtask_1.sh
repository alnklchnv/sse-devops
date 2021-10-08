 awk -F "\"*;\"*" '{print $2}' labelled_newscatcher_dataset.csv | xargs -n 1 -P 100 wget -q -P results
