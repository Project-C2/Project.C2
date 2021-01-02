execute unless entity @s[tag=110geometric] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {CustomName:'{"text": "吸根","color":"dark_green","italic":false}',Tags:["this"],Particle:"happy_villager",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:0b,Duration:1},{Id:2b,Amplifier:3b,Duration:21}]}
execute if entity @s[tag=110geometric] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {CustomName:'{"text": "吸根","color":"dark_green","italic":false}',Tags:["this"],Particle:"happy_villager",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:7b,Amplifier:0b,Duration:1},{Id:2b,Amplifier:3b,Duration:21}]}
tag @e[tag=this] remove this
tag @s add 110
execute as @a[tag=110drainplant_user] if score @s playerNumber = @e[tag=110,limit=1,sort=nearest] playerNumber run tag @s add 110user
tag @s remove 110
execute at @a[tag=110user] run summon area_effect_cloud ~ ~0.5 ~ {Tags:["this"],Particle:"heart",Age:4,Duration:5,WaitTime:1,Radius:1f,Effects:[{Id:6b,Amplifier:0b,Duration:1}]}
execute as @e[tag=this] run data modify entity @s Owner set from entity @a[tag=110user,limit=1] UUID
tag @e[tag=this] remove this

summon armor_stand ~ ~ ~ {Tags:["this","110drainplant_hit_stand"],Invisible:1b,Marker:1b,NoGravity:1b}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @e[tag=hit,limit=1,sort=nearest] playerNumber
scoreboard players operation @e[tag=this,limit=1] counter_2 = @s playerNumber
execute if entity @s[tag=110geometric] run tag @e[tag=this] add 110geometric
data merge block -52 67 -60 {auto:1b}
tag @e[tag=this] remove this
tag @e[tag=hit] add 110drainplant-hitting
tag @e[tag=hit] remove hit
particle minecraft:happy_villager ^1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:happy_villager ^-1 ^ ^1 0 1.5 0 1 100 force @a
particle minecraft:happy_villager ^-1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:happy_villager ^1 ^ ^-1 0 1.5 0 1 100 force @a
particle minecraft:happy_villager ^1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:happy_villager ^-1.414 ^ ^ 0 1.5 0 1 100 normal @a
particle minecraft:happy_villager ^ ^ ^1.414 0 1.5 0 1 100 normal @a
particle minecraft:happy_villager ^ ^ ^-1.414 0 1.5 0 1 100 normal @a
playsound minecraft:block.sweet_berry_bush.break master @a ~ ~ ~ 1.2 0.5
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 1.2 2
kill @s