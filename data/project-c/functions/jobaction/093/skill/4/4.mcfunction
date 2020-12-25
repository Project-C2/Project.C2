tag @s add 093_4wave_onGround
scoreboard players set @s counter 10
effect give @e[tag=Battle,distance=..3,type=!tropical_fish] instant_damage 15 0
particle explosion ~ ~ ~ 0.3 0.3 0.3 1 4 force @a
execute if entity @s[type=tropical_fish] run function project-c:jobaction/093/skill/4/4-explosion
