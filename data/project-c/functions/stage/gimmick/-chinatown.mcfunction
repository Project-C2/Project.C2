execute positioned 976 68 -1000 if entity @a[distance=..150,gamemode=!spectator] as @a[distance=..150,gamemode=!spectator] at @s if block ~ ~-0.1 ~ minecraft:purple_glazed_terracotta run scoreboard players add @s Chinacount 1
execute if entity @a[scores={Chinacount=1}] as @a[scores={Chinacount=1}] run effect give @s minecraft:poison 1 1 false
execute if entity @a[scores={Chinacount=10}] as @a[scores={Chinacount=10}] run scoreboard players reset @s Chinacount
execute if entity @a[scores={Chinacount=1..}] as @a[scores={Chinacount=1..}] at @s unless block ~ ~-1 ~ minecraft:purple_glazed_terracotta run scoreboard players reset @s Chinacount