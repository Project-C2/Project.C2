scoreboard players remove @s subcounter 2
effect give @s levitation 1 0 true
scoreboard players set @s counter_1 10
execute anchored eyes if block ^ ^ ^2 air anchored feet if block ^ ^ ^2 air run scoreboard players set @s usedSkill 1
execute anchored eyes if block ^ ^ ^2 air anchored feet if block ^ ^ ^2 air run tp @s ^ ^ ^2
execute unless entity @s[scores={usedSkill=1}] run tp @s ^ ^ ^1
execute at @s run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.6 0.5
execute at @s run particle dust 1 0 0 1.5 ~ ~1 ~ 1 1 1 1 40 normal @a
execute at @s run particle dust 1 0 0 1.5 ~ ~1 ~ 1 1 1 1 10 force @a
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.5 40 normal @a
execute at @s run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.5 10 force @a
scoreboard players set @s usedSkill 1