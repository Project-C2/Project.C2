#CT
scoreboard players set @s CT2 600
#スキル効果
#共通
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 0
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a
#Red

effect give @s strength 6 2 false
effect give @s speed 6 3 false
effect give @s haste 6 3 false
effect give @s glowing 6 0 false

scoreboard players set @s counter_2 1

#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block 73 2 -20 {auto:1b}