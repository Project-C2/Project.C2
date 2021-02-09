scoreboard players set @s CT3 600


playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 0.5
particle explosion_emitter ~ ~1 ~ 0.5 0.5 0.5 0.2 3


effect give @s minecraft:strength 10 2
effect give @s minecraft:haste 10 0
effect give @s minecraft:resistance 10 1
effect give @s minecraft:instant_damage 1 2
effect give @s minecraft:slowness 2 20

scoreboard players set @s counter_1 1
data merge block -93 2 -122 {auto:1b}


tag @s remove SkillReady3
scoreboard players set @s usedSkill 3