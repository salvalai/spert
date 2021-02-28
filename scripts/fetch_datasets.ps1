$current_dir = Get-Location
$dest_dir = Join-Path -Path $current_dir -ChildPath "data/datasets"
#Write-Output $dest_dir

#wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/datasets/conll04/ -P ${curr_dir}/data/datasets/conll04
$conll04_dir = Join-Path -Path $dest_dir -ChildPath "conll04"
New-Item -Path $conll04_dir -ItemType Directory -Force
Invoke-WebRequest -Uri "http://lavis.cs.hs-rm.de/storage/spert/public/datasets/conll04/conll04_prediction_example.json" -OutFile "$conll04_dir\conll04_prediction_example.json"
Invoke-WebRequest -Uri "http://lavis.cs.hs-rm.de/storage/spert/public/datasets/conll04/conll04_dev.json" -OutFile "$conll04_dir\conll04_dev.json"
Invoke-WebRequest -Uri "http://lavis.cs.hs-rm.de/storage/spert/public/datasets/conll04/conll04_test.json" -OutFile "$conll04_dir\conll04_test.json"
Invoke-WebRequest -Uri "http://lavis.cs.hs-rm.de/storage/spert/public/datasets/conll04/conll04_train.json" -OutFile "$conll04_dir\conll04_train.json"
Invoke-WebRequest -Uri "http://lavis.cs.hs-rm.de/storage/spert/public/datasets/conll04/conll04_train_dev.json" -OutFile "$conll04_dir\conll04_train_dev.json"
Invoke-WebRequest -Uri "http://lavis.cs.hs-rm.de/storage/spert/public/datasets/conll04/conll04_types.json" -OutFile "$conll04_dir\conll04_types.json"

#wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/datasets/scierc/ -P ${curr_dir}/data/datasets/scierc
#wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/datasets/ade/ -P ${curr_dir}/data/datasets/ade