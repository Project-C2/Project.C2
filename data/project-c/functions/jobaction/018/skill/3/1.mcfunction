scoreboard players add @e[tag=018-seed] counter_1 2
execute if entity @e[tag=018-seed,scores={counter_1=1200..},limit=1] as @e[tag=018-seed,scores={counter_1=1200..}] at @s run function project-c:jobaction/018/skill/3/2
