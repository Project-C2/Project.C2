scoreboard players set @s CT2 700


playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.5
particle flame ~ ~ ~ 4 0 4 1 5000
particle minecraft:explosion_emitter ~ ~2 ~ 0 0 0 1 1


effect give @s minecraft:slowness 2 2 true
effect give @s minecraft:mining_fatigue 2 2 true


execute if entity @s[team=Red] run function project-c:jobaction/002/skill/2/red
execute if entity @s[team=Blue] run function project-c:jobaction/002/skill/2/blue

data merge block -113 2 -122 {auto:1b}


tag @s remove SkillReady2
scoreboard players set @s usedSkill 2