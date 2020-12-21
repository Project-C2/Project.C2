#判定
#CT
scoreboard players set @s usedSkill 1
scoreboard players set @s CT1 1120

#スキル効果
#共通

execute if entity @s[team=Red] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["085-warp","085-warpRed"],NoGravity:1b,Marker:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["085-warp","085-warpBlue"],NoGravity:1b,Marker:1b}
execute anchored eyes run teleport @e[tag=085-warp,limit=1,sort=nearest] ^ ^ ^ ~ ~


kill @e[limit=1,sort=nearest,type=snowball]

playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 1 0

#リセット
tag @s remove SkillReady1
execute as @e[tag=085-warp] at @s run function project-c:jobaction/085/skill/1/1