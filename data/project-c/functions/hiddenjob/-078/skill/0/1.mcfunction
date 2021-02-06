#実行地点   -> 実行者

scoreboard players add @s counter 1

teleport @s ^ ^ ^0.8

execute if entity @s unless block ^ ^ ^ #project-c:wancomatter/like_air run scoreboard players set @s counter 81

playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 0.5 0.5
particle minecraft:sweep_attack ~ ~0.75 ~ 0 0 0 0 1 force @a

execute if entity @s[tag=-078-diceB] run tag @e[tag=Battle,team=Red,distance=..1] add Damage2
execute if entity @s[tag=-078-diceR] run tag @e[tag=Battle,team=Blue,distance=..1] add Damage2

kill @s[scores={counter=81..}]