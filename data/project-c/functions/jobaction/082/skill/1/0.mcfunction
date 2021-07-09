#判定
#CT
scoreboard players set @s CT1 1160
scoreboard players set @s usedSkill 1
#スキル効果
#共通

playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2

particle end_rod ~ ~1.52 ~ 1.2 0.7 1.2 0 20 force @a

execute as @e[tag=082-Arrow] at @s if score @s playerNumber = @a[scores={jobNumber=82,usedSkill=1},limit=1] playerNumber run particle end_rod ~ ~1.52 ~ 1.2 0.7 1.2 0 20 force @a


execute as @e[tag=082-Arrow] at @s if score @s playerNumber = @a[scores={jobNumber=82,usedSkill=1},limit=1] playerNumber run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:60,Tags:["GrowAEC"]}

execute as @e[tag=082-Arrow] at @s if score @s playerNumber = @a[scores={jobNumber=82,usedSkill=1},limit=1] playerNumber run kill @s

item replace entity @s hotbar.4 with minecraft:arrow 5

#リセット
tag @s remove SkillReady1
data merge block 131 2 31 {auto:1b}