#判定
#CT
scoreboard players set @s usedSkill 2
scoreboard players set @s CT2 1040

#スキル効果
#共通

particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 30 force @a

execute as @s[team=Red] at @s if score @s playerNumber = @e[tag=126-graif,limit=1,sort=nearest] playerNumber run execute as @e[tag=126-graif,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-typhoon","126-typhoonR"],Marker:1b}
execute as @s[team=Blue] at @s if score @s playerNumber = @e[tag=126-graif,limit=1,sort=nearest] playerNumber run execute as @e[tag=126-graif,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invisible:1b,Tags:["126-typhoon","126-typhoonB"],Marker:1b}

execute as @s at @s if score @s playerNumber = @e[tag=126-graif,limit=1,sort=nearest] playerNumber run kill @e[tag=126-graif,limit=1,sort=nearest]

playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2 2
effect clear @s slowness

scoreboard players set @s Mana 0

particle minecraft:firework ~ ~1 ~ 0 0 0 0.3 30 force @a

#リセット
tag @s remove SkillReady2
data merge block -126 64 -11 {auto:1b}