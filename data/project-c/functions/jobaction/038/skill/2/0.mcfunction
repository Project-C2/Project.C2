scoreboard players set @s CT2 0

playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 1
particle minecraft:firework ~ ~1 ~ 1.5 1 1.5 0.01 40 force @a
me 「ああ、決着をつけよう。」
effect give @s minecraft:slowness 18 8 true
effect give @s minecraft:resistance 18 2 true
effect give @s minecraft:weakness 18 8 true

data merge storage random: {min:0,max:13}
execute store result score @s counter_3 run function project-c:general/random
execute if score @s counter_3 matches 13.. run scoreboard players set @s counter_3 12
execute if score @s counter_3 matches 12.. run function project-c:grandbattle/play

scoreboard players set @s counter_2 1


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block 85 2 -71 {auto:1b}