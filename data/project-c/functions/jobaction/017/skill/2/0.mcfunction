scoreboard players set @s CT2 1120
execute if entity @s[scores={counter_2=1..}] run scoreboard players set @s CT2 1198
scoreboard players remove @s counter_2 1
scoreboard players set @s[scores={counter_1=0}] counter_1 40

item replace entity @s hotbar.2 with minecraft:compass{display:{Name:'"CoolTime"'}} 2

summon marker ~ ~ ~ {Tags:["017-Infelno","017-InfelnoSummon","Projectile"]}
scoreboard players operation @e[tag=017-InfelnoSummon,limit=1] playerNumber = @s playerNumber
teleport @e[limit=1,sort=nearest,tag=017-InfelnoSummon] ^ ^1.5 ^1 ~ ~

scoreboard players operation #skillCheck teamNumber = @s teamNumber
scoreboard players operation @e[tag=017-InfelnoSummon] teamNumber = #skillCheck teamNumber
scoreboard players reset #skillCheck teamNumber

tag @s[tag=017-InfelnoSummon] remove 017-InfelnoSummon

playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 2
particle minecraft:flame ~ ~ ~ 0 0 0 0.4 50
particle minecraft:enchant ~ ~2.3 ~ 0 0 0 3 200

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2

data merge block 85 2 -122 {auto:1b}