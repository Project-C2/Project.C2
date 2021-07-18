scoreboard players set @s CT3 0
item replace entity @s hotbar.3 with minecraft:compass{display:{Name:'"CoolTime"'}} 60

scoreboard players set @s counter_5 1
effect give @s minecraft:resistance 1 4
effect give @s slowness 1 9 true
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1.5 0
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.4
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.4

particle minecraft:flash ~ ~1 ~ 0 0 0 1 2 force @a

data merge block -45 2 -20 {auto:1b}
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3