scoreboard players set @s CT2 1040

scoreboard players set @s counter_2 8
scoreboard players set @s subcounter 0
scoreboard players set @s Mana 0

execute if entity @s[team=Red] positioned ^ ^1 ^3 run effect give @e[team=Blue,distance=..3.5] minecraft:instant_damage 1 0 true
execute if entity @s[team=Blue] positioned ^ ^1 ^3 run effect give @e[team=Red,distance=..3.5] minecraft:instant_damage 1 0 true
execute positioned ^ ^1 ^3 run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 2 force @a
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0

effect give @s resistance 1 4
effect give @s levitation 1 0 true

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2