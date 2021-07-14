scoreboard players set @s CT1 0

#(実行者のteamNumberを仮想プレイヤーに保存)
scoreboard players operation #skillCheck teamNumber = @s teamNumber

summon marker ~ ~0.5 ~ {Tags:["017-SetCircle","017-SetCircleSummon"]}

scoreboard players operation @e[tag=017-SetCircleSummon] teamNumber = #skillCheck teamNumber

scoreboard players reset #skillCheck teamNumber


particle minecraft:flame ~ ~ ~ 0 0 0 0.4 100
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 3 0
playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 1.75

tag @s remove SkillReady1
tag @s[tag=017-SetCircleSummon] remove 017-SetCircleSummon
scoreboard players set @s usedSkill 1
data merge block 83 2 -122 {auto:1b}