scoreboard players set @s CT2 1000


playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 2
particle crit ~ ~1 ~ 0 0 0 1 20

scoreboard players set @s counter_2 1

data merge block -11 2 -122 {auto:1b}


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2