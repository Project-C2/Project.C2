#実行者     -> コマブロ

execute as @e[tag=ArrowSinigami] at @s run particle end_rod ~ ~ ~ 0 0 0 0.1 3 force @a
execute as @e[tag=ArrowSinigami] at @s run kill @e[tag=ArrowSiStand,sort=nearest,limit=1]
execute as @e[tag=ArrowSinigami] at @s run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,RadiusPerTick:0.0f,Age:0,Duration:200,Tags:["ArrowSiStand"]}

scoreboard players add @e[tag=ArrowSinigami] counter 1
scoreboard players add @e[tag=ArrowSiStand] counter 1

#これが実行されるとき,ArrowSは消えている
execute if entity @e[tag=ArrowSiStand,scores={counter=2..}] as @e[tag=ArrowSiStand,scores={counter=2..}] positioned as @s run function project-c:jobaction/064/skill/3/2

kill @e[tag=ArrotSinigami,scores={counter=30..}]

execute if entity @e[tag=ArrowSiStand,scores={counter=2..}] run data merge block -81 2 31 {auto:0b}

