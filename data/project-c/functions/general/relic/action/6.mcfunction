execute at @a[scores={relic=6}] if entity @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] run tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] add DoubleArrowC
execute at @a[scores={relic=6}] if entity @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] run tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] add DoubleArrow
execute if entity @e[tag=DoubleArrowC,limit=1] as @e[tag=DoubleArrowC] store result score @s relicCount run data get entity @s damage
execute if entity @e[tag=DoubleArrowC,limit=1] as @e[tag=DoubleArrowC] store result entity @s damage float 1.5 run scoreboard players get @s relicCount
execute if entity @e[tag=DoubleArrowC,limit=1] as @e[tag=DoubleArrowC] run tag @s remove DoubleArrowC

execute as @a[scores={relic=6},gamemode=!spectator] at @s run function project-c:general/relic/action/daisyou
execute if entity @a[scores={relic=6,jobNumber=21},limit=1] at @a[scores={relic=6,jobNumber=21}] if entity @e[distance=..7,tag=DoubleArrow,sort=nearest,limit=1] run data merge entity @e[distance=..7,tag=DoubleArrow,sort=nearest,limit=1] {damage:1.0d,life:1200}

