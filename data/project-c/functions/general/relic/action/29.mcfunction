execute if score #Clock counter matches 1 run scoreboard players remove @s CT1 1
execute if score #Clock counter matches 1 run scoreboard players remove @s CT2 1
execute if score #Clock counter matches 1 run scoreboard players remove @s CT3 1

execute if entity @s[team=Red] run scoreboard players add @a[team=Red,gamemode=!spectator,distance=1..12] CT1 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Red,gamemode=!spectator,distance=1..12] CT2 1
execute if entity @s[team=Red] run scoreboard players add @a[team=Red,gamemode=!spectator,distance=1..12] CT3 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Blue,gamemode=!spectator,distance=1..12] CT1 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Blue,gamemode=!spectator,distance=1..12] CT2 1
execute if entity @s[team=Blue] run scoreboard players add @a[team=Blue,gamemode=!spectator,distance=1..12] CT3 1

particle minecraft:enchant ^ ^2 ^ 1 1 1 0.3 1 normal @a

execute if entity @s[team=Red] at @a[team=Red,gamemode=!spectator,distance=1..12] run particle minecraft:enchant ^ ^2 ^ 0 0 0 1 1 normal @a
execute if entity @s[team=Blue] at @a[team=Blue,gamemode=!spectator,distance=1..12] run particle minecraft:enchant ^ ^2 ^ 0 0 0 1 1 normal @a
