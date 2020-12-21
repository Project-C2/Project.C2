scoreboard players set @s counter_2 16
summon armor_stand ~ ~ ~ {Tags:["023-1-Animation","023-13"],Marker:1b,NoGravity:1b,Invisible:1b}
execute as @e[tag=023-1-Animation] at @s run function project-c:jobaction/023/skill/1/0-3a
execute if entity @s[team=Red] run team join RedDummy @e[tag=023-1-Animation]
execute if entity @s[team=Blue] run team join BlueDummy @e[tag=023-1-Animation]
execute as @s at @s anchored eyes run tp @e[tag=023-1-Animation] ^ ^ ^0.5 ~ ~
data merge block -97 5 -71 {auto:1b}
particle dust 1 0 0 1 ~ ~0.1 ~ 0.7 0 0.7 1 150 normal @a
