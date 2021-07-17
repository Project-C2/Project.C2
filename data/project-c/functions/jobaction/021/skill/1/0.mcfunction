scoreboard players set @s CT1 1000

scoreboard players set @s counter_7 14
scoreboard players set @s[scores={counter_5=40..}] counter_5 40

playsound minecraft:entity.wither.break_block master @a ^ ^ ^2 2.1 0.6
playsound minecraft:entity.generic.explode master @a ^ ^ ^2 2.1 0.9
function project-c:jobaction/021/skill/1/0-1

execute as @e[tag=first] run data modify entity @s Owner set from entity @a[scores={jobNumber=21},limit=1,sort=nearest,gamemode=!spectator] UUID
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first] counter_5 = @s counter_5

execute anchored eyes positioned ^ ^ ^0.4 run summon marker ^ ^ ^ {Tags:["021-target"]}
scoreboard players operation @e[tag=first] counter_5 = @s counter_5
scoreboard players operation @e[tag=021-target] counter_5 = @s counter_5
execute anchored eyes positioned ^ ^ ^ as @e[tag=021-target] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ as @e[tag=first] facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

execute as @e[tag=021-target] at @s run function project-c:jobaction/021/skill/1/0-2

execute as @e[tag=first] at @s facing entity @e[tag=021-target,limit=1] feet run tp @s ~ ~ ~ ~ ~


kill @e[tag=021-target]

tag @e[tag=first] remove first

scoreboard players set @s counter_5 0
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
data merge block 131 2 -122 {auto:1b}