#実行者     -> コマブロ
scoreboard players add @s counter_2 1
execute if entity @s[scores={counter_2=20}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_2=20}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 30

execute if entity @s[scores={counter_2=40}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_2=40}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 30

execute if entity @s[scores={counter_2=60}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_2=60}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 30

execute if entity @s[scores={counter_2=80}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_2=80}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 30

execute if entity @s[scores={counter_2=100}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter_2=100}] run particle end_rod ~ ~1 ~ 0 0 0 0.2 30


execute if entity @s[scores={counter_2=100},team=Red] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-fovosStand","068-fovosStandRed"]}

execute if entity @s[scores={counter_2=100},team=Blue] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["068-fovosStand","068-fovosStandBlue"]}

execute if entity @s[scores={counter_2=100}] run teleport @e[tag=068-fovosStand,limit=1,sort=nearest] ^ ^ ^ ~ ~
execute if entity @s[scores={counter_2=100}] run data merge block -33 5 31 {auto:1b}


execute if entity @s[scores={counter_2=101}] run execute as @e[tag=fobosAEC] at @s if score @s playerNumber = @a[limit=1,sort=nearest,scores={counter_2=101,jobNumber=68}] playerNumber run tp @e[scores={counter_2=101,jobNumber=68},limit=1] @s 
execute if entity @s[scores={counter_2=101}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 1

execute as @e[tag=fobosAEC] at @s run particle end_rod ~ ~1 ~ 0.2 0.5 0.2 0 10

execute if entity @s[scores={counter_2=101}] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 3 0
execute if entity @s[scores={counter_2=101}] run function project-c:jobaction/068/skill/3/2-say
execute if entity @s[scores={counter_2=101}] run kill @e[tag=fobosAEC,limit=1,sort=nearest]
execute if entity @s[scores={counter_2=101}] run gamemode adventure @s
execute if entity @s[scores={counter_2=101}] run scoreboard players set @s counter_2 0

execute if entity @s[scores={counter_2=1..}] run particle end_rod ^ ^1 ^1 0 0 0 0 1 force @s

execute if entity @s[scores={counter_2=1..}] run particle end_rod ^ ^1 ^3 0 0 0 0 1 force @s

execute if entity @s[scores={counter_2=1..}] run particle end_rod ^ ^1 ^5 0 0 0 0 1 force @s