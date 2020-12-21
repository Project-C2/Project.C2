#CT
scoreboard players set @s CT3 900
#効果
#共通
scoreboard players set @s counter_1 30
playsound minecraft:block.anvil.land master @a ~ ~ ~ 1 1.75
data merge block -69 2 -20 {auto:1b}
#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3