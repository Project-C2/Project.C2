tag @s add havingChat3-1Item
tag @s add havingChat3-2Item
tag @s add havingChat3-3Item
tag @s add havingChat3-4Item
tag @s add havingChat3-5Item
tag @s add havingChat3-6Item
tag @s add havingChat3-7Item
tag @s add havingChat3-8Item
tag @s add havingChat3-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:record_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"離席します\"}"}}}]}] remove havingChat3-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:record_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"ジョブの使い方がわからん\"}"}}}]}] remove havingChat3-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:record_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"バグった\"}"}}}]}] remove havingChat3-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:record_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"ラグがひどい\"}"}}}]}] remove havingChat3-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:record_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"迷った\"}"}}}]}] remove havingChat3-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:record_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"勝てる気がせん\"}"}}}]}] remove havingChat3-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:record_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"負ける気がせん\"}"}}}]}] remove havingChat3-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:record_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"死に過ぎた...\"}"}}}]}] remove havingChat3-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:record_blocks",Count:1b,tag:{display:{Name:"{\"text\":\"今回は相性が良くないな\"}"}}}]}] remove havingChat3-9Item

execute if entity @s[tag=havingChat3-1Item] run function project-c:radiochat/tab3/chat1
execute if entity @s[tag=havingChat3-2Item] run function project-c:radiochat/tab3/chat2
execute if entity @s[tag=havingChat3-3Item] run function project-c:radiochat/tab3/chat3
execute if entity @s[tag=havingChat3-4Item] run function project-c:radiochat/tab3/chat4
execute if entity @s[tag=havingChat3-5Item] run function project-c:radiochat/tab3/chat5
execute if entity @s[tag=havingChat3-6Item] run function project-c:radiochat/tab3/chat6
execute if entity @s[tag=havingChat3-7Item] run function project-c:radiochat/tab3/chat7
execute if entity @s[tag=havingChat3-8Item] run function project-c:radiochat/tab3/chat8
execute if entity @s[tag=havingChat3-9Item] run function project-c:radiochat/tab3/chat9