scoreboard players add @s counter_4 1
execute if entity @s[scores={counter_4=..22}] run scoreboard players set @s CT3 -3600
execute if entity @s[scores={counter_4=..102}] run scoreboard players operation #tmp playerNumber = @s playerNumber
execute if entity @s[scores={counter_4=..102}] run execute as @e[tag=040-Air] if score @s playerNumber = #tmp playerNumber run tag @s add 040-Air_my
execute if entity @s[scores={counter_4=..102}] run scoreboard players reset #tmp
execute as @e[tag=040-Air_my] at @s run scoreboard players add @s counter 1
execute if entity @s[scores={counter_4=1..101,CT3=..1200}] if block ~ ~1 ~ minecraft:air at @s run teleport @s ~ ~0.1 ~
execute if entity @s[scores={counter_4=1..101}] run particle minecraft:end_rod ^ ^1 ^ 2 2 2 0.2 10 force
execute as @e[tag=040-Air_my] at @s run teleport @s ~ ~0.15 ~ ~11 ~
execute as @e[tag=040-Air_my] at @s run particle minecraft:dust 255 0 0 3 ^ ^ ^2 0 0 0 0 1 force
execute if entity @s[scores={counter_4=201..}] run scoreboard players reset @s counter_4
execute if entity @s[scores={counter_4=1..81}] run effect give @s minecraft:slow_falling 1 1 true
execute if entity @s[scores={counter_4=1..81}] run effect give @s minecraft:levitation 1 0 true
execute as @e[tag=040-Air_my] at @s run particle minecraft:dust 0 0 0 3 ^3 ^ ^3 0 0 0 0 1 force
execute as @e[tag=040-Air_my] at @s run particle minecraft:dust 1 0 0 3 ^-3 ^ ^3 0 0 0 0 1 force
tag @e[tag=040-Air_my] remove 040-Air_my
execute if entity @s[scores={counter_4=102}] run me 「受けよ！！！」
execute if entity @s[scores={counter_4=102}] run particle minecraft:dust 255 0 0 3 ~ ~ ~ 3 3 3 0 300 force
execute if entity @s[scores={counter_4=102}] run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 3 2
execute if entity @s[scores={counter_4=102..}] run teleport @s @s
execute if entity @s[scores={counter_4=102}] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0.3 200 force
execute if entity @s[scores={counter_4=141}] run me 「エヌマ・エリシュ！！！！！」
execute if entity @s[scores={counter_4=131}] run playsound minecraft:block.portal.travel master @a ~ ~ ~ 3 0.75
execute if entity @s[scores={counter_4=141}] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 1
execute if entity @s[scores={counter_4=141}] run summon minecraft:marker ~ ~ ~ {Tags:["040-Enuma","first","Projectile"]}
execute if entity @s[scores={counter_4=141}] run teleport @e[tag=040-Enuma,limit=1,sort=nearest] ~ ~1 ~ ~ ~
execute if entity @s[scores={counter_4=141}] run scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
execute if entity @s[scores={counter_4=141}] run scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
execute if entity @s[scores={counter_4=141}] as @e[tag=040-Air1,tag=first] at @s run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={counter_4=141}] as @e[tag=040-Air2,tag=first] at @s run teleport @s ~ ~ ~ ~180 ~
execute if entity @s[scores={counter_4=141}] run tag @e[tag=first] remove first
execute if entity @s[scores={counter_4=141}] run data merge block 111 2 -71 {auto:1b}
