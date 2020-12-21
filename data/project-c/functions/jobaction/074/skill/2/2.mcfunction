scoreboard players operation #074dummy playerNumber = @s playerNumber
execute as @e[tag=074lavafire] if score @s playerNumber = @s playerNumber run tag @s add 074lava_dummy
execute at @e[tag=074lava_dummy] run particle minecraft:lava ~ ~ ~ 0 0 0 0 1 force @a
execute at @e[tag=074lava_dummy] run particle minecraft:lava ~ ~ ~ 0 0 0 0 1 normal @a
execute as @a if score @s playerNumber = #074dummy playerNumber run tag @s add 074player
execute at @e[tag=074lava_dummy] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["074dummy","074lava_blocking"],Particle:"flame",Radius:0.7f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:60,DurationOnUse:0,Age:0,WaitTime:5,Potion:"minecraft:strong_harming",CustomName:'{"text":"ラヴァジャヴェリン","color":"red"}'}
execute as @e[tag=074dummy] run data modify entity @s Owner set from entity @a[tag=074player,limit=1] UUID
tag @e[tag=074dummy] remove 074dummy
tag @a[tag=074player] remove 074player
data merge block 37 2 33 {auto:1b}
scoreboard players reset #074dummy
kill @e[tag=074lava_dummy]