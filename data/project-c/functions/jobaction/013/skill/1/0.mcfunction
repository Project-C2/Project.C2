scoreboard players set @s CT1 1000


execute if score #GameTime counter matches 1.. run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~1 ~ 1 2
execute if score #GameTime counter matches 1.. run particle end_rod ~ ~1 ~ 0 0 0 0.2 30

execute if score #GameTime counter matches 1.. run gamemode spectator @s
execute if score #GameTime counter matches 1.. run scoreboard players set @s counter_1 20

execute if score #GameTime counter matches 1.. run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:22,Tags:["13ST"]}
execute if score #GameTime counter matches 1.. run scoreboard players operation @e[tag=13ST,sort=nearest,limit=1] playerNumber = @s playerNumber

execute if score #GameTime counter matches 1.. run data merge block 35 2 -122 {auto:1b}

execute if score #GameTime counter matches ..0 run tellraw @s [{"text":"試合中以外は使えない...","color":"gray"}]


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1