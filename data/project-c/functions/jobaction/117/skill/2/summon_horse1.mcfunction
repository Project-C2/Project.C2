scoreboard players add @s subcounter 1
execute positioned ^ ^ ^4.8 run summon skeleton_horse ~ ~3 ~ {Tags:["ini","first","117horse","117horse1","Battle"],DeathLootTable:"empty",Attributes:[{Name:"minecraft:generic.movement_speed",Base:0d},{Name:"minecraft:generic.max_health",Base:4d}],Health:4f,NoAI:1b,Silent:1b}
execute positioned ^ ^ ^4.8 run tp @e[tag=ini,limit=1] ~ ~ ~ ~90 0
scoreboard players operation @e[tag=ini,limit=1] subcounter = @s subcounter
tag @e[tag=ini] remove ini


execute rotated ~36 ~ run function project-c:jobaction/117/skill/2/summon_horse2
execute unless score @s subcounter matches 5.. rotated ~72 ~ run function project-c:jobaction/117/skill/2/summon_horse1
