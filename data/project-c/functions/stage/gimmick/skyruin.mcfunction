execute as @a[x=-486,y=66,z=5,distance=..150,gamemode=!spectator] at @s if block ~ ~-1 ~ minecraft:dark_prismarine run tag @s add SkyRuinGimmick
execute if entity @a[tag=SkyRuinGimmick] as @a[tag=SkyRuinGimmick] run effect give @s minecraft:levitation 1 25
execute if entity @a[tag=SkyRuinGimmick] as @a[tag=SkyRuinGimmick] run effect give @s minecraft:jump_boost 5 255
execute if entity @a[tag=SkyRuinGimmick] as @a[tag=SkyRuinGimmick] run effect give @s minecraft:speed 1 120
execute if entity @a[tag=SkyRuinGimmick] as @a[tag=SkyRuinGimmick] run tag @s remove SkyRuinGimmick