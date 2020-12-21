#実行者     -> tag=15-1-Stand && tag=skillStage2
#実行地点   -> 実行者

tag @s remove skillStage2
tag @s add skillStage3
tag @s add success

scoreboard players reset @s counter

execute if entity @s[tag=Red] run tag @a[team=Blue,distance=..1.5,sort=nearest,limit=1] add 15-1-Target
execute if entity @s[tag=Blue] run tag @a[team=Red,distance=..1.5,sort=nearest,limit=1] add 15-1-Target
playsound minecraft:block.conduit.deactivate master @a[tag=15-1-Target] ~ ~ ~ 1 0.5
effect give @a[tag=15-1-Target] minecraft:wither 5 2
effect give @a[tag=15-1-Target] minecraft:resistance 5 1

summon minecraft:area_effect_cloud ~ ~3 ~ {Tags:["15-1-stanAEC"],Duration:32768}

data merge block 59 8 -118 {auto:1b}