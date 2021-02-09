scoreboard players set @s CT2 1000


playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 1 2
particle crit ~ ~1 ~ 0 0 0 1 20

execute if entity @s[team=Red,gamemode=!spectator] run effect give @s minecraft:strength 5 4 true
execute if entity @s[team=Blue,gamemode=!spectator] run effect give @s minecraft:strength 5 4 true

scoreboard players set @s counter_2 1

data merge block -11 2 -122 {auto:1b}


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2