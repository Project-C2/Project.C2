#CT
scoreboard players set @s CT3 0
#効果
#共通
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1.45
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1.45
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1.45
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1.45
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1.45
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 2 1.45
#Red
summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["052-3","052-3HasSummoned","052-3R"]}
#Blue
summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["052-3","052-3HasSummoned","052-3B"]}
teleport @e[tag=052-3HasSummoned] ~ ~1 ~ ~ ~
tag @e[tag=052-3HasSummoned] remove 052-3HasSummoned
scoreboard players set @s[tag=052-Sprint,scores={Mana=60..}] counter_1 1
execute if entity @s[tag=052-Sprint,scores={Mana=60..}] run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 2 1.75
scoreboard players remove @s[tag=052-Sprint,scores={Mana=60..}] Mana 60
#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3
data merge block 27 2 -20 {auto:1b}