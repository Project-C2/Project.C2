scoreboard players set @s CT1 600
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 30
scoreboard players set @s counter_1 1
effect give @s glowing 2 0
effect give @s slowness 2 1

playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 10 1.3
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 10 1.3



tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
