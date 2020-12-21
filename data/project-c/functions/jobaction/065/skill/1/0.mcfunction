scoreboard players set @s CT1 1000

scoreboard players set @s counter_1 40
execute at @s run particle minecraft:flash ~ ~1 ~ 0 0 0 0 1
execute at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 2 2
execute at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 2 1.75
effect give @s minecraft:resistance 2 5 true
execute at @s run tp @s @s
execute at @s run scoreboard players operation @s counter_1 -= @s counter
scoreboard players add @s counter 0
scoreboard players add @s[scores={counter=..30}] counter 1

data merge block -73 2 31 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1