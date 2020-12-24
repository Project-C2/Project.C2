scoreboard players set #110- counter_3 1000
summon minecraft:armor_stand ~ ~1.6 ~ {Tags:["this","110horming_missile"],Marker:1b,NoGravity:1b,Invisible:1b}

execute anchored eyes positioned ^ ^ ^ run tp @e[tag=this,limit=1] ~ ~-0.65 ~ ~ ~
execute if entity @s[team=Red] run tag @e[tag=this] add 110missileR
execute if entity @s[team=Blue] run tag @e[tag=this] add 110missileB
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
tag @e[tag=this] remove this

playsound minecraft:block.piston.contract master @a ~ ~ ~ 1.2 0.5
data merge block -48 67 -62 {auto:1b}