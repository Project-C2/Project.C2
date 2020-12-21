scoreboard players set @s CT1 1000

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 2
particle explosion ~ ~1 ~ 0 0 0 1 1 force @a
particle dust 1 0 0 1 ~ ~ ~ 2.5 0.2 2.5 0 500 normal @a
execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,distance=..3.5,sort=nearest,limit=1] run tag @s add 041-trapf
execute as @e[tag=041-trapf,tag=!041-cardinal] run data merge entity @s {life:600,pickup:0b}
execute as @e[tag=041-trapf,tag=041-cardinal] run data merge entity @s {NoGravity:1b}
execute as @e[tag=041-trapf] run tag @s add Arrow
execute as @e[tag=041-trapf] run tag @s add 041-trap
execute if entity @s[team=Red] as @e[tag=041-trapf] run tag @s add 041-trap-r
execute if entity @s[team=Blue] as @e[tag=041-trapf] run tag @s add 041-trap-b
execute as @e[tag=041-trapf] run tag @s remove 041-trapf
clear @s bow{display:{Name:"{\"text\":\"cardinal bow\"}"}}

data merge block 119 2 -71 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1