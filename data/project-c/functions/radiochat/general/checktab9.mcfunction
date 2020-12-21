tag @s add havingChat8-1Item
tag @s add havingChat8-2Item
tag @s add havingChat8-3Item
tag @s add havingChat8-4Item
tag @s add havingChat8-5Item
tag @s add havingChat8-6Item
tag @s add havingChat8-7Item
tag @s add havingChat8-8Item
# tag @s add havingChat8-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"ÉKÉCÉWÇµÇΩÇÌ\"}"}}}]}] remove havingChat8-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"Ç¶Ç•...\"}"}}}]}] remove havingChat8-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"Àﬂ¨∞\"}"}}}]}] remove havingChat8-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"À∞\"}"}}}]}] remove havingChat8-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"Ãß∞∞∞\"}"}}}]}] remove havingChat8-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"±Ø∞∞∞∞∞\"}"}}}]}] remove havingChat8-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"Ç‚ÇﬂÇøÇ≠ÇËÅ`\"}"}}}]}] remove havingChat8-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"±∞≤∑ø\"}"}}}]}] remove havingChat8-8Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:music_disc_stal",Count:1b,tag:{display:{Name:"{\"text\":\"∏∏∏∏∏\"}"}}}]}] remove havingChat8-9Item

execute if entity @s[tag=havingChat8-1Item] run function project-c:radiochat/tab8/chat1
execute if entity @s[tag=havingChat8-2Item] run function project-c:radiochat/tab8/chat2
execute if entity @s[tag=havingChat8-3Item] run function project-c:radiochat/tab8/chat3
execute if entity @s[tag=havingChat8-4Item] run function project-c:radiochat/tab8/chat4
execute if entity @s[tag=havingChat8-5Item] run function project-c:radiochat/tab8/chat5
execute if entity @s[tag=havingChat8-6Item] run function project-c:radiochat/tab8/chat6
execute if entity @s[tag=havingChat8-7Item] run function project-c:radiochat/tab8/chat7
execute if entity @s[tag=havingChat8-8Item] run function project-c:radiochat/tab8/chat8
execute if entity @s[tag=havingChat8-8Item] run function project-c:radiochat/tab8/chat9