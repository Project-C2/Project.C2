execute if data entity @s {ActiveEffects:[{Id:2b,Ambient:0b}]} run tag @s add 110
execute if data entity @s {ActiveEffects:[{Id:18b,Ambient:0b}]} run tag @s add 110
execute if data entity @s {ActiveEffects:[{Id:19b,Ambient:0b}]} run tag @s add 110
execute if data entity @s {ActiveEffects:[{Id:20b,Ambient:0b}]} run tag @s add 110
execute if entity @s[tag=110] run function project-c:jobaction/110/bless/7.active
execute if score @s stanTime matches 2.. run scoreboard players remove @s stanTime 1


