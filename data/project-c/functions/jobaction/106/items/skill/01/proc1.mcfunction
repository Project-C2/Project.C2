#スキル6
execute if score @s 106-relieveD matches 1.. run scoreboard players remove @s 106-relieveD 1
execute anchored eyes run particle minecraft:sneeze ~ ~1 ~ 0.2 0.4 0.2 0.1 1 force





execute if score @s 106-relieveD matches 0 run summon area_effect_cloud ~ ~1 ~ {Particle:"",Radius:0.1f,WaitTime:1,Duration:5,Age:4,Effects:[{Id:7b,Amplifier:0b,Duration:1,ShowIcon:0b},{Id:11b,Amplifier:2b,Duration:1,ShowIcon:0b}]}
execute if score @s 106-relieveD matches 0 run effect give @s minecraft:wither 3 4 true
execute if score @s 106-relieveD matches 0 anchored eyes run particle minecraft:damage_indicator ~ ~1 ~ 0.2 0.4 0.2 1 10 force
execute if score @s 106-relieveD matches 0 run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 1 1.4
execute if score @s deathCount matches 1.. run scoreboard players reset @s 106-relieveD
execute if score @s 106-relieveD matches 0 run scoreboard players reset @s 106-relieveD