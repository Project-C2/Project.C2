scoreboard players set @s CT1 800

scoreboard players set @s counter_1 260
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.5 1.6
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.4
playsound minecraft:block.glass.break master @a ~ ~ ~ 1.5 1.4

particle minecraft:falling_dust blackstone ~ ~ ~ 2 2 2 1 200 force @a

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1