scoreboard players add @s counter 1
tp @s ^ ^ ^1
execute if entity @e[tag=023-2x,distance=..3.0] as @e[tag=023-2x,distance=..3.0] if score @s playerNumber = @a[limit=1,tag=023-2testp] playerNumber at @s run function project-c:jobaction/023/skill/2/2t
execute unless entity @s[scores={counter=100..}] at @s run function project-c:jobaction/023/skill/2/2l