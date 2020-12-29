#スキル16


#スキル16

scoreboard players add #106_perforate_p counter 1

execute positioned ^ ^ ^ run particle minecraft:dust 1 1 0 1 ~ ~ ~ 0 0 0 0 1 force @a
execute positioned ^ ^ ^ run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 0.04 1.2


execute if score #106_perforate_p counter matches ..200 positioned ^ ^ ^0.5 run function project-c:jobaction/106/items/skill/13/particle
execute unless score #106_perforate_p counter matches ..200 run scoreboard players reset #106_perforate_p
