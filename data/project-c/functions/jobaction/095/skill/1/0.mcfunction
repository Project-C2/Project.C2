scoreboard players set @s CT1 1000
item replace entity @s hotbar.1 with minecraft:compass{display:{Name:'"CoolTime"'}} 10
scoreboard players set @s counter_1 1

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1.2 0.5
particle block gold_block ~ ~1 ~ 0.4 0.4 0.4 1 60 normal @a
particle block gold_block ~ ~1 ~ 0.4 0.4 0.4 1 15 force @a


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
