tag @s add havingChat6-1Item
tag @s add havingChat6-2Item
tag @s add havingChat6-3Item
tag @s add havingChat6-4Item
tag @s add havingChat6-5Item
tag @s add havingChat6-6Item
tag @s add havingChat6-7Item
tag @s add havingChat6-8Item
tag @s add havingChat6-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:record_mall",Count:1b,tag:{display:{Name:"{\"text\":\"近距離職で行く\"}"}}}]}] remove havingChat6-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:record_mall",Count:1b,tag:{display:{Name:"{\"text\":\"遠距離職で行く\"}"}}}]}] remove havingChat6-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:record_mall",Count:1b,tag:{display:{Name:"{\"text\":\"支援職で行く\"}"}}}]}] remove havingChat6-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:record_mall",Count:1b,tag:{display:{Name:"{\"text\":\"慣れない職を使う\"}"}}}]}] remove havingChat6-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:record_mall",Count:1b,tag:{display:{Name:"{\"text\":\"右から行く\"}"}}}]}] remove havingChat6-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:record_mall",Count:1b,tag:{display:{Name:"{\"text\":\"左から行く\"}"}}}]}] remove havingChat6-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:record_mall",Count:1b,tag:{display:{Name:"{\"text\":\"中央から行く\"}"}}}]}] remove havingChat6-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:record_mall",Count:1b,tag:{display:{Name:"{\"text\":\"誰か支援職になってくれ\"}"}}}]}] remove havingChat6-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:record_mall",Count:1b,tag:{display:{Name:"{\"text\":\"誰かにくっついていく\"}"}}}]}] remove havingChat6-9Item

execute if entity @s[tag=havingChat6-1Item] run function project-c:radiochat/tab6/chat1
execute if entity @s[tag=havingChat6-2Item] run function project-c:radiochat/tab6/chat2
execute if entity @s[tag=havingChat6-3Item] run function project-c:radiochat/tab6/chat3
execute if entity @s[tag=havingChat6-4Item] run function project-c:radiochat/tab6/chat4
execute if entity @s[tag=havingChat6-5Item] run function project-c:radiochat/tab6/chat5
execute if entity @s[tag=havingChat6-6Item] run function project-c:radiochat/tab6/chat6
execute if entity @s[tag=havingChat6-7Item] run function project-c:radiochat/tab6/chat7
execute if entity @s[tag=havingChat6-8Item] run function project-c:radiochat/tab6/chat8
execute if entity @s[tag=havingChat6-9Item] run function project-c:radiochat/tab6/chat9