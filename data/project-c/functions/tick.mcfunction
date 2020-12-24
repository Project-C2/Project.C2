function project-c:general/cooltimecounter
function project-c:general/delaycounter
function project-c:general/0-luckeffection
function project-c:general/relic/reliceffect
#function project-c:radiochat/general/inventorywatcher

scoreboard players add #Clock counter 1
execute if score #Clock counter matches 2.. run scoreboard players set #Clock counter 0

execute if entity @e[tag=088-respawn] as @e[tag=088-respawn] at @s run function project-c:jobaction/088/respawn
execute if entity @e[tag=088-1-position] as @e[tag=088-1-position] at @s unless entity @e[scores={jobNumber=88},distance=..0.5] if entity @a[scores={jobNumber=88},distance=..0.5,tag=!088-S3-used] run function project-c:jobaction/088/death

execute if entity @a[scores={jobNumber=106,deathCount=1..},tag=!106_death_skill,limit=1] as @a[scores={jobNumber=106,deathCount=1..},tag=!106_death_skill] run function project-c:jobaction/106/change_keep

execute if entity @a[scores={jobNumber=99,deathCount=1..},tag=!099_death,limit=1] as @a[scores={jobNumber=99,deathCount=1..},tag=!099_death] run function project-c:jobaction/099/death

#dummyPK�̏���
#tag @e[tag=dummyPig] add dummyPK {OnGround:1b}
tp @e[tag=dummyPK] ~ ~-50 ~
effect give @e[tag=dummyPig] minecraft:invisibility 1000000 0 true