#CT
scoreboard players set @s CT1 0
#スキル効果
#共通
particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.5 60
particle minecraft:block blue_stained_glass ~ ~1 ~ 0.5 0.5 0.5 0.5 20
playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0
playsound minecraft:item.totem.use master @a ~ ~ ~ 2 0.45
playsound minecraft:item.totem.use master @a ~ ~ ~ 2 0.45
effect clear @s minecraft:jump_boost
effect clear @s minecraft:absorption
effect clear @s minecraft:resistance
effect clear @s minecraft:speed
replaceitem entity @s armor.chest minecraft:elytra{display:{Name:"{\"text\":\"Vex Wings\"}",Lore:["壊れている"]},Unbreakable:1b,Damage:1000,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
#リセット
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1