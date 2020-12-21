scoreboard players add @s[tag=068-kmong] counter_1 1
scoreboard players add @s[tag=068-kmong] counter_2 1


execute if entity @s[tag=068-kmong] run teleport @s ^ ^ ^ ~37 0

execute if entity @s[tag=068-kmong,scores={counter_2=1}] run summon minecraft:armor_stand ^ ^18 ^-70 {HandItems:[{id:"minecraft:iron_sword",Count:1b}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["068-kmbullet","068-kmbulletSummon"],Silent:1,Marker:1}

execute if entity @s[tag=068-kmong,scores={counter_2=2}] run summon minecraft:armor_stand ^2 ^18 ^-69 {HandItems:[{id:"minecraft:iron_sword",Count:1b}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["068-kmbullet","068-kmbulletSummon"],Silent:1,Marker:1}

execute as @e[tag=068-kmbulletSummon] at @s run tp @s ^ ^ ^1 facing entity @e[tag=068-kmong,limit=1]
execute as @e[tag=068-kmbulletSummon] at @s run tp @s ^ ^ ^ ~ 0
execute as @e[tag=068-kmbulletSummon] at @s run tag @s remove 068-kmbulletSummon

execute if entity @s[tag=068-kmong] run data merge block -37 5 31 {auto:1b}


kill @s[scores={counter_1=40..}]
scoreboard players set @s[tag=068-kmong,scores={counter_2=2}] counter_2 0