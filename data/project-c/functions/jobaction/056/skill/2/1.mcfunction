scoreboard players add @s counter_2 1
particle minecraft:dust 255 0 0 2 ^ ^1 ^ 0.6 0.6 0.6 0 2 force @a

execute as @s[scores={counter_2=121}] at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 2 1
execute as @s[scores={counter_2=121}] at @s run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 force @a

execute as @s[scores={counter_2=121}] at @s run effect give @s instant_damage 1 1 true
execute as @s[scores={counter_2=121}] at @s run effect give @s slowness 1 4 true

execute as @s[scores={counter_2=121}] at @s run scoreboard players set @s counter_2 0