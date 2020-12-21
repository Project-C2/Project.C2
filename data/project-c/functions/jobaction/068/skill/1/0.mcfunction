#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 900

#スキル効果
#共通

summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-km"],NoGravity:1b,Marker:1b}
teleport @e[tag=068-km,limit=1,sort=nearest] ^ ^1 ^1.5 ~ ~


kill @e[limit=1,sort=nearest,type=snowball]

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 1
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 2 1

#リセット
tag @s remove SkillReady1
execute as @e[tag=068-km] at @s run function project-c:jobaction/068/skill/1/1laser