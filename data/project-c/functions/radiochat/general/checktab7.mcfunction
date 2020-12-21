tag @s add havingChat7-1Item
tag @s add havingChat7-2Item
tag @s add havingChat7-3Item
tag @s add havingChat7-4Item
tag @s add havingChat7-5Item
tag @s add havingChat7-6Item
tag @s add havingChat7-7Item
tag @s add havingChat7-8Item
tag @s add havingChat7-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:record_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"攻撃に回る\"}"}}}]}] remove havingChat7-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:record_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"援護に回る\"}"}}}]}] remove havingChat7-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:record_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"支援に回る\"}"}}}]}] remove havingChat7-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:record_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"援護を頼む\"}"}}}]}] remove havingChat7-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:record_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"様子を見る\"}"}}}]}] remove havingChat7-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:record_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"回復頼む\"}"}}}]}] remove havingChat7-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:record_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"バフをかけてくれ\"}"}}}]}] remove havingChat7-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:record_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"デバフをかけてくれ\"}"}}}]}] remove havingChat7-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:record_mellohi",Count:1b,tag:{display:{Name:"{\"text\":\"自爆特攻するぞ\"}"}}}]}] remove havingChat7-9Item

execute if entity @s[tag=havingChat7-1Item] run function project-c:radiochat/tab7/chat1
execute if entity @s[tag=havingChat7-2Item] run function project-c:radiochat/tab7/chat2
execute if entity @s[tag=havingChat7-3Item] run function project-c:radiochat/tab7/chat3
execute if entity @s[tag=havingChat7-4Item] run function project-c:radiochat/tab7/chat4
execute if entity @s[tag=havingChat7-5Item] run function project-c:radiochat/tab7/chat5
execute if entity @s[tag=havingChat7-6Item] run function project-c:radiochat/tab7/chat6
execute if entity @s[tag=havingChat7-7Item] run function project-c:radiochat/tab7/chat7
execute if entity @s[tag=havingChat7-8Item] run function project-c:radiochat/tab7/chat8
execute if entity @s[tag=havingChat7-9Item] run function project-c:radiochat/tab7/chat9