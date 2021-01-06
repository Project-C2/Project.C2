summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Tags:["114-ToheiRailGun","114-ToheiRailGunLight","Initializing"],Pose:{Head:[0f,0f,0.0000000001f]},ArmorItems:[{},{},{},{id:"iron_block",Count:1b}]}
scoreboard players operation @e[tag=114-ToheiRailGunLight,tag=!114-ToheiRailGunCompleteSetting,limit=1] counter_1 = #114-RailGunLightID counter
scoreboard players operation @e[tag=114-ToheiRailGunLight,tag=!114-ToheiRailGunCompleteSetting,limit=1] counter_3 = #114-RailGunLightID counter
scoreboard players add @e[tag=114-ToheiRailGunLight,tag=!114-ToheiRailGunCompleteSetting,limit=1] counter_3 1
execute if score @e[tag=114-ToheiRailGunLight,tag=!114-ToheiRailGunCompleteSetting,limit=1] counter_3 matches 12 run scoreboard players set @e[tag=114-ToheiRailGunLight,tag=!114-ToheiRailGunCompleteSetting,limit=1] counter_3 0
tag @e[tag=114-ToheiRailGunLight,tag=!114-ToheiRailGunCompleteSetting,limit=1] add 114-ToheiRailGunCompleteSetting
scoreboard players add #114-RailGunLightID counter 1