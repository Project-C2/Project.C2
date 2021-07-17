scoreboard players set @s CT1 700

playsound minecraft:block.anvil.place master @a ~ ~ ~ 2 2
particle minecraft:cloud ~ ~0.5 ~ 0 0 0 0.5 100 force @a
effect give @s minecraft:invisibility 5 2 true
scoreboard players set @s counter_1 1




tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
data merge block 83 2 -71 {auto:1b}
