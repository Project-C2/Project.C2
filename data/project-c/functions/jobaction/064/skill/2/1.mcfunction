scoreboard players add @s counter 1
execute if entity @s run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 2

execute as @s[tag=062-2SpawnerR] run summon armor_stand ^ ^-1 ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["062-2","062-2R","062-2Unlocated"]}

execute as @s[tag=062-2SpawnerB] run summon armor_stand ^ ^-1 ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["062-2","062-2B","062-2Unlocated"]}

execute as @s[tag=062-2SpawnerR] run effect give @e[tag=Battle,team=Blue,distance=..3] instant_damage 1 0 true

execute as @s[tag=062-2SpawnerB] run effect give @e[tag=Battle,team=Red,distance=..3] instant_damage 1 0 true

execute if entity @s run teleport @e[tag=062-2Unlocated,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute if entity @s run teleport @e[tag=062-2Unlocated,limit=1,sort=nearest] ~ ~0.2 ~ ~-90 ~

execute if entity @s run scoreboard players set @e[tag=062-2Unlocated,limit=1,sort=nearest] counter_1 0

execute if entity @s run tag @e[tag=062-2Unlocated,limit=1,sort=nearest] remove 062-2Unlocated

teleport @s ^ ^ ^0.5 ~ ~

particle minecraft:firework ~ ~1 ~ 0.1 0.1 0.1 0.5 10 force
kill @s[scores={counter=13..}]
data merge block -107 5 31 {auto:1b}