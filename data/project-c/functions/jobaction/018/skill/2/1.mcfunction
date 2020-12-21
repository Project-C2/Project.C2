scoreboard players remove @s counter_3 1
execute if entity @s[scores={counter_3=30}] at @s anchored eyes run function project-c:jobaction/018/skill/2/2
execute if entity @s[scores={counter_3=20}] at @s anchored eyes run function project-c:jobaction/018/skill/2/2
execute if entity @s[scores={counter_3=10}] at @s anchored eyes run function project-c:jobaction/018/skill/2/2
execute if entity @s[scores={counter_3=0}] at @s run function project-c:jobaction/018/skill/2/3
execute if entity @s[scores={counter_3=3}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.7
execute if entity @s[scores={counter_3=3}] at @s run playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.7
playsound minecraft:entity.ender_dragon.hurt master @a[distance=..10] ~ -100 ~ 0 2 0.2
playsound minecraft:entity.ender_dragon.hurt master @a[distance=10..18] ~ -100 ~ 0 2 0.1
execute anchored eyes run particle minecraft:dragon_breath ^ ^ ^ 0 0 0 0.75 10 normal @a
execute if entity @s[scores={counter_3=20..}] run effect give @s minecraft:slowness 1 127 true


