summon area_effect_cloud ~ ~ ~ {CustomName:'{"text": "ゾンビホース・ジェットコースター","color":"dark_green","italic":false}',Radius:4f,Particle:"minecraft:explosion",Duration:5,Age:4,WaitTime:1,Effects:[{Id:7b,Amplifier:1b,Duration:1},{Id:19b,Amplifier:0b,Duration:100}]}
playsound entity.generic.explode master @a ~ ~ ~ 2 0.5

execute as @e[tag=117zombie] if score @s playerNumber = @e[tag=117_1,limit=1,sort=nearest] playerNumber run kill @s
execute rotated ~060 0 run summon zombie ^ ^-2 ^2 {Tags:["117zombie","117zombie_inGround","first"],Health:12f,NoAI:1b,Invulnerable:1b,ArmorDropChances:[-100f,-100f,-100f,-100f],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:0}}}],Attributes:[{Name:"minecraft:generic.max_health",Base:9.5d},{Name:"minecraft:generic.attack_damage",Base:4.0d},{Name:"minecraft:generic.movement_speed",Base:0.26d},{Name:"minecraft:generic.follow_range",Base:48d}]}
execute rotated ~180 0 run summon zombie ^ ^-2 ^2 {Tags:["117zombie","117zombie_inGround","first"],Health:12f,NoAI:1b,Invulnerable:1b,ArmorDropChances:[-100f,-100f,-100f,-100f],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:0}}}],Attributes:[{Name:"minecraft:generic.max_health",Base:9.5d},{Name:"minecraft:generic.attack_damage",Base:4.0d},{Name:"minecraft:generic.movement_speed",Base:0.26d},{Name:"minecraft:generic.follow_range",Base:48d}]}
execute rotated ~300 0 run summon zombie ^ ^-2 ^2 {Tags:["117zombie","117zombie_inGround","first"],Health:12f,NoAI:1b,Invulnerable:1b,ArmorDropChances:[-100f,-100f,-100f,-100f],ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:0}}}],Attributes:[{Name:"minecraft:generic.max_health",Base:9.5d},{Name:"minecraft:generic.attack_damage",Base:4.0d},{Name:"minecraft:generic.movement_speed",Base:0.26d},{Name:"minecraft:generic.follow_range",Base:48d}]}

execute if entity @s[tag=117_1R] as @e[tag=first] run data modify entity @s ArmorItems[{id:"minecraft:leather_helmet"}].tag.display.color set value 16711680
execute if entity @s[tag=117_1B] as @e[tag=first] run data modify entity @s ArmorItems[{id:"minecraft:leather_helmet"}].tag.display.color set value 255
execute if entity @s[tag=117_1R] as @e[tag=first] run team join Red @s
execute if entity @s[tag=117_1B] as @e[tag=first] run team join Blue @s
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
execute as @e[tag=first] at @s facing entity @e[tag=117_1,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~54 0

tag @e[tag=first] remove first
data merge block 32 61 -60 {auto:1b}
kill @s