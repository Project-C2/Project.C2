execute positioned 4003 73 974 as @a[distance=..100,gamemode=adventure] at @s if block ~ ~ ~ minecraft:lava run scoreboard players add @s Nethercount 2
execute positioned 4003 73 974 as @a[distance=..100,gamemode=adventure,team=Red] at @s if entity @s[scores={Nethercount=60..}] run tp @s 4044 63 932 45 0
execute positioned 4003 73 974 as @a[distance=..100,gamemode=adventure,team=Blue] at @s if entity @s[scores={Nethercount=60..}] run tp @s 3964 63 1012 -135 0
execute positioned 4003 73 974 as @a[distance=..100,gamemode=adventure] at @s if entity @s[scores={Nethercount=60..}] run effect give @s minecraft:fire_resistance 15 0 false
execute positioned 4003 73 974 as @a[distance=..100,gamemode=adventure] at @s if entity @s[scores={Nethercount=60..}] run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 0 1
execute positioned 4003 73 974 as @a[distance=..100,gamemode=adventure] at @s if entity @s[scores={Nethercount=60..}] run playsound minecraft:entity.zombie_villager.converted master @s ~ ~ ~ 1 0 1
execute positioned 4003 73 974 as @a[distance=..100,gamemode=adventure] at @s if entity @s[scores={Nethercount=60..}] run tellraw @s {"text":"[システム]溶岩に浸かりすぎたためリスポーン地点に戻されました"}
execute positioned 4003 73 974 as @a[distance=..100,gamemode=adventure] at @s if entity @s[scores={Nethercount=60..}] run particle minecraft:end_rod ~ ~0.5 ~ 0.0 0.5 0.5 0.1 100 normal
execute positioned 4003 73 974 as @a[scores={Nethercount=1..}] at @s unless block ~ ~ ~ minecraft:lava run scoreboard players remove @s Nethercount 1