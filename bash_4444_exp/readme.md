ex:1
logfile dosyasında [444] gecen ifadeler userler bunları bulun.(grep)

ex:2
ex:1 ile ulastıgımız verilerden;(grep ve awk komutlarını kullanarak)
date_times(tarih verileri arasında bosluk olucak)
messages
usernames   adında uc dosyaya ilgili verileri cekin.

ex:3
#while loop
usernames dosyasındaki kullanıcı adlarının group adını ayıkla

sed komutu :https://ceaksan.com/tr/sed-komutu/
awk komutu: https://medium.com/@gokhansengun/linux-metin-i%C5%9Fleme-ara%C3%A7lar%C4%B1-awk-sed-ve-di%C4%9Ferleri-d53b27ab692b

ex:4 : daha once yaptıgımız örnekte bu sefer user ile group arasına virgul koyarak user_group_cvs adlı dosyaya yazdır.(sed kullananrak)

ex:5
1. extract group name corresponding to each user from user_groups.txt and 
   store it in a variable named $group( user_groups.txt dosyasından her kullanıcıya karşılık gelen grup adını ayıklayın ve $group adlı bir değişkende saklayın)

2.extract the group description file name using $group from group_desc/ and
  store it in a variable named $group_filaname (group_desc / dizininden $group komutunu kullanarak grup açıklama dosyası adını ayıklayın ve  group_desc/ dizininden  dosyaları $group degikenini kullananak listele ve $group_filaname adında bir değişkende saklayın)(ls kullanarak)

3. find the id of the group usuing $group_filaname in $group_id  ( $group_filaname dosyasını  kullarak group_id leri ayıkla ve  $group_id  adında bir değişkende saklayın)


ex:6

function get_group_attributes_by_key{
 input: filepath , attribute  input olarak bu iki degiskeni alsın.
 extract  the attribute from file path
 outputs are written in a file named the same as attribute
(attributeleri dosya yolunda bulunan dosyalarından  ayıkla çıktıları attribute ile  aynı adlı bir dosyada yazılsın)
}

function find_group_attributes{
 input: the file name of the group  in group_desc/   input olarak  dizinindeki group adlarını alsın($group_filaname) alsın.
call the function get_group_attributes_by_key for each attribute 
 attributes are desc,tasks,feature
(get_group_attributes_by_key functionunu kullanarak attribute ilgili özellikleri desc,tasks,feature adında dosyaya yazdırsın.)
}


ex7:
add headers to final_cvs:date and time,user,group,group id,message,group tasks,group features,group description
merge all extracted files in final_cvs
