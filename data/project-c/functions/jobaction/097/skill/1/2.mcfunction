execute positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^6 {Tags:["vector"],Duration:1}
scoreboard players set @s counter_3 0
execute anchored eyes positioned ^ ^ ^0.5 rotated ~90 90 anchored feet run function project-c:jobaction/097/skill/1/2-loop
scoreboard players set @s counter_3 0
execute anchored eyes positioned ^ ^ ^0.5 rotated ~-90 90 anchored feet run function project-c:jobaction/097/skill/1/2-loop
execute anchored eyes run summon minecraft:arrow ^ ^ ^0.5 {Tags:["097sagittaire","this","Arrow"],damage:2.1d,life:1200s,pickup:2b,PierceLevel:127b}
tag @s add user
execute as @e[tag=this] run data modify entity @s Owner set from entity @a[tag=user,limit=1,sort=nearest] UUID
tag @s remove user
execute as @e[tag=this] run data modify entity @s Motion set from entity @e[tag=vector,limit=1] Pos
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber
tag @e[tag=vector] remove vector
tag @e[tag=this] remove this
tag @e[tag=this2] remove this2


playsound minecraft:item.crossbow.shoot master @a ~ ~ ~ 10 0.5
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 10 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 10 2


data merge block 59 2 89 {auto:1b}
scoreboard players reset @s counter_1