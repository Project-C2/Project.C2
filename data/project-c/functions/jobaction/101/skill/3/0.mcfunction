scoreboard players set @s usedSkill 3
scoreboard players set @s CT3 800

execute as @e[tag=101spotter] if score @s playerNumber = @a[limit=1,sort=nearest] playerNumber run kill @s

execute if entity @s[team=Red] run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:200000,Tags:["101spotter","101spotterRed","this"]}
execute if entity @s[team=Blue] run summon area_effect_cloud ~ ~ ~ {Radius:0f,Duration:200000,Tags:["101spotter","101spotterBlue","this"]}
tp @e[tag=this] ~ ~ ~ ~ 0
scoreboard players operation @e[tag=this] playerNumber = @s playerNumber

execute as @e[tag=101spotterRed,tag=this] at @s run teleport @s @e[team=Blue,limit=1,sort=random,tag=Battle]

execute as @e[tag=101spotterBlue,tag=this] at @s run teleport @s @e[team=Red,limit=1,sort=random,tag=Battle]


execute as @e[tag=101spotterRed,tag=this] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 1 20
execute as @e[tag=101spotterBlue,tag=this] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 1 20
tag @e[tag=this] remove this

playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 2 0

tag @s remove SkillReady3
data merge block 105 5 89 {auto:1b}