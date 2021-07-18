particle minecraft:dust 1 1 0 3 ~ ~0.5 ~ 0.7 0.7 0.7 0 20 force @a
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 2
summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{Enchantments:[{lvl:1s, id:"sharpness"}],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["040-ZaihouB","first"],Silent:1,Marker:1}
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
scoreboard players operation @e[tag=first] counter = @s counter_1
execute at @e[tag=040-ZaihouB,tag=first] run tag @e[tag=Battle,distance=10..100] add hit
execute if entity @e[tag=hit,limit=1] run data merge storage wnkm_check_hit: {option:0b,including_myself:0b}
execute if entity @e[tag=hit,limit=1] run function project-c:general/teamcheck
execute as @e[tag=040-ZaihouB,tag=first] at @s run tp @s ^ ^1 ^ facing entity @e[tag=hit,limit=1,sort=nearest]
tag @e[tag=first] remove first
tag @e[tag=hit] remove hit
scoreboard players set @s subcounter 0
data merge block 107 2 -69 {auto:1b}
