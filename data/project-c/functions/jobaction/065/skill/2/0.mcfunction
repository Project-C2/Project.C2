scoreboard players set @s CT2 800

effect give @s minecraft:levitation 1 50 true

execute at @s[team=Red] positioned ^ ^ ^1 run effect give @e[team=Blue,distance=..1.5] instant_damage 1 0
execute at @s[team=Blue] positioned ^ ^ ^1 run effect give @e[team=Red,distance=..1.5] instant_damage 1 0
execute at @s[team=Red] positioned ^ ^ ^1 run effect give @e[team=Blue,distance=..1.5] levitation 1 10 true
execute at @s[team=Blue] positioned ^ ^ ^1 run effect give @e[team=Red,distance=..1.5] levitation 1 10 true
scoreboard players set @s counter_2 15
execute at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 2 1.75


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -71 2 31 {auto:1b}