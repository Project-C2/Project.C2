scoreboard players set @s CT2 1140
scoreboard players reset @s drop

#三角関数周りの測定
execute positioned 0.0 0.15 0.0 rotated as @s run summon armor_stand ^ ^ ^1 {Tags:["026-dummy"],Invisible:1b,Marker:1b,NoGravity:1b}
execute if entity @s[team=Red] as @s at @s anchored eyes positioned ~ ~-0.0 ~ run summon armor_stand ^ ^ ^ {Tags:["026-axe","026-Saxe","026-axeSummoned","026-SaxeR"],Invisible:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{}]}},{}],Pose:{RightArm:[-90f,0f,0f]},DisabledSlots:2039583}
execute if entity @s[team=Blue] as @s at @s anchored eyes positioned ~ ~-0.0 ~ run summon armor_stand ^ ^ ^ {Tags:["026-axe","026-Saxe","026-axeSummoned","026-SaxeB"],Invisible:1b,HandItems:[{id:"minecraft:iron_axe",Count:1b,tag:{Enchantments:[{}]}},{}],Pose:{RightArm:[-90f,0f,0f]},DisabledSlots:2039583}
execute as @e[tag=026-dummy] store result score #dummy counter_1 run data get entity @s Pos[0] 100
execute as @e[tag=026-dummy] store result score #dummy counter_2 run data get entity @s Pos[1] 100
execute as @e[tag=026-dummy] store result score #dummy counter_3 run data get entity @s Pos[2] 100
kill @e[tag=026-dummy]

#代入するMotion[0,1,2]の測定
execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] counter_1 run data get entity @s Motion[0] 10
execute as @e[tag=026-axeSummoned] store result entity @s Motion[0] double 0.015 run scoreboard players operation @s counter_1 += #dummy counter_1

execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] counter_2 run data get entity @s Motion[1] 10
execute as @e[tag=026-axeSummoned] store result entity @s Motion[1] double 0.015 run scoreboard players operation @s counter_2 += #dummy counter_2

execute store result score @e[tag=026-axeSummoned,limit=1,sort=nearest] counter_3 run data get entity @s Motion[2] 10
execute as @e[tag=026-axeSummoned] store result entity @s Motion[2] double 0.015 run scoreboard players operation @s counter_3 += #dummy counter_3

scoreboard players operation @e[tag=026-axeSummoned,limit=1] playerNumber = @s playerNumber

#演出用設定
data modify entity @e[tag=026-axeSummoned,limit=1,sort=nearest] Pose.RightArm[1] set from entity @s Rotation[0]
data modify entity @e[tag=026-axeSummoned,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=026-axeSummoned,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]

scoreboard players set @e[tag=026-axeSummoned] counter 0
scoreboard players set @e[tag=026-axeSummoned] subcounter -90
tag @e[tag=026-axeSummoned] remove 026-axeSummoned
scoreboard players reset #dummy

playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 2 1
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 1
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 0.5
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 1
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 0.5
playsound minecraft:item.trident.return master @a ~ ~ ~ 2 2
particle minecraft:poof ~ ~ ~ 0 0 0 1 200 normal @a

tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -59 2 -71 {auto:1b}