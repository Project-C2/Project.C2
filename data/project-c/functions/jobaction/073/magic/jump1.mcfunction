particle minecraft:enchant ~ ~1.5 ~ 0 0 0 2 50
playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2

execute if entity @s[team=Red] run effect give @a[team=Red,distance=..7] jump_boost 15 2
execute if entity @s[team=Blue] run effect give @a[team=Blue,distance=..7] jump_boost 15 2

scoreboard players remove @s Mana 100
scoreboard players add @s MagicFatigue 60