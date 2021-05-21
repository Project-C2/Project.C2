scoreboard players add @a[tag=046-2] counter_2 1

execute if entity @a[tag=046-2,scores={counter_2=10..45},limit=1] as @a[tag=046-2,scores={counter_2=10..45}] at @s run tp @s @s
execute if entity @a[tag=046-2,scores={counter_2=15..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 1 0.75
execute if entity @a[tag=046-2,scores={counter_2=15..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 1 0.5
execute if entity @a[tag=046-2,scores={counter_2=15..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run particle minecraft:note ~ ~5 ~ 6 6 6 1 150
execute if entity @a[tag=046-2,scores={counter_2=15..45},team=Red,limit=1] as @a[tag=046-2,team=Red,scores={counter_2=15..45}] at @s run effect give @e[distance=..10,team=Blue] wither 1 3 false
execute if entity @a[tag=046-2,scores={counter_2=15..45},team=Blue,limit=1] as @a[tag=046-2,team=Blue,scores={counter_2=15..45}] at @s run effect give @e[distance=..10,team=Red] wither 1 3 false

execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=potion] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=arrow] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=ender_pearl] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,tag=!sdi_d,type=armor_stand] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=fireball] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=area_effect_cloud] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=dragon_fireball] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=firework_rocket] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=spectral_arrow] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=wither_skull] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=snowball] add 046-anti_projectile
execute if entity @a[tag=046-2,scores={counter_2=17..45},limit=1] as @a[tag=046-2,scores={counter_2=15..45}] at @s run tag @e[distance=..10,tag=!Stable,type=trident] add 046-anti_projectile

execute if entity @e[tag=046-anti_projectile,limit=1] as @e[tag=046-anti_projectile] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 0.25 1
execute if entity @e[tag=046-anti_projectile,limit=1] as @e[tag=046-anti_projectile] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 0
execute if entity @e[tag=046-anti_projectile,limit=1] as @e[tag=046-anti_projectile] at @s run kill @s

execute if entity @a[tag=046-2,scores={counter_2=45},limit=1] as @a[tag=046-2,scores={counter_2=45}] at @s run tag @s add 046-2-a
execute if entity @a[tag=046-2-a,limit=1] as @a[tag=046-2-a] at @s run scoreboard players set @s counter_2 0
execute if entity @a[tag=046-2-a,limit=1] as @a[tag=046-2-a] at @s run tag @s remove 046-2
execute if entity @a[tag=046-2-a,limit=1] as @a[tag=046-2-a] at @s run tag @s remove 046-2-a