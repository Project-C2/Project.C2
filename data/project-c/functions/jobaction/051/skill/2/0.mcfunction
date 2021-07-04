scoreboard players set @s CT2 700
item replace entity @s hotbar.2 with minecraft:compass{display:{Name:'"CoolTime"'}} 25

scoreboard players set @s counter_2 1
effect give @s minecraft:resistance 1 4
effect give @s slowness 1 9 true
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.4
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.4

particle minecraft:falling_dust ice ~ ~ ~ 2 2 2 1 800 normal @a
particle minecraft:falling_dust ice ~ ~ ~ 2 2 2 1 200 force @a

summon area_effect_cloud ~2 ~ ~ {Tags:["051r","051r1"],Duration:1}
summon area_effect_cloud ~-2 ~ ~ {Tags:["051r","051r2"],Duration:1}
summon area_effect_cloud ~ ~ ~2 {Tags:["051r","051r3"],Duration:1}
execute as @e[tag=051r,limit=1,sort=random] run tag @s add 051r_it
execute at @e[tag=051r_it,limit=1] if entity @e[tag=051r1,limit=1,distance=..1] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] この瞬間、お前は永遠を手にする。"}]
execute at @e[tag=051r_it,limit=1] if entity @e[tag=051r2,limit=1,distance=..1] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] すまんすまん。"}]
execute at @e[tag=051r_it,limit=1] if entity @e[tag=051r3,limit=1,distance=..1] run tellraw @a [{"text":"["},{"selector":"@s"},{"text":"] 風邪ひくなよ❤"}]

data merge block -11 2 -20 {auto:1b}
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2