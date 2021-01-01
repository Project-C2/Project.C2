scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 600

playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 0
playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 2 1
scoreboard players set @s counter_3 40
effect give @s minecraft:slowness 1 8 true

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {Tags:["112_bullet","112_bulletRed"],Marker:1b,Invisible:1b,NoGravity:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {Tags:["112_bullet","112_bulletBlue"],Marker:1b,Invisible:1b,NoGravity:1b}

tag @s remove SkillReady3
data merge block -24 61 -62 {auto:1b}