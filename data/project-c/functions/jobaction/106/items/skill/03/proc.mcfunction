#スキル3
scoreboard players add @s counter 1
playsound minecraft:block.campfire.crackle master @a ~ ~ ~ 0.02 1.7
execute if score @s[tag=!106_fire_start] counter matches 60 at @s run playsound minecraft:item.flintandsteel.use master @a ~ ~ ~ 1 1.2
execute if score @s[tag=!106_fire_start] counter matches 60 at @s run data merge entity @s {Invulnerable:0b}
execute if score @s[tag=!106_fire_start] counter matches 60 run tag @s add 106_fire_start
execute if entity @s[tag=106_fire_start] run tp @s ~ ~ ~ ~1 ~
execute if score @s counter matches 60 at @s run playsound minecraft:item.firecharge.use master @a ~ ~ ~ 1 0.7
execute if score @s counter matches 60 run tag @s add 106_fire_execution
execute if score @s counter matches 60 run particle flame ~ ~1 ~ 0.3 0.3 0.3 0 40 force
execute if score @s counter matches 60.. run particle dust 1 1 0 1.3 ~ ~1 ~ 0.3 0.3 0.3 0 1 force


execute if entity @s[team=Red] run particle dust 1 0 0 1 ~ ~1 ~ 0.4 0.4 0.4 0 1 force @a
execute if entity @s[team=Blue] run particle dust 0 0 1 1 ~ ~1 ~ 0.4 0.4 0.4 0 1 force @a


execute if score @s[tag=106_fire_start] counter matches 160.. run scoreboard players set @s counter 59

execute if entity @s[tag=106_fire_start,tag=106_fire_execution,team=Red] as @e[tag=Battle,team=!Red,distance=..13] run tag @s add 106_fire_arrow_hit
execute if entity @s[tag=106_fire_start,tag=106_fire_execution,team=Blue] as @e[tag=Battle,team=!Blue,distance=..13] run tag @s add 106_fire_arrow_hit

execute if entity @s[tag=106_fire_start,tag=106_fire_execution] if entity @p[tag=106_fire_arrow_hit,gamemode=spectator] as @a[tag=106_fire_arrow_hit,gamemode=spectator] run tag @s remove 106_fire_arrow_hit

execute if entity @s[tag=106_fire_start,tag=106_fire_execution] if entity @e[tag=106_fire_arrow_hit,limit=1] run tag @s add 106_fire_this
execute if entity @s[tag=106_fire_start,tag=106_fire_execution] if entity @e[tag=106_fire_arrow_hit,limit=1] as @e[tag=106_fire_arrow_hit] run function project-c:jobaction/106/items/skill/03/shot

#execute if entity @s[tag=fire_start,tag=fire_execution] if entity @e[distance=0.01..13,tag=fire_proc,tag=!fire_enable,limit=1] run function ex3:items/skill/0011/proc2
#execute if entity @s[tag=fire_start,tag=fire_execution] unless entity @e[distance=0.01..13,tag=fire_proc,tag=!fire_enable,limit=1] if entity @e[distance=0.01..13,tag=fire_proc,tag=fire_enable,limit=1] as @e[distance=0.01..13,tag=fire_proc,tag=fire_enable] run tag @s remove fire_enable
#execute if entity @s[tag=fire_start,tag=fire_execution] if entity @e[distance=0.01..13,tag=fire_proc,limit=1] as @e[distance=0.01..13,tag=fire_proc] run tag @s remove fire_proc

execute if entity @s[tag=106_fire_this] run tag @s remove 106_fire_this
execute if entity @s[tag=106_fire_execution] run tag @s remove 106_fire_execution
