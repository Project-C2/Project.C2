execute if score @s counter_3 matches 1 run scoreboard players add @s CT1 20
execute if score @s counter_3 matches 1 run scoreboard players add @s CT2 40
execute if score @s counter_3 matches 1 run scoreboard players add @s CT3 100
execute if score @s counter_4 matches 1 if entity @s[team=Red] anchored eyes positioned ^ ^ ^1 run tag @e[team=!Red,tag=Battle,nbt=!{HurtTime:0s},distance=..5,sort=nearest,limit=1] add hit
execute if score @s counter_4 matches 1 if entity @s[team=Blue] anchored eyes positioned ^ ^ ^1 run tag @e[team=!Blue,tag=Battle,nbt=!{HurtTime:0s},distance=..5,sort=nearest,limit=1] add hit
execute if score @s counter_4 matches 1 run scoreboard players add @e[tag=hit,limit=1,sort=nearest] stanTime 31
execute if score @s counter_4 matches 1 run data merge block -113 2 -122 {auto:1b}
execute if score @s counter_5 matches 1 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1
execute if score @s counter_5 matches 1 run particle minecraft:explosion ~ ~1 ~ 0 0 0 1 1
execute if score @s counter_5 matches 1 unless entity @e[tag=hit,limit=1] if entity @s[team=Red] anchored eyes positioned ^ ^ ^1 run tag @e[team=!Red,tag=Battle,nbt=!{HurtTime:0s},distance=..5,sort=nearest,limit=1] add hit
execute if score @s counter_5 matches 1 unless entity @e[tag=hit,limit=1] if entity @s[team=Blue] anchored eyes positioned ^ ^ ^1 run tag @e[team=!Blue,tag=Battle,nbt=!{HurtTime:0s},distance=..5,sort=nearest,limit=1] add hit
execute if score @s counter_5 matches 1 run summon area_effect_cloud ~ ~ ~ {Tags:["this","115double_explosion"],Duration:20}
execute if score @s counter_5 matches 1 run data modify entity @e[tag=this,limit=1] Owner set from entity @e[tag=hit,limit=1] UUID
execute if score @s counter_5 matches 1 run tag @e[tag=hit,limit=1] add 115double_melee_hit
execute if score @s counter_5 matches 1 run data merge block 6 61 -60 {auto:1b}
execute if entity @e[tag=hit] run tag @e[tag=hit] remove hit



scoreboard players reset @s counter_1
scoreboard players reset @s counter_2
scoreboard players reset @s counter_3
scoreboard players reset @s counter_4
scoreboard players reset @s counter_5
scoreboard players reset @s counter_6
clear @s #project-c:neac/all{115skillID:0b}
tag @s remove SkillReady1