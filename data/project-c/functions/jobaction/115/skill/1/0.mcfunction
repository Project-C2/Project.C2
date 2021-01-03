scoreboard players set @s CT1 1100

#三角関数周りの測定と斧召喚
execute if score @s counter_5 matches 11.. anchored eyes positioned ^ ^ ^ run summon arrow ~ ~ ~ {Tags:["this"],life:1200s}
execute if score @s counter_5 matches 11.. positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^3 {Tags:["115AECvector"],Duration:1}
execute if score @s counter_5 matches 11.. run data modify entity @e[tag=this,limit=1] Motion set from entity @e[tag=115AECvector,limit=1] Pos
execute if score @s counter_5 matches 11.. run tag @e[tag=this] remove this
execute anchored eyes positioned ^ ^ ^ run tag @e[type=arrow,limit=1,sort=nearest,distance=..4] add vector
execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Tags:["115shotaxe","first"],Invisible:1b,HandItems:[{},{}],Pose:{RightArm:[-90f,0f,0f]},DisabledSlots:2039583}
execute as @e[tag=vector] store result score #115- counter_1 run data get entity @s Motion[0] 50
execute as @e[tag=vector] store result score #115- counter_2 run data get entity @s Motion[1] 50
execute as @e[tag=vector] store result score #115- counter_3 run data get entity @s Motion[2] 50
kill @e[tag=vector]

#武器情報の代入
data modify entity @e[tag=first,limit=1] HandItems[0] set from entity @s SelectedItem
execute if score @s counter_1 matches 1 run tag @e[tag=first,limit=1,sort=nearest] add 115sharp
execute if score @s counter_2 matches 1 run tag @e[tag=first,limit=1,sort=nearest] add 115flame
execute if score @s counter_3 matches 1 run scoreboard players set @s CT1 1140
execute if score @s counter_3 matches 1 run tag @e[tag=first,limit=1,sort=nearest] add 115quick
execute if score @s counter_4 matches 1 run tag @e[tag=first,limit=1,sort=nearest] add 115stan
execute if score @s counter_5 matches 11.. run scoreboard players reset @s counter_5
execute unless score @s counter_5 matches 1 run scoreboard players reset @s counter_1
execute unless score @s counter_5 matches 1 run scoreboard players reset @s counter_2
execute unless score @s counter_5 matches 1 run scoreboard players reset @s counter_3
execute unless score @s counter_5 matches 1 run scoreboard players reset @s counter_4
execute unless score @s counter_5 matches 1 run scoreboard players reset @s counter_6
execute unless score @s counter_5 matches 1 run clear @s #project-c:neac/all{115skillID:0b}
execute if score @s counter_5 matches 1 run scoreboard players set @s counter_5 10
#代入するMotion[0,1,2]の測定
execute store result score @e[tag=first,limit=1,sort=nearest] counter_1 run data get entity @s Motion[0] 10
execute as @e[tag=first] store result entity @s Motion[0] double 0.015 run scoreboard players operation @s counter_1 += #115- counter_1

execute store result score @e[tag=first,limit=1,sort=nearest] counter_2 run data get entity @s Motion[1] 10
execute as @e[tag=first] store result entity @s Motion[1] double 0.015 run scoreboard players operation @s counter_2 += #115- counter_2

execute store result score @e[tag=first,limit=1,sort=nearest] counter_3 run data get entity @s Motion[2] 10
execute as @e[tag=first] store result entity @s Motion[2] double 0.015 run scoreboard players operation @s counter_3 += #115- counter_3

scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber

#演出用設定
data modify entity @e[tag=first,limit=1,sort=nearest] Pose.RightArm[1] set from entity @s Rotation[0]
data modify entity @e[tag=first,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=first,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]

scoreboard players operation @e[tag=first,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run tag @e[tag=first,limit=1] add 115axeR
execute if entity @s[team=Blue] run tag @e[tag=first,limit=1] add 115axeB

scoreboard players set @e[tag=first] counter 0
scoreboard players set @e[tag=first] subcounter -90
tag @e[tag=first] remove first
scoreboard players reset #115-

playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 2 1
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 2 0.5
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 2 0.5
particle minecraft:cloud ~ ~1 ~ 0 0 0 1 120 normal @a
particle minecraft:cloud ~ ~1 ~ 0 0 0 1 30 force @a

data merge block 8 61 -62 {auto:1b}
tag @s remove SkillReady1
scoreboard players set @s usedSkill 1
