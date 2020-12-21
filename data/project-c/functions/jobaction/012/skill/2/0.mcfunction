scoreboard players set @s CT2 1160


playsound minecraft:entity.evoker.prepare_attack master @a ~ ~1 ~ 1 1
particle witch ~ ~ ~ 0 0 0 1 30

execute if entity @s[team=Red] positioned as @e[tag=Battle,team=Blue,distance=..10] run summon minecraft:evoker_fangs ~ ~ ~
execute if entity @s[team=Blue] positioned as @e[tag=Battle,team=Red,distance=..10] run summon minecraft:evoker_fangs ~ ~ ~


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2