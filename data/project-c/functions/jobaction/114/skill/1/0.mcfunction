scoreboard players set @s CT1 1000


particle sweep_attack ~ ~1 ~ 1 0.5 1 1 50
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 0.5


execute if entity @s[team=Red] run scoreboard players set @e[distance=..5,team=Blue,tag=Battle] stanTime 60
execute if entity @s[team=Blue] run scoreboard players set @e[distance=..5,team=Red,tag=Battle] stanTime 60

data merge block -113 2 -122 {auto:1b}


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1