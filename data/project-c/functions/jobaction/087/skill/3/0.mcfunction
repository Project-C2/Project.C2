scoreboard players set @s CT3 900
scoreboard players set @s usedSkill 3

execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1,team=Red] playerNumber run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1,team=Red] playerNumber run particle minecraft:explosion_emitter ^ ^1 ^ 0 0 0 0 1
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1,team=Red] playerNumber anchored eyes run summon fireball ^ ^-0.05 ^1 {ExplosionPower:3,direction:[0.0,0.0,0.0],CustomName:'{"text":"タレット","color":"red","italic":false}',Tags:["087-RPG","087-Bullet"]}

execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1,team=Blue] playerNumber run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1,team=Blue] playerNumber run particle minecraft:explosion_emitter ^ ^1 ^ 0 0 0 0 1
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1,team=Blue] playerNumber anchored eyes run summon fireball ^ ^-0.05 ^1 {ExplosionPower:3,direction:[0.0,0.0,0.0],CustomName:'{"text":"RPG","color":"red","italic":false}',Tags:["087-RPG","087-Bullet"]}


execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute store result score @e[limit=1,sort=nearest,tag=087-RPG] counter_3 run data get entity @s Pos[0] 100
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute store result score @e[limit=1,tag=087-RPG,sort=nearest] counter_2 as @e[limit=1,tag=087-RPG,sort=nearest] run data get entity @s Pos[0] 100


execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute as @e[tag=087-RPG] run scoreboard players operation @s counter_3 -= @s counter_2

execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute as @e[tag=087-RPG] store result entity @s power[0] double -0.0025 run scoreboard players get @s counter_3

execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute store result score @e[limit=1,sort=nearest,tag=087-RPG] counter_3 run data get entity @s Pos[1] 100

execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute store result score @e[limit=1,tag=087-RPG,sort=nearest] counter_2 as @e[limit=1,tag=087-RPG,sort=nearest] run data get entity @s Pos[1] 100
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run scoreboard players add @e[tag=087-RPG] counter_3 160
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute as @e[tag=087-RPG] run scoreboard players operation @s counter_3 -= @s counter_2
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute as @e[tag=087-RPG] store result entity @s power[1] double -0.0025 run scoreboard players get @s counter_3
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute store result score @e[limit=1,sort=nearest,tag=087-RPG] counter_3 run data get entity @s Pos[2] 100
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute store result score @e[limit=1,tag=087-RPG,sort=nearest] counter_2 as @e[limit=1,tag=087-RPG,sort=nearest] run data get entity @s Pos[2] 100
execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute as @e[tag=087-RPG] run scoreboard players operation @s counter_3 -= @s counter_2


execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run execute as @e[tag=087-RPG] store result entity @s power[2] double -0.0025 run scoreboard players get @s counter_3

tag @e[tag=087-RPG] remove 087-RPG


execute as @e[tag=Turlet] at @s if score @s playerNumber = @a[scores={jobNumber=87,usedSkill=3},limit=1] playerNumber run kill @s

tag @s remove SkillReady3

execute as @e[tag=087-line] at @s run function project-c:jobaction/087/line