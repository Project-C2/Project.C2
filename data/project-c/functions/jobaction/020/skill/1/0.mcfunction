scoreboard players set @s CT1 1160
item replace entity @s hotbar.1 with minecraft:compass{display:{Name:'"CoolTime"'}} 2

summon marker ~ ~ ~ {Tags:["020-StarRod","020-StarRodSummon","Projectile"]}
scoreboard players operation @e[tag=020-StarRodSummon,limit=1] playerNumber = @s playerNumber
teleport @e[limit=1,sort=nearest,tag=020-StarRodSummon] ^ ^1.5 ^1 ~ ~

scoreboard players operation #skillCheck teamNumber = @s teamNumber
scoreboard players operation @e[tag=020-StarRodSummon] teamNumber = #skillCheck teamNumber
scoreboard players reset #skillCheck teamNumber

tag @e[tag=020-StarRodSummon] remove 020-StarRodSummon

playsound minecraft:entity.player.levelup master @a ~ ~ ~ 2 1.75

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1

data merge block 119 2 -122 {auto:1b}