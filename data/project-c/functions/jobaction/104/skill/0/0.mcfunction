playsound minecraft:entity.item.pickup master @a ~ ~ ~ 1 1.3
playsound minecraft:entity.witch.throw master @a ~ ~ ~ 1 0.8
summon area_effect_cloud ~ ~0.2 ~ {Particle:"minecraft:enchant",Radius:0.7f,Duration:5,Age:4,WaitTime:1,Effects:[{Id:2b,Amplifier:2b,Duration:12,ShowIcon:1b,ShowParticles:0b}]}
particle minecraft:explosion ^ ^1 ^1 0 0 0 1 3 force @a[distance=1..]
summon armor_stand ~ ~ ~ {Tags:["this","104bomb"],Marker:1b,Invisible:1b,NoGravity:1b}
execute if entity @s[team=Red] run tag @e[tag=this] add 104bombR
execute if entity @s[team=Blue] run tag @e[tag=this] add 104bombB
scoreboard players operation @e[tag=this,limit=1,sort=nearest] playerNumber = @s playerNumber
tp @e[limit=1,sort=nearest,tag=this] ^ ^1.5 ^1 ~ ~-20
tag @e[tag=this] remove this

data merge block -126 61 -60 {auto:1b}