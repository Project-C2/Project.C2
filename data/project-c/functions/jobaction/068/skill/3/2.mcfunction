scoreboard players add @s[nbt={OnGround:0b}] counter 1
kill @s[scores={counter=60..}]
tag @s[nbt={OnGround:1b}] add 068-fovosStandong
scoreboard players add @s[tag=068-fovosStandong] counter_1 1

particle lava ~ ~ ~ 0 0 0 1 1 force @a

execute if entity @s[tag=068-fovosStandong,scores={counter_1=1}] run tp @s ~ ~ ~ ~-20 ~
execute if entity @s[tag=068-fovosStandong,scores={counter_1=2..5}] run tp @s ~ ~ ~ ~20 ~

execute if entity @s[tag=068-fovosStandong,scores={counter_1=2..5}] run summon minecraft:armor_stand ^ ^18 ^-50 {HandItems:[{id:"minecraft:iron_sword",Count:1b}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["068-fovosplane","068-fovosplaneSummon"],Silent:1,Marker:1}

execute if entity @s[tag=068-fovosStandong,tag=068-fovosStandRed,scores={counter_1=2..5}] run summon minecraft:armor_stand ^ ^18 ^-50 {Invisible:1,NoGravity:1,Tags:["068-fovosline","068-fovoslineRed","068-fovoslineSummon"],Silent:1,Marker:1}

execute if entity @s[tag=068-fovosStandong,tag=068-fovosStandBlue,scores={counter_1=2..5}] run summon minecraft:armor_stand ^ ^20 ^-50 {Invisible:1,NoGravity:1,Tags:["068-fovosline","068-fovoslineBlue","068-fovoslineSummon"],Silent:1,Marker:1}

execute as @e[tag=068-fovosplaneSummon] at @s run tp @s ^ ^ ^1 facing entity @e[tag=068-fovosStand,limit=1]
execute as @e[tag=068-fovosplaneSummon] at @s run tp @s ^ ^ ^ ~ 0


execute as @e[tag=068-fovoslineSummon] at @s run tp @s ^ ^ ^1 facing entity @e[tag=068-fovosStand,limit=1]
execute as @e[tag=068-fovoslineSummon] at @s run tp @s ^ ^ ^ ~ 0

execute as @e[tag=068-fovosplaneSummon] at @s run tag @s remove 068-fovosplaneSummon

execute as @e[tag=068-fovoslineSummon] at @s run tag @s remove 068-fovoslineSummon

execute if entity @s[tag=068-fovosStand] run data merge block -33 8 31 {auto:1b}
execute if entity @s[tag=068-fovosStand] run data merge block -35 5 31 {auto:1b}

execute if entity @s[tag=068-fovosStandong,scores={counter_1=40}] run function project-c:jobaction/068/skill/3/3-say
kill @s[tag=068-fovosStandong,scores={counter_1=40..}]