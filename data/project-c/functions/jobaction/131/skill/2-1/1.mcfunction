scoreboard players add @s subcounter 1
scoreboard players add @s counter 1
execute unless block ^ ^ ^1 air run function project-c:jobaction/131/skill/2-1/1a
tp @s ^ ^ ^1
particle minecraft:dust 1 1 0 1 ~ ~ ~ 0.4 0.4 0.4 1 6 force @a
kill @s[scores={subcounter=120..}]
execute unless entity @s[tag=131-necroK1] if entity @s[scores={counter=..2}] as @s at @s run function project-c:jobaction/131/skill/2-1/1
execute unless entity @s[scores={counter=..2}] run scoreboard players reset @s counter
kill @s[tag=131-necroK1]