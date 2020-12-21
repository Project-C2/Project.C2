particle minecraft:dragon_breath ^ ^ ^ 0 0 0 0.5 400 normal @a
particle minecraft:dragon_breath ^ ^ ^ 0 0 0 0.5 100 force @a
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1.7
execute if entity @s[scores={counter_3=20}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1.7
execute if entity @s[scores={counter_3=10}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1.7
execute if entity @s[team=Red] at @s run effect give @a[team=!Red,distance=..10,gamemode=!spectator] minecraft:blindness 1 0
execute if entity @s[team=Blue] at @s run effect give @a[team=!Blue,distance=..10,gamemode=!spectator] minecraft:blindness 1 0
