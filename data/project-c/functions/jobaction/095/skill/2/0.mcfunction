scoreboard players set @s CT2 940
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 13

execute positioned ^ ^ ^2.5 run summon area_effect_cloud ~ ~0.5 ~ {Tags:["095-2AEC","this"],Duration:15,Radius:0.0f}
execute if entity @s[team=Red] run tag @e[tag=this,limit=1] add 095Red
execute if entity @s[team=Blue] run tag @e[tag=this,limit=1] add 095Blue
data modify entity @e[tag=this,limit=1] Owner set from entity @s UUID
execute at @e[tag=this] run particle explosion ~ ~ ~ 0.4 0.4 0.4 1 5 force @a
execute at @e[tag=this] run particle cloud ~ ~ ~ 0.4 0.4 0.4 1 500 normal @a
tag @e[tag=this] remove this
playsound minecraft:entity.ghast.scream master @a ^ ^ ^2.5 1.5 0.5
playsound minecraft:entity.ghast.scream master @a ^ ^ ^2.5 1.0 0.5
playsound minecraft:entity.ghast.scream master @a ^ ^ ^2.5 0.5 0.5
playsound minecraft:entity.generic.explode master @a ^ ^ ^2.5 1.5 1.2
playsound minecraft:entity.generic.explode master @a ^ ^ ^2.5 1 1.2


data merge block 37 2 89 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2