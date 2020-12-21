#CT
scoreboard players set @s CT1 1000
scoreboard players set @s usedSkill 1
#スキル効果
playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 1 0
#共通
particle minecraft:flash ~ ~1 ~ 0 0 0 0 2
execute if entity @s[team=Red] run tag @e[distance=..24,type=armor_stand,tag=!Stable,tag=!094-voidB] add 094vectorARed

execute if entity @s[team=Red] run tag @e[distance=..24,type=fireball] add 094vectorRed
execute if entity @s[team=Red] run tag @e[distance=..24,type=arrow] add 094vectorRed
execute if entity @s[team=Red] run tag @e[distance=..24,type=snowball] add 094vectorRed
execute if entity @s[team=Red] run tag @e[distance=..24,type=trident] add 094vectorRed

execute as @e[tag=094vectorRed] at @s run execute facing entity @e[limit=1,sort=nearest,team=Blue,tag=Battle] eyes positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["94vector"],Duration:1}

execute as @e[tag=094vectorRed] at @s run data modify entity @s Motion set from entity @e[tag=94vector,limit=1] Pos

execute as @e[tag=094vectorRed] at @s run data modify entity @s UUID set from entity @a[scores={jobNumber=94,usedSkill=1},team=Red,limit=1] UUID
execute as @e[tag=094vectorRed] at @s run data modify entity @s Owner set from entity @a[scores={jobNumber=94,usedSkill=1},team=Red,limit=1] UUID

execute as @e[tag=094vectorRed] at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0
execute as @e[tag=094vectorRed] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute as @e[tag=094vectorRed] at @s run data modify entity @s {NoGravity:1b}

kill @e[tag=94vector]

execute as @e[tag=094vectorRed] at @s run tag @s remove 094vectorRed


execute if entity @s[team=Blue] run tag @e[distance=..24,type=armor_stand,tag=!Stable,tag=!094-voidB] add 094vectorABlue

execute if entity @s[team=Blue] run tag @e[distance=..24,type=fireball] add 094vectorBlue
execute if entity @s[team=Blue] run tag @e[distance=..24,type=arrow] add 094vectorBlue
execute if entity @s[team=Blue] run tag @e[distance=..24,type=snowball] add 094vectorBlue
execute if entity @s[team=Blue] run tag @e[distance=..24,type=trident] add 094vectorBlue

execute as @e[tag=094vectorBlue] at @s run execute facing entity @e[limit=1,sort=nearest,team=Red,tag=Battle] eyes positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["94vector"],Duration:1}

execute as @e[tag=094vectorBlue] at @s run data modify entity @s Motion set from entity @e[tag=94vector,limit=1] Pos

execute as @e[tag=094vectorBlue] at @s run data modify entity @s UUID set from entity @a[scores={jobNumber=94,usedSkill=1},team=Blue,limit=1] UUID
execute as @e[tag=094vectorBlue] at @s run data modify entity @s Owner set from entity @a[scores={jobNumber=94,usedSkill=1},team=Blue,limit=1] UUID

execute as @e[tag=094vectorBlue] at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0
execute as @e[tag=094vectorBlue] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1
execute as @e[tag=094vectorBlue] at @s run data modify entity @s {NoGravity:1b}

kill @e[tag=94vector]

execute as @e[tag=094vectorBlue] at @s run tag @s remove 094vectorBlue

tag @e[distance=..24,type=armor_stand,tag=!Stable,tag=!094-voidB] add 094vectorA
tag @e[distance=..24,type=armor_stand,tag=!Stable,tag=!094-voidB] add 094vectorAset
execute as @e[tag=094vectorA] at @s run scoreboard players set @s counter 0
execute as @e[tag=094vectorAset] at @s run particle minecraft:flash ~ ~ ~ 0 0 0 0 1

execute as @e[tag=094vectorAset,tag=094vectorARed] at @s run tp @s ^ ^1 ^ facing entity @e[team=Blue,limit=1,sort=nearest,tag=Battle]
execute as @e[tag=094vectorAset,tag=094vectorABlue] at @s run tp @s ^ ^1 ^ facing entity @e[team=Red,limit=1,sort=nearest,tag=Battle]

tag @e[tag=094vectorAset] remove 094vectorAset

#リセット
tag @s remove SkillReady1
data merge block 23 2 89 {auto:1b}