#判定
#CT
scoreboard players set @s CT1 800
scoreboard players set @s usedSkill 1

#スキル効果
#共通

playsound minecraft:block.anvil.land master @a ~ ~ ~ 2 0
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0

particle flash ~ ~1.52 ~ 0 0 0 0 3 force @a
particle end_rod ~ ~1.52 ~ 1.2 0.7 1.2 0 20 force @a

tag @e[type=minecraft:snowball,sort=nearest,limit=1,distance=..5] add 079-starrelic

execute if entity @s[team=Red] run summon armor_stand ~ ~1.75 ~ {Tags:["079-starrelic","079-starrelicS","079-starrelicR"],Invisible:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1.75 ~ {Tags:["079-starrelic","079-starrelicS","079-starrelicB"],Invisible:1b}
teleport @e[tag=079-starrelicS,limit=1,sort=nearest] ~ ~1.75 ~ ~ ~

execute as @e[limit=1,sort=nearest,tag=079-starrelicS] at @s store result entity @s Motion[0] double 0.00075 run data get entity @e[limit=1,sort=nearest,type=snowball] Motion[0] 4000
execute as @e[limit=1,sort=nearest,tag=079-starrelicS] at @s store result entity @s Motion[1] double 0.00075 run data get entity @e[limit=1,sort=nearest,type=snowball] Motion[1] 4000
execute as @e[limit=1,sort=nearest,tag=079-starrelicS] at @s store result entity @s Motion[2] double 0.00075 run data get entity @e[limit=1,sort=nearest,type=snowball] Motion[2] 4000
scoreboard players operation @e[limit=1,sort=nearest,tag=079-starrelicS] playerNumber = @s playerNumber

tag @e[limit=1,sort=nearest,tag=079-starrelicS] remove 079-starrelicS

effect give @s slowness 3 3

kill @e[type=snowball,sort=nearest,limit=1]

#リセット
tag @s remove SkillReady1
data merge block 95 2 31 {auto:1b}