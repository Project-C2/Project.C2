scoreboard players set @s CT3 -1200

#(実行者のteamNumberを仮想プレイヤーに保存)
scoreboard players operation #skillCheck teamNumber = @s teamNumber

summon marker ~ ~1 ~ {Tags:["017-Starfall","017-StarfallSummon"]}

scoreboard players operation @e[tag=017-StarfallSummon] teamNumber = #skillCheck teamNumber

scoreboard players reset #skillCheck teamNumber


particle minecraft:flame ~ ~ ~ 0 0 0 0.4 100
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 3 0

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1

effect give @s minecraft:slowness 3 7 true
effect give @s minecraft:resistance 3 4 true

tag @s remove SkillReady3
tag @s[tag=017-StarfallSummon] remove 017-StarfallSummon
scoreboard players set @s usedSkill 3
data merge block 87 2 -122 {auto:1b}