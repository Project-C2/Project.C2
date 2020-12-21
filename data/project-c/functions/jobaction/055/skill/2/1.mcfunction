scoreboard players add @s counter 1
scoreboard players add @s counter_1 1
scoreboard players set @s[scores={counter_1=2}] counter_1 0

execute if entity @s[scores={counter_1=1}] run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
execute if entity @s[scores={counter_1=1}] run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

execute as @s[scores={counter_1=1},tag=055-2SpawnerR] run summon armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b}],Pose:{RightArm:[350f,0f,270f]},NoGravity:1b,Marker:1b,Invisible:1b,Tags:["055-2","055-2R","055-2Unlocated"]}

execute as @s[scores={counter_1=1},tag=055-2SpawnerB] run summon armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b}],Pose:{RightArm:[350f,0f,270f]},NoGravity:1b,Marker:1b,Invisible:1b,Tags:["055-2","055-2B","055-2Unlocated"]}

execute if entity @s[scores={counter_1=1}] run teleport @e[tag=055-2Unlocated,limit=1,sort=nearest] ~ ~ ~ ~ ~

execute if entity @s[scores={counter_1=1}] run teleport @e[tag=055-2Unlocated,limit=1,sort=nearest] ~ ~0.2 ~ ~-90 ~

execute if entity @s[scores={counter_1=1}] run scoreboard players set @e[tag=055-2Unlocated,limit=1,sort=nearest] counter_1 0

execute if entity @s[scores={counter_1=1}] run tag @e[tag=055-2Unlocated,limit=1,sort=nearest] remove 055-2Unlocated

teleport @s ^ ^ ^1.5 ~ ~

particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.5 10 force
kill @s[scores={counter=12..}]
data merge block 61 5 -20 {auto:1b}