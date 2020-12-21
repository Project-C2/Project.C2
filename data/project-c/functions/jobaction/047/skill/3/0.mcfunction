#CT
scoreboard players set @s CT3 0
#効果
#共通
scoreboard players set @s bow 1
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1
data merge block -57 2 -20 {auto:1b}
#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
tellraw @a ["",{"text":"<"},{"selector":"@s"},{"text":"> "},{"text":"恋符「マスタースパーク」","bold":true}]