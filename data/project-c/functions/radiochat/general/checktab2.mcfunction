tag @s add havingChat2-1Item
tag @s add havingChat2-2Item
tag @s add havingChat2-3Item
tag @s add havingChat2-4Item
tag @s add havingChat2-5Item
tag @s add havingChat2-6Item
tag @s add havingChat2-7Item
tag @s add havingChat2-8Item
tag @s add havingChat2-9Item

tag @s[nbt={Inventory:[{Slot:18b,id:"minecraft:record_cat",Count:1b,tag:{display:{Name:"{\"text\":\"�W���u���V���b�t�����邼\"}"}}}]}] remove havingChat2-1Item
tag @s[nbt={Inventory:[{Slot:19b,id:"minecraft:record_cat",Count:1b,tag:{display:{Name:"{\"text\":\"�����n�߂邼\"}"}}}]}] remove havingChat2-2Item
tag @s[nbt={Inventory:[{Slot:20b,id:"minecraft:record_cat",Count:1b,tag:{display:{Name:"{\"text\":\"�X�e�[�W��ς��悤\"}"}}}]}] remove havingChat2-3Item
tag @s[nbt={Inventory:[{Slot:21b,id:"minecraft:record_cat",Count:1b,tag:{display:{Name:"{\"text\":\"���ŗ����邼\"}"}}}]}] remove havingChat2-4Item
tag @s[nbt={Inventory:[{Slot:22b,id:"minecraft:record_cat",Count:1b,tag:{display:{Name:"{\"text\":\"�ߋ����E�ōs��\"}"}}}]}] remove havingChat2-5Item
tag @s[nbt={Inventory:[{Slot:23b,id:"minecraft:record_cat",Count:1b,tag:{display:{Name:"{\"text\":\"�������E�ōs��\"}"}}}]}] remove havingChat2-6Item
tag @s[nbt={Inventory:[{Slot:24b,id:"minecraft:record_cat",Count:1b,tag:{display:{Name:"{\"text\":\"�x���E�ōs��\"}"}}}]}] remove havingChat2-7Item
tag @s[nbt={Inventory:[{Slot:25b,id:"minecraft:record_cat",Count:1b,tag:{display:{Name:"{\"text\":\"����Ȃ��E���g��\"}"}}}]}] remove havingChat2-8Item
tag @s[nbt={Inventory:[{Slot:26b,id:"minecraft:record_cat",Count:1b,tag:{display:{Name:"{\"text\":\"����_�炩�ɗ���\"}"}}}]}] remove havingChat2-9Item

execute if entity @s[tag=havingChat2-1Item] run function project-c:radiochat/tab2/chat1
execute if entity @s[tag=havingChat2-2Item] run function project-c:radiochat/tab2/chat2
execute if entity @s[tag=havingChat2-3Item] run function project-c:radiochat/tab2/chat3
execute if entity @s[tag=havingChat2-4Item] run function project-c:radiochat/tab2/chat4
execute if entity @s[tag=havingChat2-5Item] run function project-c:radiochat/tab2/chat5
execute if entity @s[tag=havingChat2-6Item] run function project-c:radiochat/tab2/chat6
execute if entity @s[tag=havingChat2-7Item] run function project-c:radiochat/tab2/chat7
execute if entity @s[tag=havingChat2-8Item] run function project-c:radiochat/tab2/chat8
execute if entity @s[tag=havingChat2-9Item] run function project-c:radiochat/tab2/chat9