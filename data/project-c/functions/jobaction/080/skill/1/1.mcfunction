scoreboard players add @s counter 1
scoreboard players add @s counter_1 1
kill @s[scores={counter=301..}]

execute if entity @s[tag=080-fieldR,scores={counter_1=21..}] run effect give @a[team=Red,distance=..7] regeneration 1 2

execute if entity @s[tag=080-fieldB,scores={counter_1=21..}] run effect give @a[team=Blue,distance=..7] regeneration 1 2


kill @e[type=arrow,distance=..7]
kill @e[type=fireball,distance=..7]
kill @e[type=armor_stand,tag=!Stable,distance=9..12]
kill @e[type=trident,distance=..7]
kill @e[type=shulker_bullet,distance=..7]

particle sweep_attack ~ ~2 ~ 3 2 3 0.05 3
playsound minecraft:entity.wither.shoot master @a ~ ~0.5 ~ 0.2 1.5
particle end_rod ~ ~ ~ 5 2 5 1 3 normal @a

execute if entity @s[scores={counter_1=21..}] run scoreboard players set @s counter_1 0

