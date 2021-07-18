execute if entity @s[scores={counter_1=3}] run effect give @e[tag=hit] instant_health 1 0 true
execute if entity @s[scores={counter_1=4}] run scoreboard players add @a[tag=hit,gamemode=!spectator] CT1 100
execute if entity @s[scores={counter_1=4}] run scoreboard players add @a[tag=hit,gamemode=!spectator] CT2 100
execute if entity @s[scores={counter_1=4}] run scoreboard players add @a[tag=hit,gamemode=!spectator] CT3 100
tag @e[tag=hit] remove hit