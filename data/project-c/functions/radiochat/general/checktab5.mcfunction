tag @s add havingChat5-1Item
tag @s add havingChat5-2Item
tag @s add havingChat5-3Item
tag @s add havingChat5-4Item
tag @s add havingChat5-5Item
tag @s add havingChat5-6Item
tag @s add havingChat5-7Item
tag @s add havingChat5-8Item
tag @s add havingChat5-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"ǂ񂇂񉟂Ă!!\"}"}}}]}]] remove havingChat5-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"カɉꡡ\"}"}}}]}]] remove havingChat5-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"G痣ꂄ 킦!!\"}"}}}]}]] remove havingChat5-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"㉱𒀂!!\"}"}}}]}]] remove havingChat5-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"GɓMU롡\"}"}}}]}]] remove havingChat5-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"HPɋC𔺂ꡡ\"}"}}}]}]] remove havingChat5-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"E獳!!\"}"}}}]}]] remove havingChat5-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"獳!!\"}"}}}]}]] remove havingChat5-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:music_disc_far",Count:1b,tag:{display:{Name:"{\"text\":\"獳!!\"}"}}}]}]] remove havingChat5-9Item

execute if entity @s[tag=havingChat5-1Item] run function project-c:radiochat/tab5/chat1
execute if entity @s[tag=havingChat5-2Item] run function project-c:radiochat/tab5/chat2
execute if entity @s[tag=havingChat5-3Item] run function project-c:radiochat/tab5/chat3
execute if entity @s[tag=havingChat5-4Item] run function project-c:radiochat/tab5/chat4
execute if entity @s[tag=havingChat5-5Item] run function project-c:radiochat/tab5/chat5
execute if entity @s[tag=havingChat5-6Item] run function project-c:radiochat/tab5/chat6
execute if entity @s[tag=havingChat5-7Item] run function project-c:radiochat/tab5/chat7
execute if entity @s[tag=havingChat5-8Item] run function project-c:radiochat/tab5/chat8
execute if entity @s[tag=havingChat5-9Item] run function project-c:radiochat/tab5/chat9