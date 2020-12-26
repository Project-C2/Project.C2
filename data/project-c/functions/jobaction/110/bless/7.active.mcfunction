#対象デバフ: Slowness, Weakness, Poison, Wither
#対象デバフのId: 2, 18, 19, 20
execute at @s run summon minecraft:area_effect_cloud ~ ~0.2 ~ {Tags:["this"],Radius:0.4f,Duration:5,Age:4,WaitTime:1,Effects:[{}]}
execute if data entity @s {ActiveEffects:[{Id:2b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:2b,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:18b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:18b,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:19b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:19b,Ambient:0b}]
execute if data entity @s {ActiveEffects:[{Id:20b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[] append from entity @s ActiveEffects[{Id:20b,Ambient:0b}]

execute if data entity @s {ActiveEffects:[{Id:2b,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:2b}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:2b,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:18b,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:18b}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:18b,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:19b,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:19b}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:19b,Ambient:0b}].Duration 1
execute if data entity @s {ActiveEffects:[{Id:20b,Ambient:0b}]} store result entity @e[tag=this,limit=1] Effects[{Id:20b}].Duration int 0.5 run data get entity @s ActiveEffects[{Id:20b,Ambient:0b}].Duration 1

execute if data entity @s {ActiveEffects:[{Id:2b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:2b,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:2b,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:18b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:18b,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:18b,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:19b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:19b,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:19b,Ambient:0b}].Amplifier
execute if data entity @s {ActiveEffects:[{Id:20b,Ambient:0b}]} run data modify entity @e[tag=this,limit=1] Effects[{Id:20b,Ambient:0b}].Amplifier set from entity @s ActiveEffects[{Id:20b,Ambient:0b}].Amplifier

data modify entity @e[tag=this,limit=1] Effects[{Ambient:0b}].Ambient set value 1b

execute if data entity @s {ActiveEffects:[{Id:2b,Ambient:0b}]} run effect clear @s minecraft:slowness
execute if data entity @s {ActiveEffects:[{Id:18b,Ambient:0b}]} run effect clear @s minecraft:weakness
execute if data entity @s {ActiveEffects:[{Id:19b,Ambient:0b}]} run effect clear @s minecraft:poison
execute if data entity @s {ActiveEffects:[{Id:20b,Ambient:0b}]} run effect clear @s minecraft:wither

tag @e[tag=this] remove this
tag @s remove 110
