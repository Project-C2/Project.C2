scoreboard players set @s CT2 1040
scoreboard players set @s counter_2 0
scoreboard players set @s usedSkill 2

execute as @e[tag=125star] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run teleport @s ~ ~-0.5 ~

execute as @e[tag=125star,team=RedDummy] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run effect give @e[team=Blue,tag=Battle,distance=..0.7] instant_damage 1 1 true
execute as @e[tag=125star,team=BlueDummy] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run effect give @e[team=Red,tag=Battle,distance=..0.7] instant_damage 1 1 true



execute as @e[tag=125star,team=RedDummy] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber if entity @e[team=Blue,tag=Battle,distance=..0.7] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 2
execute as @e[tag=125star,team=BlueDummy] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber if entity @e[team=Red,tag=Battle,distance=..0.7] run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 2

execute as @e[tag=125star,team=RedDummy] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber if entity @e[team=Blue,tag=Battle,distance=..0.7] run particle minecraft:crit ~ ~ ~ 0 0 0 1 100 force @a
execute as @e[tag=125star,team=BlueDummy] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber if entity @e[team=Red,tag=Battle,distance=..0.7] run particle minecraft:crit ~ ~ ~ 0 0 0 1 100 force @a


execute as @e[tag=125star,team=RedDummy] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run effect give @e[team=Blue,tag=Battle,distance=..2.2] instant_damage 1 0 true
execute as @e[tag=125star,team=BlueDummy] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run effect give @e[team=Red,tag=Battle,distance=..2.2] instant_damage 1 0 true
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 2

execute as @e[tag=125star] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run teleport @s ~ ~0.5 ~

execute as @e[tag=125star] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force @a
execute as @e[tag=125star] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run particle minecraft:firework ~ ~ ~ 0 0 0 1 30 force @a
execute as @e[tag=125star] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run particle dust 1 1 0 1 ~ ~ ~ 2 2 2 0 60 force @a

execute as @e[tag=125star] at @s if score @s playerNumber = @a[scores={jobNumber=125,usedSkill=2},limit=1] playerNumber run kill @s
tag @s remove SkillReady2