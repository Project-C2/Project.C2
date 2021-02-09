scoreboard players add @s counter 1

execute if entity @s[tag=-078-fireRed] run scoreboard players set @e[tag=Battle,distance=..3,team=Blue] 078-oil 50
execute if entity @s[tag=-078-fireBlue] run scoreboard players set @e[tag=Battle,distance=..3,team=Red] 078-oil 50

execute if entity @s[tag=-078-fireRed2] run scoreboard players set @e[tag=Battle,distance=..5,team=Blue] 078-oil 80
execute if entity @s[tag=-078-fireBlue2] run scoreboard players set @e[tag=Battle,distance=..5,team=Red] 078-oil 80

particle minecraft:dust 0 0 0 2 ~ ~ ~ 1 1 1 0 20

kill @s[scores={counter=4..}]