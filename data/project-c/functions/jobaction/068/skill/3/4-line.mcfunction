scoreboard players add @s[nbt={OnGround:0b}] counter 1

kill @s[scores={counter=60..}]
tag @s[nbt={OnGround:1b}] add 068-fovoslineong

execute if entity @s[tag=068-fovoslineong,tag=fovoslineRed] run particle minecraft:barrier ~ ~0.5 ~ 2 0 2 0 5 force @a[team=Red]

execute if entity @s[tag=068-fovoslineong,tag=fovoslineBlue] run particle minecraft:barrier ~ ~0.5 ~ 2 0 2 0 5 force @a[team=Blue]


kill @s[tag=068-fovoslineong]