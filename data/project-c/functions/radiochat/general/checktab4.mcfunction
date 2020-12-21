tag @s add havingChat4-1Item
tag @s add havingChat4-2Item
tag @s add havingChat4-3Item
tag @s add havingChat4-4Item
tag @s add havingChat4-5Item
tag @s add havingChat4-6Item
tag @s add havingChat4-7Item
tag @s add havingChat4-8Item
tag @s add havingChat4-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:record_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"よろしく頼む\"}"}}}]}] remove havingChat4-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:record_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"感謝する\"}"}}}]}] remove havingChat4-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:record_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"すまない\"}"}}}]}] remove havingChat4-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:record_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"了解した\"}"}}}]}] remove havingChat4-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:record_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"任せた\"}"}}}]}] remove havingChat4-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:record_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"ダメだ\"}"}}}]}] remove havingChat4-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:record_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"やったぜ。\"}"}}}]}] remove havingChat4-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:record_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"よくやった\"}"}}}]}] remove havingChat4-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:record_chirp",Count:1b,tag:{display:{Name:"{\"text\":\"グッジョブ\"}"}}}]}] remove havingChat4-9Item

execute if entity @s[tag=havingChat4-1Item] run function project-c:radiochat/tab4/chat1
execute if entity @s[tag=havingChat4-2Item] run function project-c:radiochat/tab4/chat2
execute if entity @s[tag=havingChat4-3Item] run function project-c:radiochat/tab4/chat3
execute if entity @s[tag=havingChat4-4Item] run function project-c:radiochat/tab4/chat4
execute if entity @s[tag=havingChat4-5Item] run function project-c:radiochat/tab4/chat5
execute if entity @s[tag=havingChat4-6Item] run function project-c:radiochat/tab4/chat6
execute if entity @s[tag=havingChat4-7Item] run function project-c:radiochat/tab4/chat7
execute if entity @s[tag=havingChat4-8Item] run function project-c:radiochat/tab4/chat8
execute if entity @s[tag=havingChat4-9Item] run function project-c:radiochat/tab4/chat9