scoreboard players set @s CT1 600

execute if entity @s[team=Red] run summon armor_stand ~ ~ ~ {Tags:["026-water","026-water-R","026-first"],Marker:1b,Invisible:1b,NoGravity:1b}
execute if entity @s[team=Blue] run summon armor_stand ~ ~ ~ {Tags:["026-water","026-water-B","026-first"],Marker:1b,Invisible:1b,NoGravity:1b}
execute as @s run scoreboard players operation @e[tag=026-first,limit=1,sort=nearest] playerNumber = @s playerNumber
tag @e[tag=026-first] remove 026-first

execute anchored eyes run particle minecraft:fishing ^ ^ ^ 1 1 1 0.1 800 normal @a
execute anchored eyes run particle minecraft:fishing ^ ^ ^ 1 1 1 0.1 200 normal @a
execute anchored feet run particle minecraft:end_rod ^ ^ ^ 2 0 2 0.08 400 normal @a
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 2 0.8
playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 2 0.8

data merge block -61 2 -71 {auto:1b}

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1