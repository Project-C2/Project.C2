scoreboard players set @s CT1 1000

playsound minecraft:block.anvil.place master @a ~ ~ ~ 0.5 2

particle minecraft:flame ~ ~1 ~ 0 0 0 0.2 50
execute if entity @s[team=Red] run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{lvl:1s, id:"sharpness"}],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["111-dynamite","111-dynamiteRed"],Silent:1,Marker:1}
execute if entity @s[team=Blue] run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:tnt",Count:1b,tag:{Enchantments:[{lvl:1s, id:"sharpness"}],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["111-dynamite","111-dynamiteBlue"],Silent:1,Marker:1}

teleport @e[limit=1,sort=nearest,tag=111-dynamite] ^ ^1.5 ^1 ~ ~-20

execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/111/skill/2/1

tag @s remove SkillReady1
scoreboard players set @s usedSkill 1

data merge block -40 61 -62 {auto:1b}