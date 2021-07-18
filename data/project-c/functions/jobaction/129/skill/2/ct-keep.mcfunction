#使用中状態の時にCT増加を食らったとき用の処理

scoreboard players set #129-- counter_1 1200
scoreboard players operation #129-- counter_1 -= @s CT2
scoreboard players operation @s MagicFatigue += #129-- counter_1
scoreboard players set @s CT2 1200
tag @s remove SkillReady2
scoreboard players reset #129--