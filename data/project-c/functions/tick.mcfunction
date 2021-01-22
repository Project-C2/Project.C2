execute as @a run function project-c:general/cooltimecounter
#function project-c:general/delaycounter
function project-c:general/0-luckeffection
function project-c:general/relic/reliceffect
#function project-c:radiochat/general/inventorywatcher

scoreboard players add #Clock counter 1
execute if score #Clock counter matches 2.. run scoreboard players set #Clock counter 0

execute if entity @e[team=] as @e[team=] run scoreboard players reset @s teamNumber
execute if entity @e[team=Red] as @e[team=Red] unless score @s teamNumber matches 1 run scoreboard players set @s teamNumber 1
execute if entity @e[team=Blue] as @e[team=Blue] unless score @s teamNumber matches 2 run scoreboard players set @s teamNumber 2
execute if entity @e[team=RedDummy] as @e[team=RedDummy] unless score @s teamNumber matches 1 run scoreboard players set @s teamNumber 1
execute if entity @e[team=BlueDummy] as @e[team=BlueDummy] unless score @s teamNumber matches 2 run scoreboard players set @s teamNumber 2

execute if entity @a[scores={jobNumber=88,deathCount=1..},limit=1,tag=!088-S3-used,tag=!088-respawn] as @a[scores={jobNumber=88,deathCount=1..},tag=!088-S3-used,tag=!088-respawn] at @s run function project-c:jobaction/088/death
execute if entity @e[scores={jobNumber=88},tag=!088-S3-used,tag=088-respawn,limit=1] as @e[scores={jobNumber=88},tag=!088-S3-used,tag=088-respawn] at @s run function project-c:jobaction/088/respawn

execute if entity @a[scores={jobNumber=99,deathCount=1..},tag=!099_death,limit=1] as @a[scores={jobNumber=99,deathCount=1..},tag=!099_death] run function project-c:jobaction/099/death
execute if entity @a[scores={099-S2-APN=1..,deathCount=1..},tag=099-S2-area-ed,limit=1] as @a[scores={099-S2-APN=1..,deathCount=1..},tag=099-S2-area-ed] run function project-c:jobaction/099/skill/2/end-0

execute if entity @a[scores={jobNumber=106,deathCount=1..},tag=!106_death_skill,limit=1] as @a[scores={jobNumber=106,deathCount=1..},tag=!106_death_skill] run function project-c:jobaction/106/change_keep
execute if entity @e[tag=experience_orb,limit=1] run kill @e[tag=experience_orb]

#dummyPK�̏���
#tag @e[tag=dummyPig] add dummyPK {OnGround:1b}
tp @e[tag=dummyPK] ~ ~-50 ~
effect give @e[tag=dummyPig] minecraft:invisibility 1000000 0 true