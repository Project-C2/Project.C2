execute positioned ^ ^1 ^10.3 run summon skeleton_horse ~ ~3 ~ {Tags:["ini","first","117horse","117horse4","Battle"],DeathLootTable:"empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0d},{Name:"minecraft:generic.max_health",Base:4d}],Health:4f,NoAI:1b,Silent:1b}
execute positioned ^ ^1 ^10.3 run tp @e[tag=ini,limit=1] ~ ~ ~ ~-90 0
scoreboard players operation @e[tag=ini,limit=1] subcounter = @s subcounter
tag @e[tag=ini] remove ini

