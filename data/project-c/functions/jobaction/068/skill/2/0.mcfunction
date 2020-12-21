#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 700

execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-bl","068-blR"],small:1b,NoGravity:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-bl","068-blB"],small:1b,NoGravity:1b}
teleport @e[tag=068-bl,limit=1,sort=nearest] ^ ^ ^5 ~ ~

execute as @e[tag=068-bl,limit=1,sort=nearest] store result entity @s Motion[0] double 0.00075 run data get entity @e[limit=1,sort=nearest,type=snowball] Motion[0] 2000
execute as @e[tag=068-bl,limit=1,sort=nearest] store result entity @s Motion[1] double 0.00075 run data get entity @e[limit=1,sort=nearest,type=snowball] Motion[1] 2000
execute as @e[tag=068-bl,limit=1,sort=nearest] store result entity @s Motion[2] double 0.00075 run data get entity @e[limit=1,sort=nearest,type=snowball] Motion[2] 2000
kill @e[limit=1,sort=nearest,type=snowball]

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 1

#リセット
tag @s remove SkillReady2
data merge block -35 2 31 {auto:1b}