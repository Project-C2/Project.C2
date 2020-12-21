#CT
scoreboard players set @s CT1 1000
scoreboard players set @s usedSkill 1

#スキル効果
#共通
playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ 2 1
particle minecraft:firework ~ ~ ~ 1 0 1 0.5 10 force @a

execute as @e[tag=058-ArrowR] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Red,limit=1] playerNumber run particle minecraft:firework ~ ~ ~ 1 0 1 0.5 10 force @a

execute as @e[tag=058-ArrowR] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Red,limit=1] playerNumber if entity @e[tag=Battle,team=Blue,sort=nearest,limit=1,distance=..6] run execute as @a[scores={jobNumber=58,usedSkill=1},team=Red,limit=1] at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0

execute as @e[tag=058-ArrowR] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Red,limit=1] playerNumber if entity @e[tag=Battle,team=Blue,sort=nearest,limit=1,distance=..6] run execute as @a[scores={jobNumber=58,usedSkill=1,counter_1=..9},team=Red,limit=1] at @s run scoreboard players add @s counter_1 1

execute as @e[tag=058-ArrowR] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Red,limit=1] playerNumber run execute as @e[tag=Battle,team=Blue,sort=nearest,limit=1,distance=..6] at @s run summon arrow ~ ~3 ~ {CustomName:"{\"text\":\"トリックショット\",\"color\":\"yellow\"}",Motion:[0.0,-2.0,0.0],life:1200,color:-1b}

execute as @e[tag=058-ArrowR] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Red,limit=1] playerNumber run kill @s


execute as @e[tag=058-ArrowB] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Blue,limit=1] playerNumber run particle minecraft:firework ~ ~ ~ 1 0 1 0.5 10 force @a

execute as @e[tag=058-ArrowB] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Blue,limit=1] playerNumber if entity @e[tag=Battle,team=Red,sort=nearest,limit=1,distance=..6] run execute as @a[scores={jobNumber=58,usedSkill=1},team=Blue,limit=1] at @s run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 0

execute as @e[tag=058-ArrowB] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Blue,limit=1] playerNumber if entity @e[tag=Battle,team=Red,sort=nearest,limit=1,distance=..6] run execute as @a[scores={jobNumber=58,usedSkill=1,counter_1=..9},team=Blue,limit=1] at @s run scoreboard players add @s counter_1 1

execute as @e[tag=058-ArrowB] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Blue,limit=1] playerNumber run execute as @e[tag=Battle,team=Red,sort=nearest,limit=1,distance=..6] at @s run summon arrow ~ ~3 ~ {CustomName:"{\"text\":\"トリックショット\",\"color\":\"yellow\"}",Motion:[0.0,-2.0,0.0],life:1200,color:-1b}

execute as @e[tag=058-ArrowB] at @s if score @s playerNumber = @a[scores={jobNumber=58,usedSkill=1},team=Blue,limit=1] playerNumber run kill @s

function project-c:jobaction/058/replaceitem/3
function project-c:jobaction/058/replaceitem/4

#リセット
tag @s remove SkillReady1