#実行者     -> tag=045-Necro1,tag=!045-NecroEnd (counter = 0..)
#実行地点   -> 実行者

scoreboard players add @s counter 1
teleport @s ~ ~0.05 ~
particle minecraft:block dirt ~ ~ ~ 0.5 0.5 0.5 0.5 20
playsound minecraft:block.grass.break master @a ~ ~ ~ 1 0
data merge entity @s[scores={counter=40..}] {NoAI:false,Invulnerable:false}
tag @s[scores={counter=40..}] add 045-NecroEnd
scoreboard players reset @s[scores={counter=40..}] counter

