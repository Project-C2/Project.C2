#CT
scoreboard players set @s CT2 0
#スキル効果
#共通
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 0
#Red
execute as @s[team=Red] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["055-2Spawner","055-2SpawnerR","055-2SpawnerUnlocated"]}

execute as @s[team=Blue] run summon armor_stand ^ ^ ^ {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["055-2Spawner","055-2SpawnerB","055-2SpawnerUnlocated"]}


teleport @e[tag=055-2SpawnerUnlocated] ^8 ^0.5 ^3 ~90 -15
tag @e[tag=055-2SpawnerUnlocated] remove 055-2SpawnerUnlocated

#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block 61 2 -20 {auto:1b}