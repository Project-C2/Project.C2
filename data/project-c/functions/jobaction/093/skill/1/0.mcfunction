scoreboard players set @s CT1 900
clear @s water_bucket
clear @s heart_of_the_sea

execute anchored eyes run summon trident ^ ^ ^0.1 {Tags:["093firstTrident","this","trident"],crit:1b,pickup:0b,life:1134s,DealtDamage:1b,Invulnerable:1b}
scoreboard players set @e[tag=this] counter_2 -900
execute store result score @e[tag=this,limit=1] counter_1 run data get entity @s Rotation[0] 10
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^2 {Tags:["vector"],Duration:1}
data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=vector,limit=1] Pos
kill @e[tag=vector]
tag @e[tag=this] remove this

playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 2 1
playsound minecraft:item.trident.throw master @a ~ ~ ~ 2 1
execute anchored eyes run particle minecraft:explosion ^ ^ ^2 0 0 0 1 2 force

data merge block 11 2 89 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
