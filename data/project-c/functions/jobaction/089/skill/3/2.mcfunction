
tag @s add this
summon armor_stand ~ ~ ~ {Fire:32767s,NoGravity:1b,Invisible:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:magma_block",Count:1b}],Tags:["089explode","this"]}
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=this] remove this
summon minecraft:lightning_bolt ^-1 ^ ^
summon minecraft:lightning_bolt ^1 ^ ^
