#CT
scoreboard players set @s CT2 800
scoreboard players set @s usedSkill 2
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 2
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1
#スキル効果
#共通

execute as @s[team=Red] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-ice","061-iceR"]}
execute as @s[team=Blue] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["061-ice","061-iceB"]}

execute as @s at @s run teleport @e[limit=1,sort=nearest,tag=061-ice] ^ ^1.5 ^ ~ ~

#リセット
tag @s remove SkillReady2
data merge block 133 5 20 {auto:1b}