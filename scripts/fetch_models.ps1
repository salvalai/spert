$current_dir = Get-Location
$dest_dir = Join-Path -Path $current_dir -ChildPath "data/models"
#Write-Output $dest_dir

#wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/models/conll04/ -P ${curr_dir}/data/models/conll04
$conll04_dir = Join-Path -Path $dest_dir -ChildPath "conll04"
New-Item -Path $conll04_dir -ItemType Directory -Force
Invoke-WebRequest -Uri "http://lavis.cs.hs-rm.de/storage/spert/public/models/conll04/config.json" -OutFile "$conll04_dir\config.json"
Invoke-WebRequest -Uri "http://lavis.cs.hs-rm.de/storage/spert/public/models/conll04/pytorch_model.bin" -OutFile "$conll04_dir\pytorch_model.bin"
Invoke-WebRequest -Uri "http://lavis.cs.hs-rm.de/storage/spert/public/models/conll04/vocab.txt" -OutFile "$conll04_dir\vocab.txt"

#wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/models/scierc/ -P ${curr_dir}/data/models/scierc
#wget -r -nH --cut-dirs=100 --reject "index.html*" --no-parent http://lavis.cs.hs-rm.de/storage/spert/public/models/ade/ -P ${curr_dir}/data/models/ade
