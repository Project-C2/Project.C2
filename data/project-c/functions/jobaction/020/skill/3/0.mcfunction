#CT
scoreboard players set @s CT3 0
scoreboard players add @s counter_2 1
#スキル効果
#共通
gamemode spectator @s
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:1200,Tags:["dragoAEC"]}
scoreboard players operation @e[limit=1,sort=nearest,tag=dragoAEC] playerNumber = @s playerNumber

particle end_rod ~ ~1 ~ 0 0 0 0.2 30
kill @e[limit=1,sort=nearest,type=snowball]
#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3

data merge block 123 2 -122 {auto:1b}