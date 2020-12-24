execute unless entity @s[tag=110geometric] at @e[tag=hit] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["this"],Particle:"happy_villager",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:11b,Amplifier:0b,Duration:1},{Id:7b,Amplifier:0b,Duration:1}]}
execute if entity @s[tag=110geometric] at @e[tag=hit] run summon minecraft:area_effect_cloud ~ ~0.5 ~ {Tags:["this"],Particle:"happy_villager",Duration:5,Age:4,WaitTime:1,Radius:1.0f,Effects:[{Id:7b,Amplifier:0b,Duration:1}]}
tag @s add 110
execute as @a[tag=110drainplant_user] if score @s playerNumber = @e[tag=110,limit=1,sort=nearest] counter_2 run tag @s add 110user
tag @s remove 110
execute if entity @e[tag=hit,limit=1] at @a[tag=110user] run summon area_effect_cloud ~ ~0.5 ~ {Tags:["this"],Particle:"heart",Age:4,Duration:5,WaitTime:1,Radius:1f,Effects:[{Id:6b,Amplifier:0b,Duration:1}]}
execute as @e[tag=this] run data modify entity @s Owner set from entity @a[tag=110user,limit=1] UUID
tag @e[tag=this] remove this
tag @a[tag=110user] remove 110drainplant_user
tag @a[tag=110user] remove 110user
