blockdata ~ ~ ~ {auto:0b}

scoreboard players add @e[tag=MakingMagicBoat] counter 1

execute @e[tag=MakingMagicBoat,score_counter=10] ~ ~ ~ execute @s[tag=MakingMagicBoatB] ~ ~ ~ teleport @e[tag=MakingMagicBoatA,r=3,c=1] ~ ~ ~ ~ ~
execute @e[tag=MakingMagicBoat,score_counter=10] ~ ~ ~ teleport @s ~0 ~0 ~0 ~18 ~0

execute @e[tag=MakingMagicBoat,score_counter_min=11] ~ ~ ~ execute @s[tag=MakingMagicBoatB] ~ ~ ~ teleport @e[tag=MakingMagicBoatA,r=3,c=1] ~ ~ ~ ~ ~
execute @e[tag=MakingMagicBoat,score_counter_min=11] ~ ~ ~ teleport @s ~0 ~0 ~0 ~9 ~0

execute @e[tag=MakingMagicBoatA] ~ ~ ~ execute @s[tag=Boat1] ~ ~ ~ summon area_effect_cloud ~ ~-1000 ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:32768,Tags:["MakingMagicTrace","EthereumTrace3"]}
execute @e[tag=MakingMagicBoatA] ~ ~ ~ execute @s[tag=Boat2] ~ ~ ~ summon area_effect_cloud ~ ~-1100 ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:32768,Tags:["MakingMagicTrace","EthereumTrace3"]}
execute @e[tag=MakingMagicBoatA] ~ ~ ~ execute @s[tag=Boat3] ~ ~ ~ summon area_effect_cloud ~ ~-1200 ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:32768,Tags:["MakingMagicTrace","EthereumTrace3"]}

kill @e[tag=MakingMagicBoat,score_counter_min=20]

execute @e[tag=MakingMagicBoatA] ~ ~ ~ execute @s[tag=Boat1] ~ ~ ~ blockdata -16 66 -62 {auto:1b}