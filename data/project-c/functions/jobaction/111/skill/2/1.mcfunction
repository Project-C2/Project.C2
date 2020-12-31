particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.3 50
playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1 1
execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..4,tag=Battle] minecraft:blindness 2 0
execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..4,tag=Battle] minecraft:blindness 2 0
execute if entity @s[team=Red] run effect give @e[team=Blue,distance=..4,tag=Battle] minecraft:slowness 1 1
execute if entity @s[team=Blue] run effect give @e[team=Red,distance=..4,tag=Battle] minecraft:slowness 1 1

effect clear @s minecraft:invisibility
effect clear @s minecraft:speed

scoreboard players set @s counter_2 0