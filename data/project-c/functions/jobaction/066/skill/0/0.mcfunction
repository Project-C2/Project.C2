#CT
scoreboard players set @s stockcounter 20
item replace entity @s weapon.offhand with minecraft:air
#スキル効果
#共通
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 0.5 2
particle minecraft:firework ~ ~ ~ 0 0 0 0.5 5 force @a
kill @e[distance=..5,sort=nearest,type=snowball,limit=1]

execute as @s[team=Red] at @s run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["066-dagger","066-daggerRed","066-dagger1"],Silent:1,Marker:1}

execute as @s[team=Blue] at @s run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["066-dagger","066-daggerBlue","066-dagger1"],Silent:1,Marker:1}

execute as @s[team=Red] at @s run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["066-dagger","066-daggerRed","066-dagger2"],Silent:1,Marker:1}

execute as @s[team=Blue] at @s run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["066-dagger","066-daggerBlue","066-dagger2"],Silent:1,Marker:1}

execute as @s[team=Red] at @s run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["066-dagger","066-daggerRed","066-dagger3"],Silent:1,Marker:1}

execute as @s[team=Blue] at @s run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["066-dagger","066-daggerBlue","066-dagger3"],Silent:1,Marker:1}

teleport @e[tag=!daggercheck,tag=066-dagger,tag=066-dagger1,limit=1,sort=nearest] ~ ~ ~ ~ ~
teleport @e[tag=!daggercheck,tag=066-dagger,tag=066-dagger2,limit=1,sort=nearest] ~ ~ ~ ~30 ~
teleport @e[tag=!daggercheck,tag=066-dagger,tag=066-dagger3,limit=1,sort=nearest] ~ ~ ~ ~-30 ~
teleport @e[tag=!daggercheck,tag=066-dagger,sort=nearest] ~ ~0.2 ~

tag @e[tag=066-dagger,tag=!daggercheck] add daggercheck

scoreboard players set @s usedSkill 0

data merge block -63 5 31 {auto:1b}