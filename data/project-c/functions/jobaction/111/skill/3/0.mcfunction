scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 1000

playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 2 2
playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 2 1
scoreboard players set @s counter_3 1
effect give @s minecraft:slowness 1 7 true

execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/111/skill/2/1

tag @s remove SkillReady3