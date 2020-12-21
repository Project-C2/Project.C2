#実行者     -> コマブロ
scoreboard players add @s counter 1

execute as @s[tag=066-worldRed,scores={counter=..30}] at @s run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["066-dagger","066-daggerRed","066-daggerW"],Silent:1,Marker:1}

execute as @s[tag=066-worldBlue,scores={counter=..30}] at @s run summon minecraft:armor_stand ~ ~-1 ~ {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[],Damage:0}}],Pose:{RightArm:[350f,0f,270f]},Invisible:1,NoGravity:1,Tags:["066-dagger","066-daggerBlue","066-daggerW"],Silent:1,Marker:1}
teleport @e[tag=!daggercheck,tag=066-dagger,tag=066-daggerW,limit=1,sort=nearest] ~ ~ ~ ~ ~

tag @e[tag=066-dagger,tag=!daggercheck,tag=066-daggerW] add daggercheck

teleport @s ~ ~ ~ ~37 ~

execute as @s[tag=066-world,scores={counter=41..70}] at @s run tag @e[tag=066-dagger] add 066-daggerWorld
execute as @s[tag=066-world,tag=066-worldRed,scores={counter=51}] at @s run tag @e[tag=066-daggerRed,limit=3,sort=random] add 066-daggerWorldC
execute as @s[tag=066-world,tag=066-worldBlue,scores={counter=51}] at @s run tag @e[tag=066-daggerBlue,limit=3,sort=random] add 066-daggerWorldC
execute as @s[tag=066-world,tag=066-worldRed,scores={counter=71}] at @s run tag @e[tag=066-daggerRed,limit=3,sort=random] add 066-daggerWorldC
execute as @s[tag=066-world,tag=066-worldBlue,scores={counter=71}] at @s run tag @e[tag=066-daggerBlue,limit=3,sort=random] add 066-daggerWorldC
execute as @s[tag=066-world,scores={counter=81}] at @s run tag @e[tag=066-dagger,tag=066-daggerWorld] remove 066-daggerWorld

execute as @e[tag=066-daggerRed,tag=066-daggerWorldC] at @s run tp @s ^ ^ ^ facing entity @e[team=Blue,limit=1,sort=nearest,tag=Battle]
execute as @e[tag=066-daggerBlue,tag=066-daggerWorldC] at @s run tp @s ^ ^ ^ facing entity @e[team=Red,limit=1,sort=nearest,tag=Battle]
execute as @e[tag=066-daggerWorldC] at @s run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 2 1
execute as @e[tag=066-daggerWorldC] at @s run particle minecraft:crit ~ ~ ~ 0 0 0 1 10 force @a
tag @e[tag=066-daggerWorldC] remove 066-daggerWorldC


kill @s[scores={counter=81..}]
data merge block -63 5 31 {auto:1b}