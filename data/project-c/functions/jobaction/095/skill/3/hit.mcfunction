effect give @a[tag=095riding] slow_falling 2 0
effect give @a[tag=095riding] resistance 1 4
particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 1 8 normal @a
particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 1 2 force @a
particle minecraft:cloud ~ ~ ~ 1 1 1 1 800 normal @a
particle minecraft:cloud ~ ~ ~ 2 2 2 0.5 800 normal @a
particle minecraft:cloud ~ ~ ~ 1 1 1 1 400 force @a


execute at @e[tag=095hit,limit=1,sort=nearest] run summon area_effect_cloud ~ ~ ~ {Tags:["095hit_AEC"],Duration:1}
scoreboard players operation @e[type=area_effect_cloud,tag=095hit_AEC,limit=1] counter = @s counter_4
execute at @e[type=area_effect_cloud,tag=095hit_AEC,limit=1] facing entity @s feet as @e[type=area_effect_cloud,tag=095hit_AEC,limit=1,sort=nearest] run function project-c:jobaction/095/skill/3/hit_tp
summon minecraft:creeper ~ -10 ~ {CustomName:'{"text":"ヒポグリフ","color":"#dddddd","bold":true,"underlined":true,"italic":false}',Fuse:0,ExplosionRadius:2,Tags:["this"]}
tp @e[tag=this] @e[type=area_effect_cloud,tag=095hit_AEC,limit=1] 
tag @e[type=area_effect_cloud,tag=095hit_AEC,limit=1] remove 095hit_AEC
tag @e[tag=this] remove this


tag @e[tag=095hit] remove 095hit
tag @s add 095
execute as @e[tag=095-3] if score @s playerNumber = @e[tag=095,limit=1,sort=nearest,distance=..1] playerNumber run scoreboard players set @s counter 200
tag @s remove 095