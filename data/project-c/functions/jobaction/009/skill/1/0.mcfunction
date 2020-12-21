scoreboard players set @s CT1 1000


playsound minecraft:block.anvil.place master @a ~ ~ ~ 1 2
particle dust 255 0 0 1 ~ ~ ~ 3 -1 3 0 500

execute if entity @s[team=Red] run effect give @e[distance=..5,team=Blue,tag=Battle] minecraft:instant_damage 1 0
execute if entity @s[team=Blue] run effect give @e[distance=..5,team=Red,tag=Battle] minecraft:instant_damage 1 0

scoreboard players set @s counter_1 1

data merge block -13 2 -122 {auto:1b}


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1