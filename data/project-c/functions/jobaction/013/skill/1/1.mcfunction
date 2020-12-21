tag @s add STNG
execute if entity @e[tag=13ST,distance=..20] run tag @s remove STNG
scoreboard players reset @s[tag=STNG] counter_1
execute if entity @s[tag=STNG] run function project-c:jobaction/013/skill/1/2

scoreboard players remove @s counter_1 1
execute if score @s counter_1 matches ..0 run gamemode adventure @s
execute if score @s counter_1 matches ..0 run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~1 ~ 1 2
execute if score @s counter_1 matches ..0 run particle end_rod ~ ~1 ~ 0 0 0 0.2 30
scoreboard players reset @s[scores={counter_1=..0}] counter_1