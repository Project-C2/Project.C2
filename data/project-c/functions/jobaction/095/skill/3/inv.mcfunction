tag @s add 095
execute as @e[tag=095-3] if score @s playerNumber = @a[tag=095,limit=1,sort=nearest,distance=..1] playerNumber run tag @s add 095tag
tag @s remove 095
tag @e[distance=..2,tag=095-3noInv,tag=095tag,scores={subcounter=1..},limit=2,sort=nearest] add 095effect
execute unless entity @e[tag=095effect,limit=1] run tag @e[tag=095tag] remove 095tag
scoreboard players remove @e[tag=095tag] counter 13

execute if score @s CT3 matches 1201.. run scoreboard players set @s CT3 1200
execute if entity @e[tag=095effect,limit=1] run tag @s add 095effect
execute if entity @s[tag=095effect] run scoreboard players remove @e[tag=095effect] subcounter 1
execute if entity @s[tag=095effect] run scoreboard players remove @s CT3 140
execute if entity @s[tag=095effect] run function project-c:jobaction/095/skill/3/inv_compass
scoreboard players set @e[tag=095effect] counter_3 13
effect give @e[tag=095effect] resistance 1 4
effect give @e[tag=095effect] invisibility 1 0
execute at @e[tag=095effect] run particle minecraft:end_rod ~ ~1 ~ 0.4 0.4 0.4 0.2 80 normal @a
execute at @e[tag=095effect] run particle minecraft:end_rod ~ ~1 ~ 0.4 0.4 0.4 0.2 20 force @a
execute at @e[tag=095effect] run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1.5 2


execute if entity @s[tag=095effect] run tag @s remove SkillReady3
execute if entity @s[tag=095effect] run scoreboard players set @s usedSkill 3
tag @e[tag=095tag] remove 095tag
tag @e[tag=095effect] remove 095effect

