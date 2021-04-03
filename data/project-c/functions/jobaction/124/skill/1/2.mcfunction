playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 2 1.6
scoreboard players set @s CT1 900
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1

summon area_effect_cloud ~ ~ ~ {Tags:["this2","124windsong2"],Duration:200}
tp @e[tag=this2,limit=1] ~ ~ ~ ~ ~
data modify entity @e[tag=this2,limit=1] Owner set from entity @s UUID
scoreboard players set @e[tag=this2,limit=1] counter 10
scoreboard players operation @e[tag=this2,limit=1] counter_1 = @s counter_1
scoreboard players operation @e[tag=this2,limit=1] playerNumber = @s playerNumber
scoreboard players operation @e[tag=this2,limit=1] teamNumber = @s teamNumber
tag @e[tag=this2] remove this2
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 100 normal @a
particle minecraft:instant_effect ~ ~ ~ 1 1 1 1 25 force @a
playsound minecraft:block.note_block.harp master @a ~ ~ ~ 2 1.122462

data merge block 116 61 -60 {auto:1b}
