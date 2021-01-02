#三角関数周りの測定
execute positioned 0.0 0.15 0.0 run summon armor_stand ^ ^ ^1 {Tags:["this"],Invisible:1b,Marker:1b,NoGravity:1b}
execute as @e[tag=this] store result score #110-vector counter_1 run data get entity @s Pos[0] 100
execute as @e[tag=this] store result score #110-vector counter_2 run data get entity @s Pos[1] 100
execute as @e[tag=this] store result score #110-vector counter_3 run data get entity @s Pos[2] 100
kill @e[tag=this]

#pickup周りの処理用のスコア計算
execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~-1.0 ~ {Tags:["this","110throweddagger","110dagger"],Invisible:1b,HandItems:[{id:"minecraft:netherite_sword",Count:1b,tag:{Enchantments:[{}]}},{}],Pose:{RightArm:[-90f,0f,0f]},DisabledSlots:2039583}
scoreboard players set @e[tag=this,limit=1] counter_6 300
execute if entity @s[scores={counter_9=4}] run scoreboard players operation @e[tag=this,limit=1] counter_6 *= #4 counter
execute if entity @s[scores={counter_9=4}] run scoreboard players operation @e[tag=this,limit=1] counter_6 /= #5 counter
execute if entity @s[scores={relic=2}] run scoreboard players operation @e[tag=this,limit=1] counter_6 /= #2 counter
scoreboard players add @e[tag=this,limit=1] counter_6 95

#コスト支払い
scoreboard players set @s counter 300300

#代入するMotion[0,1,2]の測定
execute store result score @e[tag=this,limit=1,sort=nearest] counter_1 run data get entity @s Motion[0] 10
execute as @e[tag=this] store result entity @s Motion[0] double 0.015 run scoreboard players operation @s counter_1 += #110-vector counter_1

execute store result score @e[tag=this,limit=1,sort=nearest] counter_2 run data get entity @s Motion[1] 10
execute as @e[tag=this] store result entity @s Motion[1] double 0.015 run scoreboard players operation @s counter_2 += #110-vector counter_2

execute store result score @e[tag=this,limit=1,sort=nearest] counter_3 run data get entity @s Motion[2] 10
execute as @e[tag=this] store result entity @s Motion[2] double 0.015 run scoreboard players operation @s counter_3 += #110-vector counter_3

scoreboard players operation @e[tag=this,limit=1] playerNumber = @s playerNumber
execute if entity @s[team=Red] run tag @e[tag=this,limit=1] add 110daggerR
execute if entity @s[team=Blue] run tag @e[tag=this,limit=1] add 110daggerB

#演出用設定
data modify entity @e[tag=this,limit=1,sort=nearest] Pose.RightArm[1] set from entity @s Rotation[0]
data modify entity @e[tag=this,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
data modify entity @e[tag=this,limit=1,sort=nearest] Rotation[1] set from entity @s Rotation[1]

scoreboard players set @e[tag=this] counter 0
scoreboard players set @e[tag=this] subcounter -90
tag @e[tag=this] remove this
scoreboard players reset #110-vector

#投擲演出
data merge block -54 67 -62 {auto:1b}
tag @s add 110_dagger_owner
playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 1.2 1.8
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 1.2 1.8
playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 1.2 0.5
particle minecraft:dust 0.4 0.4 0.4 1 ~ ~ ~ 2 2 2 1 160 normal @a
particle minecraft:dust 0.4 0.4 0.4 1 ~ ~ ~ 2 2 2 1 40 force @a
