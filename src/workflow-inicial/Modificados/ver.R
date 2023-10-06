require("data.table")
dataset <- fread("~/buckets/b1/exp/TS6410/dataset_train_final.csv.gz")
dataset[,.N,list(foto_mes,clase_ternaria)]