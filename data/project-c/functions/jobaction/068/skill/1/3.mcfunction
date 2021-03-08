scoreboard players add @s counter 1
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0 0 0 1 0
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 1

execute if entity @s[tag=!068RiotCheckC,scores={counter=45..}] if entity @e[tag=!068RiotTargetC,distance=..40] run tp @s ^ ^ ^1 facing entity @e[limit=1,sort=nearest,tag=068-RiotTargetC]
execute if entity @s[tag=!068RiotCheckC,scores={counter=45..}] if entity @e[tag=!068RiotTargetC,distance=..40] run tag @s[tag=!068RiotCheckC] add 068RiotCheckC
tp @s ^ ^ ^1

execute unless block ^ ^ ^1 air run particle end_rod ^ ^ ^ 0 0 0 0.5 10 force @a
execute unless block ^ ^ ^1 air run summon creeper ~ ~ ~ {CustomName:'{"text":"ライオニックUA45"}',ignited:1b,ExplosionRadius:2b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b}
execute unless block ^ ^ ^1 air run kill @s


kill @s[scores={counter=200..}]