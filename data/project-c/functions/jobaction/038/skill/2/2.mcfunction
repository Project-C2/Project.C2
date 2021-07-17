playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1
particle minecraft:explosion_emitter ~ ~ ~ 0.4 0 0.4 0.1 10
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 0
summon marker ~ ~ ~ {Tags:["038-ExBullet","Projectile","first"]}

teleport @e[limit=1,sort=nearest,tag=first] ^ ^1.5 ^1 ~ 0
scoreboard players operation @e[limit=1,sort=nearest,tag=first] subcounter = @s counter_3
scoreboard players operation @e[limit=1,sort=nearest,tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[limit=1,sort=nearest,tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first
scoreboard players reset @s counter_3

tag @s remove SkillReady3
scoreboard players reset @s usedSkill
data merge block 85 2 -71 {auto:1b}
