execute at @a[scores={relic=6}] if entity @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] run tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] add DoubleArrowC
execute at @a[scores={relic=6}] if entity @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] run tag @e[type=arrow,distance=..5,limit=1,sort=nearest,tag=!DoubleArrow] add DoubleArrow
execute if entity @e[tag=DoubleArrowC,limit=1] as @e[tag=DoubleArrowC] store result score @s relicCount run data get entity @s damage
execute if entity @e[tag=DoubleArrowC,limit=1] as @e[tag=DoubleArrowC] store result entity @s damage float 1.5 run scoreboard players get @s relicCount
execute if entity @e[tag=DoubleArrowC,limit=1] as @e[tag=DoubleArrowC] run tag @s remove DoubleArrowC

execute if entity @a[scores={relic=6},nbt={HurtTime:9s},limit=1] run tag @a[scores={relic=6},nbt={HurtTime:9s}] add relic6damaged
execute if entity @a[tag=relic6damaged,limit=1] run effect give @a[tag=relic6damaged] minecraft:instant_damage 1 0
execute if entity @e[tag=relic6damaged,limit=1] at @e[tag=relic6damaged] run particle minecraft:dust 1 0 0 3 ~ ~1 ~ 0.5 0.5 0.5 0 20 force @a[distance=1..]
execute if entity @e[tag=relic6damaged,limit=1] at @e[tag=relic6damaged] run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 2 0
execute if entity @a[scores={relic=6},tag=relic6damaged,limit=1] run tag @a[scores={relic=6},tag=relic6damaged] remove relic6damaged
execute if entity @a[scores={relic=6,jobNumber=21},limit=1] at @a[scores={relic=6,jobNumber=21}] if entity @e[distance=..7,tag=DoubleArrow,sort=nearest,limit=1] run data merge entity @e[distance=..7,tag=DoubleArrow,sort=nearest,limit=1] {damage:1.0d,life:1200}

