scoreboard players add #105- counter_3 1
execute if score #105- counter_3 matches 1 anchored eyes run summon minecraft:firework_rocket ^ ^ ^0.5 {Tags:["105omikoshi","first"],Life:1,LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]}]}}},ShotAtAngle:1b}
execute if score #105- counter_3 matches 2 anchored eyes run summon minecraft:firework_rocket ^ ^ ^0.5 {Tags:["105omikoshi","first"],Life:1,LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16777215]}]}}},ShotAtAngle:1b}
execute if score #105- counter_3 matches 2 run scoreboard players set #105- counter_3 0
data modify entity @e[tag=first,limit=1] Owner set from entity @s UUID
execute as @e[tag=first] store result score @s counter run data get entity @s UUID[0] 0.0001
execute as @e[tag=first] run scoreboard players operation @s counter %= #15 counter
execute as @e[tag=first] store result entity @s Life int 1 run scoreboard players add @s counter 5

#ランダムにMotion生成して代入
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["105vector"],Duration:1}
execute positioned 0.0 0.0 0.0 run tp @e[tag=105vector,limit=1,sort=nearest] ^ ^ ^1 ~ ~
loot spawn 0 0 0 loot project-c:wnkm/rand.2.-50_49
execute store result score #105- counter_1 run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand.1"}].Amount 0.8
execute if score #105- counter_1 matches 1.. as @e[tag=105vector] at @s facing ^1 ^ ^ run function project-c:jobaction/105/skill/2/score_tp
execute if score #105- counter_1 matches ..-1 as @e[tag=105vector] at @s facing ^-1 ^ ^ run function project-c:jobaction/105/skill/2/score_tp
execute store result score #105- counter_1 run data get entity @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}},limit=1] Item.tag.AttributeModifiers[{Name:"wnkm.rand.2"}].Amount 0.4
execute if score #105- counter_1 matches 1.. as @e[tag=105vector] at @s facing ^ ^1 ^ run function project-c:jobaction/105/skill/2/score_tp
execute if score #105- counter_1 matches ..-1 as @e[tag=105vector] at @s facing ^ ^-1 ^ run function project-c:jobaction/105/skill/2/score_tp
kill @e[type=item,nbt={Item:{tag:{wnkm.randomItem:1b}}}]

execute as @e[tag=105vector] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^2.0
execute as @e[tag=first] run data modify entity @s Motion set from entity @e[tag=105vector,limit=1] Pos
kill @e[tag=105vector]

tag @e[tag=first] remove first
scoreboard players add #105- counter 1
execute unless score #105- counter matches 10.. run function project-c:jobaction/105/skill/2/0b_r