#判定
#CT
scoreboard players set @s CT1 1200

#スキル効果
#共通
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 3 2
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0

particle minecraft:end_rod ^ ^1.5 ^ 0 0 0 1 150 force @a

execute if entity @s[team=Red] run scoreboard players add @a[team=Red,distance=..12] CT1 100
execute if entity @s[team=Red] run scoreboard players add @a[team=Red,distance=..12] CT2 100
execute if entity @s[team=Red] run scoreboard players add @a[team=Red,distance=..12] CT3 100

execute if entity @s[team=Blue] run scoreboard players add @a[team=Blue,distance=..12] CT1 100
execute if entity @s[team=Blue] run scoreboard players add @a[team=Blue,distance=..12] CT2 100
execute if entity @s[team=Blue] run scoreboard players add @a[team=Blue,distance=..12] CT3 100

effect clear @s minecraft:resistance
effect clear @s minecraft:slowness
effect clear @s minecraft:slow_falling
effect give @s minecraft:resistance 3 4 true
effect give @s minecraft:speed 3 0 true
attribute @s minecraft:generic.knockback_resistance base set 0

scoreboard players set @s counter_1 0

#リセット
tag @s remove SkillReady1