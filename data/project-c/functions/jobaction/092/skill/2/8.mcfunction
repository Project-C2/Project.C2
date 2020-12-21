particle minecraft:explosion ~ ~0.5 ~ 0 0 0 1 1 force @a
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 1
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 0.5
execute if entity @s[team=RedDummy] positioned as @e[tag=Battle,team=!Red,distance=8..100,limit=1,sort=nearest] run summon area_effect_cloud ~ ~0.4 ~ {Duration:1,Tags:["092target"]}
execute if entity @s[team=BlueDummy] positioned as @e[tag=Battle,team=!Blue,distance=8..100,limit=1,sort=nearest] run summon area_effect_cloud ~ ~0.4 ~ {Duration:1,Tags:["092target"]}
execute facing entity @e[tag=092target,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
tag @e[tag=092target] remove 092target
