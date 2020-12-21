summon minecraft:armor_stand ~ ~1 ~ {Tags:["105omikoshi","first","105__"],Small:1b,Invisible:1b}
execute as @e[tag=first] run loot replace entity @s armor.head loot project-c:wnkm/105/stoneblast
loot spawn 0 0 0 loot project-c:wnkm/rand.-180_179
execute store result score #105- counter_1 run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand"}].Amount 10.4
kill @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}}]
execute as @e[tag=first] store result entity @s Rotation[0] float 0.01 run scoreboard players operation #105- counter_1 += #105- subcounter
execute as @e[tag=first] store result entity @s Rotation[1] float 0.01 run scoreboard players get #105- counter_2

execute rotated as @e[tag=first,limit=1] positioned 0.0 0.15 0.0 run summon armor_stand ^ ^ ^1.2 {Tags:["105vector"],NoGravity:1b,Marker:1b,Invisible:1b}
execute as @e[tag=first] run data modify entity @s Motion set from entity @e[tag=105vector,limit=1] Pos
kill @e[tag=105vector]

tag @e[tag=first] remove first
scoreboard players add #105- counter 1
scoreboard players add #105- counter_2 375
execute unless score #105- counter matches 12.. run function project-c:jobaction/105/skill/1/0b_r