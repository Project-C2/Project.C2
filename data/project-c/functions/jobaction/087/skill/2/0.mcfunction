scoreboard players set @s CT2 1181
scoreboard players set @s usedSkill 2

execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1,team=Red] playerNumber run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 2 1
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1,team=Red] playerNumber run particle minecraft:crit ^ ^1 ^ 1 1 1 0 10

execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1,team=Blue] playerNumber run playsound minecraft:block.bamboo.break master @a ~ ~ ~ 2 1
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1,team=Blue] playerNumber run particle minecraft:crit ^ ^1 ^ 1 1 1 0 10
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1,team=Red] playerNumber run tp @s ^ ^ ^ facing entity @e[team=Blue,limit=1,sort=nearest,tag=Battle]

execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1,team=Blue] playerNumber run tp @s ^ ^ ^ facing entity @e[team=Red,limit=1,sort=nearest,tag=Battle]

execute as @e[tag=TurletStand] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1,team=Red] playerNumber run tp @s ^ ^ ^ facing entity @e[team=Blue,limit=1,sort=nearest,tag=Battle]

execute as @e[tag=TurletStand] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1,team=Blue] playerNumber run tp @s ^ ^ ^ facing entity @e[team=Red,limit=1,sort=nearest,tag=Battle]



execute as @e[tag=TurletStand] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1] playerNumber run teleport @s ^ ^ ^ ~ 0
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1] playerNumber run teleport @s ^ ^ ^ ~ 0

execute as @e[tag=TurletStand] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1,team=Blue] playerNumber run tp @s ^ ^ ^ facing entity @e[team=Red,limit=1,sort=nearest,tag=Battle]


execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1] playerNumber run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["087-line"],NoGravity:1b,Marker:1b}

execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=2},limit=1] playerNumber run teleport @e[tag=087-line,limit=1,sort=nearest] ^ ^2 ^ ~ ~

execute as @e[tag=087-line] at @s run function project-c:jobaction/087/line