#CT
scoreboard players set @s CT2 1040
#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0
particle explosion ~ ~1 ~ 0 0 0 0 3

tag @s remove 050-sneaking

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["050-Charge","050-ChargeR"],Marker:1b}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["050-Charge","050-ChargeB"],Marker:1b}

execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=050-Charge] ^ ^1 ^ ~ ~

execute as @s[scores={counter_2=0}] at @s run scoreboard players set @e[limit=1,sort=nearest,tag=050-Charge] counter_1 1
execute as @s[scores={counter_2=1}] at @s run scoreboard players set @e[limit=1,sort=nearest,tag=050-Charge] counter_1 2
execute as @s[scores={counter_2=2}] at @s run scoreboard players set @e[limit=1,sort=nearest,tag=050-Charge] counter_1 3
execute as @s[scores={counter_2=3}] at @s run scoreboard players set @e[limit=1,sort=nearest,tag=050-Charge] counter_1 4

scoreboard players operation @e[limit=1,sort=nearest,tag=050-Charge] counter = @s Mana
scoreboard players operation @e[limit=1,sort=nearest,tag=050-Charge] counter /= #2 counter

#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -23 2 -20 {auto:1b}