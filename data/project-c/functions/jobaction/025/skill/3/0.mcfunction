#CT
scoreboard players set @s CT3 0
#効果
#共通
execute at @s run tellraw @a ["",{"text":"*","bold":true},{"selector":"@s","bold":true},{"text":" \uff78\uff78\uff78\uff78\uff78","bold":true}]
execute at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 0.5
execute at @s run particle minecraft:firework ~ ~1 ~ 5 5 5 0.5 100 force @a
execute at @s run particle minecraft:angry_villager ~ ~1 ~ 5 5 5 0.5 25 force @a
execute at @s run summon minecraft:armor_stand ~ ~0.5 ~ {Marker:1b,Invisible:1b,Tags:["025-3"]}
data merge block -69 2 -71 {auto:1b}
scoreboard players set @s counter_3 1
#リセット
tag @s remove SkillReady3
scoreboard players set @s usedSkill 3