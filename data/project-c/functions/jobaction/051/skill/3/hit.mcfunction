execute at @e[tag=hit,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["this"],Duration:1}
execute as @e[tag=this] at @e[tag=hit,limit=1] rotated ~ 0 positioned ^ ^ ^-0.1 run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=this] counter 20
execute as @e[tag=this] at @s run function project-c:jobaction/051/skill/3/hit_loop
execute positioned as @e[tag=this,limit=1] anchored eyes positioned ^ ^ ^ facing entity @e[tag=hit,limit=1] eyes positioned as @e[tag=this,limit=1] run tp @s ~ ~ ~ ~ ~

playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1.2 1.5
execute at @s run playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1.2 1.5
attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-51-51
execute if score @s counter_3 matches 1 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-51-51 "gitenken_boost" 1.5 add
execute if score @s counter_3 matches 2 run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-51-51 "gitenken_boost" 3.0 add
execute if score @s counter_3 matches 3.. run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-51-51 "gitenken_boost" 4.5 add
attribute @s minecraft:generic.attack_speed modifier add 0-0-0-51-51 "gitenken_boost" 19 add
scoreboard players set @s counter_3 22

tag @e[tag=hit] remove hit
tag @e[tag=this] remove this
