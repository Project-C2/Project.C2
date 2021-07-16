execute if score @s stockcounter matches 4.. run scoreboard players set @s CT1 1200
execute if score @s stockcounter matches 5.. run scoreboard players set @s stockcounter 4
scoreboard players remove @s stockcounter 1
execute unless score @s stockcounter matches 1.. run scoreboard players remove @s CT1 80

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0.5
particle minecraft:explosion ^ ^1 ^1 0 0 0 1 3 force
summon marker ~ ~ ~ {Tags:["049-Dynamo","Projectile","first"]}
teleport @e[tag=first] ^ ^1.5 ^1 ~ ~-20
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first

data merge block -37 2 -20 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1