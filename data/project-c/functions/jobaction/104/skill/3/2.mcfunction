playsound minecraft:item.totem.use master @a ~ ~ ~ 2 0.9
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0.7
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 2 0.7
playsound minecraft:entity.firework_rocket.twinkle master @a ~ ~ ~ 2 0.5

particle minecraft:flame ~ ~1 ~ 1 1 1 1 1200 normal @a
particle minecraft:flame ~ ~1 ~ 1 1 1 1 300 force @a

execute anchored eyes run summon area_effect_cloud ^ ^ ^ {Tags:["this","104dokkan"],Duration:174}
execute if entity @s[team=Red] run tag @e[tag=this] add 104dokkanR
execute if entity @s[team=Blue] run tag @e[tag=this] add 104dokkanB
scoreboard players operation @e[tag=this,limit=1,sort=nearest] playerNumber = @s playerNumber
data modify entity @e[tag=this,limit=1,sort=nearest] Owner set from entity @s UUID
tag @e[tag=this] remove this

data merge block -120 61 -62 {auto:1b}