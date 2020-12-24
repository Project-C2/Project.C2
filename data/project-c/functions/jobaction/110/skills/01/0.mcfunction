scoreboard players set #110- counter_3 1201
summon minecraft:area_effect_cloud ~ ~1.6 ~ {Tags:["this","110fireball"],Duration:200}
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID
execute positioned ~ ~1.6 ~ run tp @e[tag=this,limit=1] ^ ^ ^1 ~ ~
execute if entity @s[scores={counter_9=3}] run tag @e[tag=this] add 110geometric
tag @e[tag=this] remove this

playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.2 0.7
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.2 0.7
tag @s add 110fireball_addable
summon armor_stand ~ ~ ~ {Tags:["this","110fireball_p_stand"],Invisible:1b,Marker:1b,NoGravity:1b}
scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute if score #110- counter_2 matches 1 run scoreboard players set @e[tag=this] counter_5 1140
execute if score #110- counter_2 matches 2 run scoreboard players set @e[tag=this] counter_6 1140
execute if score #110- counter_2 matches 3 run scoreboard players set @e[tag=this] counter_7 1140
tag @e[tag=this] remove this

data merge block -52 61 -62 {auto:1b}
data merge block -52 61 -60 {auto:1b}