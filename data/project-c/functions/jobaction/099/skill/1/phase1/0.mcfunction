scoreboard players set @s CT1 800
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 20

playsound minecraft:entity.guardian.flop master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 1.8
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:dust 0 3 0 1 ~ ~ ~ 0.4 0.4 0.4 0 20 force @a
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:smoke ~ ~ ~ 0 0 0 0.3 10 force @a
particle minecraft:dust 0 3 0 1 ~ ~1 ~ 0.4 0.4 0.4 0 10 force @a

execute at @s anchored eyes positioned ^ ^ ^0.2 run summon arrow ~ ~ ~ {damage:0.5d,Tags:["099-S1-P1-ARROW","099-S1-P1-ARROW-SETUP"],CustomName:'{"text":"COBRA POISON","color":"#005500"}',NoGravity:1b,crit:0,Color:21760,CustomPotionEffects:[{Id:19b,Amplifier:2b,Duration:100}]}
execute positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^5 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["099-S1-P1-A-AEC"]}

data merge block 83 2 89 {auto:1b}

data modify entity @e[tag=099-S1-P1-ARROW-SETUP,limit=1] Owner set from entity @s UUID
data modify entity @e[tag=099-S1-P1-ARROW-SETUP,limit=1] Motion set from entity @e[tag=099-S1-P1-A-AEC,limit=1] Pos
tag @e[tag=099-S1-P1-ARROW-SETUP] remove 099-S1-P1-ARROW-SETUP
kill @e[tag=099-S1-P1-A-AEC]


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
