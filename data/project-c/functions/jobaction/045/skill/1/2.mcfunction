#実行者     -> tag=045-Necro1 (counter = 0..)
#実行地点   -> 実行者
execute as @s[nbt=!{Health:1000.0f}] store result score @s counter_2 run data get entity @s Health
execute if entity @s[nbt=!{Health:1000.0f}] run scoreboard players operation @s counter_1 -= @s counter_2
execute if entity @s[nbt=!{Health:1000.0f}] run scoreboard players operation @s Mana -= @s counter_1
scoreboard players set @s[nbt=!{Health:1000.0f}] counter_1 1000
data merge entity @s[nbt=!{Health:1000.0f}] {Health:1000.0f}
execute if entity @s[scores={Mana=..0},tag=045-Zombie] run playsound minecraft:entity.zombie.death hostile @a ~ ~ ~
execute if entity @s[scores={Mana=..0},tag=045-Skeleton] run playsound minecraft:entity.skeleton.death hostile @a ~ ~ ~
execute if entity @s[scores={Mana=..0},tag=045-Zombie] run summon item ~ ~ ~ {Glowing:1b,Age:4800,PickupDelay:32767,Tags:["isItem","045-ZombieItem","045-Item"],CustomName:"{\"text\":\"\"}",Item:{id:"minecraft:rotten_flesh",Count:1b}}
execute if entity @s[scores={Mana=..0},tag=045-Skeleton] run summon item ~ ~ ~ {Glowing:1b,Age:4800,PickupDelay:32767,Tags:["isItem","045-SkeletonItem","045-Item"],CustomName:"{\"text\":\"\"}",Item:{id:"minecraft:bone",Count:1b}}
kill @s[scores={Mana=..0}]