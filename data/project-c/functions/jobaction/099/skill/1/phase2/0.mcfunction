scoreboard players set @s CT1 840
replaceitem entity @s hotbar.1 minecraft:compass{display:{Name:'"CoolTime"'}} 18
scoreboard players set @s counter_1 1

playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 1.4
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 1.7
particle block lapis_block ~ ~1 ~ 0.4 0.4 0.4 1 60 normal @a
particle block lapis_block ~ ~1 ~ 0.4 0.4 0.4 1 15 force @a


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
