scoreboard players set @s CT1 1180

scoreboard players add @s stockcounter 1
scoreboard players set @s[scores={stockcounter=2..}] stockcounter 0
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 2 1

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
