tag @s add havingChat1-1Item
tag @s add havingChat1-2Item
tag @s add havingChat1-3Item
tag @s add havingChat1-4Item
tag @s add havingChat1-5Item
tag @s add havingChat1-6Item
tag @s add havingChat1-7Item
tag @s add havingChat1-8Item
tag @s add havingChat1-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:record_13",Count:1b,tag:{display:{Name:"{\"text\":\"���ӂ���\"}"}}}]}] remove havingChat1-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:record_13",Count:1b,tag:{display:{Name:"{\"text\":\"���܂Ȃ�\"}"}}}]}] remove havingChat1-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:record_13",Count:1b,tag:{display:{Name:"{\"text\":\"��������\"}"}}}]}] remove havingChat1-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:record_13",Count:1b,tag:{display:{Name:"{\"text\":\"�C����\"}"}}}]}] remove havingChat1-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:record_13",Count:1b,tag:{display:{Name:"{\"text\":\"�_����\"}"}}}]}] remove havingChat1-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:record_13",Count:1b,tag:{display:{Name:"{\"text\":\"��낵������\"}"}}}]}] remove havingChat1-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:record_13",Count:1b,tag:{display:{Name:"{\"text\":\"��������B\"}"}}}]}] remove havingChat1-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:record_13",Count:1b,tag:{display:{Name:"{\"text\":\"�悭�����\"}"}}}]}] remove havingChat1-8Item 
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:record_13",Count:1b,tag:{display:{Name:"{\"text\":\"�O�b�W���u\"}"}}}]}] remove havingChat1-9Item

execute if entity @s[tag=havingChat1-1Item] run function project-c:radiochat/tab1/chat1
execute if entity @s[tag=havingChat1-2Item] run function project-c:radiochat/tab1/chat2
execute if entity @s[tag=havingChat1-3Item] run function project-c:radiochat/tab1/chat3
execute if entity @s[tag=havingChat1-4Item] run function project-c:radiochat/tab1/chat4
execute if entity @s[tag=havingChat1-5Item] run function project-c:radiochat/tab1/chat5
execute if entity @s[tag=havingChat1-6Item] run function project-c:radiochat/tab1/chat6
execute if entity @s[tag=havingChat1-7Item] run function project-c:radiochat/tab1/chat7
execute if entity @s[tag=havingChat1-8Item] run function project-c:radiochat/tab1/chat8
execute if entity @s[tag=havingChat1-9Item] run function project-c:radiochat/tab1/chat9