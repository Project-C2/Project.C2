particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 50
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

execute if entity @s[team=Red] run effect give @a[distance=..5,team=Red] instant_health 1 0

execute if entity @s[team=Red] run effect give @a[distance=..5,team=Red] regeneration 1 3

execute if entity @s[team=Blue] run effect give @a[distance=..5,team=Blue] instant_health 1 0
execute if entity @s[team=Blue] run effect give @a[distance=..5,team=Blue] regeneration 1 3

scoreboard players remove @s Mana 180
scoreboard players add @s MagicFatigue 100