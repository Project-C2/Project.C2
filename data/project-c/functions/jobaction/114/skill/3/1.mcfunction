#0.6block ^3
# summon armor_stand ^ ^-1.35 ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Tags:["114-ToheiRailGun","Initializing"],Pose:{Head:[0f,0f,0.0000000001f]},ArmorItems:[{},{},{},{id:"iron_block",Count:1b}]}
# summon armor_stand ^ ^-0.75 ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Tags:["114-ToheiRailGun","Initializing"],Pose:{Head:[0f,0f,0.0000000001f]},ArmorItems:[{},{},{},{id:"iron_block",Count:1b}]}
# summon armor_stand ^ ^-0.15 ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Tags:["114-ToheiRailGun","Initializing"],Pose:{Head:[0f,0f,0.0000000001f]},ArmorItems:[{},{},{},{id:"iron_block",Count:1b}]}
# summon armor_stand ^ ^0.45 ^1 {Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,DisabledSlots:2039583,Tags:["114-ToheiRailGun","Initializing"],Pose:{Head:[0f,0f,0.0000000001f]},ArmorItems:[{},{},{},{id:"iron_block",Count:1b}]}

execute positioned ^ ^ ^1 rotated ~-90 0 positioned ^ ^ ^1.2 rotated as @s rotated ~ 0 run function project-c:jobaction/114/skill/3/railgun/energy_tank/build
execute positioned ^ ^ ^1.6 run function project-c:jobaction/114/skill/3/railgun/gun_barrel/build
tag @s add DarkSushiBlader
execute as @e[tag=Initializing] positioned as @s rotated as @a[tag=DarkSushiBlader,limit=1] rotated ~ 0 run tp @s ~ ~ ~ ~ ~
tag @s remove DarkSushiBlader
tag @e[tag=Initializing] remove Initializing

schedule function project-c:jobaction/114/skill/3/schedule_loop/0 1t replace