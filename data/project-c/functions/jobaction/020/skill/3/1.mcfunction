#実行者     -> コマブロ
scoreboard players add @s counter_2 1
execute if entity @s[scores={counter_2=20}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_2=20}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 30

execute if entity @s[scores={counter_2=40}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_2=40}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 30

execute if entity @s[scores={counter_2=60}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_2=60}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 30

scoreboard players operation @e[tag=020-StarRodSummon,limit=1] playerNumber = @s playerNumber
teleport @e[limit=1,sort=nearest,tag=020-StarRodSummon] ^ ^1.5 ^1 ~ ~

scoreboard players operation #skillCheck teamNumber = @s teamNumber
scoreboard players operation @e[tag=020-StarRodSummon] teamNumber = #skillCheck teamNumber
scoreboard players reset #skillCheck teamNumber


execute if entity @s[scores={counter_2=60}] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["020-dragoStand","020-dragoStandSummon"]}
scoreboard players operation @e[tag=020-dragoStandSummon,limit=1] playerNumber = @s playerNumber
teleport @e[limit=1,sort=nearest,tag=020-dragoStandSummon] ^ ^1.5 ^1 ~ ~

scoreboard players operation #skillCheck teamNumber = @s teamNumber
scoreboard players operation @e[tag=020-dragoStandSummon] teamNumber = #skillCheck teamNumber
scoreboard players reset #skillCheck teamNumber
tag @e[tag=020-020-dragoStandSummon] remove 020-dragoStandSummon

execute if entity @s[scores={counter_2=60}] run teleport @e[tag=020-dragoStand,limit=1,sort=nearest] ^ ^ ^ ~ ~
execute if entity @s[scores={counter_2=60}] run data merge block 123 5 -122 {auto:1b}


execute if entity @s[scores={counter_2=61}] run execute as @e[tag=dragoAEC] at @s if score @s playerNumber = @a[limit=1,sort=nearest,scores={counter_2=61,jobNumber=20}] playerNumber run tp @e[scores={counter_2=61,jobNumber=20},limit=1] @s 
execute if entity @s[scores={counter_2=61}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 1

execute as @e[tag=dragoAEC] at @s run particle end_rod ~ ~1 ~ 0.2 0.5 0.2 0 10

execute if entity @s[scores={counter_2=61}] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 0
execute if entity @s[scores={counter_2=61}] run kill @e[tag=dragoAEC,limit=1,sort=nearest]
execute if entity @s[scores={counter_2=61}] run gamemode adventure @s
execute if entity @s[scores={counter_2=61}] run scoreboard players set @s counter_2 0

execute if entity @s[scores={counter_2=1..}] run particle end_rod ^ ^1 ^1 0 0 0 0 1 force @s

execute if entity @s[scores={counter_2=1..}] run particle end_rod ^ ^1 ^3 0 0 0 0 1 force @s

execute if entity @s[scores={counter_2=1..}] run particle end_rod ^ ^1 ^5 0 0 0 0 1 force @s