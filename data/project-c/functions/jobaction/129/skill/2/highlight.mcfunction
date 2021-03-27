summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:["this"]}
execute anchored eyes run tp @e[tag=this,limit=1] ^ ^ ^ ~ ~
execute as @e[tag=this,limit=1] at @s run function project-c:jobaction/129/skill/2/ground-check

#execute at @e[tag=this,tag=129-hit-block] if entity @e[type=!armor_stand,type=!area_effect_cloud,tag=!this,dx=0,dy=0,dz=0] run tag @e[tag=this,tag=129-hit-block] remove 129-hit-block

execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 0 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 18 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 36 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 54 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 72 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 90 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 108 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 126 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 144 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 162 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 180 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 198 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 216 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 234 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 252 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 270 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 288 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 306 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 324 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s
execute at @e[tag=this,tag=129-hit-block] align xyz positioned ~0.5 ~ ~0.5 rotated 342 0 run particle dust 0.7 0 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @s

kill @e[tag=this]