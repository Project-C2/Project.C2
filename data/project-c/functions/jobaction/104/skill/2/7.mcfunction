particle explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5

execute if entity @e[type=item,tag=104mine,limit=1] run tag @s add 104
execute if entity @e[type=item,tag=104mine,limit=1] as @e[type=item,tag=104mine] if score @s playerNumber = @e[tag=104,limit=1,sort=nearest] playerNumber run execute store result entity @s Age short 1 run scoreboard players get @s counter_1
execute if entity @e[type=item,tag=104mine,limit=1] run tag @s remove 104

scoreboard players set @s counter_1 5715
execute unless entity @e[tag=104_2vector,limit=1] run summon area_effect_cloud 0.0 0.7 0.0 {Tags:["104_2vector"],Duration:1}
execute positioned ~ ~0.5 ~ run function project-c:jobaction/104/skill/2/spread_mine

execute if entity @s[tag=104ponponR] run tag @e[tag=104mineF] add 104mineR
execute if entity @s[tag=104ponponB] run tag @e[tag=104mineF] add 104mineB
scoreboard players operation @e[tag=104mineF] playerNumber = @s playerNumber
tag @e[tag=104mineF] remove 104mineF
data merge block -122 61 -60 {auto:1b}

scoreboard players set @s counter 200