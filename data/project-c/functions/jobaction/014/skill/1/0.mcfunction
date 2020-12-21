scoreboard players set @s CT1 1000


playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 1 2
particle minecraft:explosion_emitter ~ ~-2 ~ 2 0 2 1 3 force
particle block minecraft:dirt ~ ~0.5 ~ 2 0 2 0.1 20 force @a

execute if entity @s[team=Red] run effect give @e[team=Blue,tag=Battle,distance=..8] minecraft:instant_damage 1 0
execute if entity @s[team=Red] as @e[type=!player,team=Blue,tag=Battle,distance=..8] run data merge entity @s {FallDistance:26.0f,Motion:[0.0d,-3.0d,0.0d],Rotation:[0.0f,0.0f]}

execute if entity @s[team=Blue] run effect give @e[team=Red,tag=Battle,distance=..8] minecraft:instant_damage 1 0
execute if entity @s[team=Blue] as @e[type=!player,team=Red,tag=Battle,distance=..8] run data merge entity @s {FallDistance:26.0f,Motion:[0.0d,-3.0d,0.0d],Rotation:[0.0f,0.0f]}

data merge block -113 2 -122 {auto:1b}


tag @s remove SkillReady1
scoreboard players set @s usedSkill 1