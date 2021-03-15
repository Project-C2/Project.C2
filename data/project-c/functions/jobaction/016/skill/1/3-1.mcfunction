scoreboard players add @s counter 1
particle minecraft:flame ~ ~ ~ 0.5 0.5 0.5 0.05 5 force @a
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force @a
teleport @s ^ ^ ^1.5
execute unless block ~ ~ ~ #project-c:wancomatter/like_air run tag @s add 016-MeraHit
playsound minecraft:entity.blaze.burn master @a ~ ~ ~ 2 2
execute if entity @e[tag=016-Mera3,team=RedDummy] if entity @e[team=Blue,distance=..2] run tag @s add 016-MeraHit
execute if entity @e[tag=016-Mera3,team=BlueDummy] if entity @e[team=Red,distance=..2] run tag @s add 016-MeraHit
execute if entity @e[tag=016-MeraHit] run summon creeper ~ ~ ~ {CustomName:'{"text":"メラゾーマ"}',ignited:1b,ExplosionRadius:2b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute if entity @e[tag=016-MeraHit] run particle minecraft:flame ~ ~ ~ 0 0 0 0.3 200 force @a
execute if entity @e[tag=016-MeraHit] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0
execute if entity @e[tag=016-MeraHit,team=RedDummy] run execute as @e[distance=..3,team=Blue] at @s run effect give @s instant_damage 1 1
execute if entity @e[tag=016-MeraHit,team=BlueDummy] run execute as @e[distance=..3,team=Red] at @s run effect give @s instant_damage 1 1

execute if entity @e[tag=016-MeraHit] run scoreboard players add @s counter_1 1
kill @s[scores={counter_1=6..}]
kill @s[scores={counter=100..}]
