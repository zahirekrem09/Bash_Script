#!/bin/bash

sayi =0 
while (( sayi<=10))
do
    sleep 1
    echo $sayi
    ((sayi++))
done


# 1.adım   bash   -x ./hataayiklama.sh
# 2.adım  en bastaki etiketi   #!/bin/bash -x  seklinde yazarak
# 3. adım istenilen adımda hataları ayıklamak icin istenilen satıra 
    # set -x  bakılacak kısım  set +x   aralıktadi hataları ayıklara.
