scoreboard players set @s CT1 980
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 11

execute if score @s counter matches 1.. run scoreboard players set @s counter 1
scoreboard players set @s counter_1 0
scoreboard players set @s counter_3 1
function project-c:jobaction/092/replaceitem/0
gamemode spectator @s
execute align y run tp @s ~ ~-1 ~
execute store result score @s counter_4 run data get entity @s Pos[1] 10

particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 4 normal @a
particle minecraft:explosion ~ ~ ~ 0.2 0.2 0.2 1 1 force @a
particle minecraft:flash ~ ~1 ~ 0.5 0.5 0.5 1 8 normal @a
particle minecraft:flash ~ ~1 ~ 0.5 0.5 0.5 1 2 force @a
playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 2 0.5


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1