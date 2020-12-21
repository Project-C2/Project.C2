scoreboard players set @s CT2 1000
replaceitem entity @s hotbar.2 minecraft:compass{display:{Name:'"CoolTime"'}} 10

effect give @e[tag=102skeleton_mine] instant_damage 3 0
execute at @e[tag=102skeleton_mine] run tp @s ~ ~ ~
execute as @e[tag=102skeleton_mine] run tp @s ~ ~ ~
execute as @e[tag=102skeleton_mine] if score @s counter matches 141.. run scoreboard players set @s counter 140
execute as @e[tag=102skeleton_mine] if score @s counter_1 matches 101.. run scoreboard players set @s counter_1 100
execute as @e[tag=102skeleton_mine] if score @s counter_2 matches 61.. run scoreboard players set @s counter_2 60

tag @s add user
playsound minecraft:entity.enderman.teleport master @a[tag=!user] ~ ~ ~ 1.5 1
playsound minecraft:entity.enderman.teleport master @a[tag=!user] ~ ~ ~ 0.75 1
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1.5 1
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 0.75 1
tag @s remove user
particle minecraft:reverse_portal ~ ~ ~ 0.5 1 0.5 1 400 normal @a
particle minecraft:reverse_portal ~ ~ ~ 0.5 1 0.5 1 100 force @a
execute at @s run particle minecraft:reverse_portal ~ ~ ~ 0.5 1 0.5 1 400 normal @a
execute at @s run particle minecraft:reverse_portal ~ ~ ~ 0.5 1 0.5 1 100 force @a


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
