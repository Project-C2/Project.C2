#起爆装置使用時処理

scoreboard players operation #106- playerNumber = @s playerNumber
execute as @e[type=minecraft:creeper,tag=106_bomb] if score @s playerNumber = #106- playerNumber run tag @s add 106_fuse_check

execute if entity @e[type=minecraft:creeper,tag=106_bomb,tag=106_fuse_check] at @s run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2
execute unless entity @e[type=minecraft:creeper,tag=106_bomb,tag=106_fuse_check] at @s run playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 2

execute at @s as @e[type=minecraft:creeper,tag=106_bomb,tag=106_fuse_check,sort=nearest,limit=1] run tag @s add 106_fuse

execute at @e[type=minecraft:creeper,tag=106_bomb,tag=106_fuse,limit=1] run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 2

execute as @e[type=minecraft:creeper,tag=106_bomb,tag=106_fuse,limit=1] at @s run function project-c:jobaction/106/items/skill/11/fuse


execute if entity @e[type=minecraft:creeper,tag=106_bomb,tag=106_fuse_check,limit=1] as @e[type=minecraft:creeper,tag=106_bomb,tag=106_fuse_check] run tag @s remove 106_fuse_check


scoreboard players reset #106-

