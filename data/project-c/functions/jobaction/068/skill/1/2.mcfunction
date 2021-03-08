scoreboard players add @s counter 1
scoreboard players add @s counter_1 1
kill @s[scores={counter=50..}]
teleport @s ^ ^ ^2.7 ~ ~
execute if entity @s[scores={counter=20..40,counter_1=2}] run particle minecraft:explosion ~ ~ ~ 1 1 1 0 1 force @a
execute if entity @s[scores={counter=20..40,counter_1=2}] run playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter=20..40,counter_1=2}] run particle minecraft:campfire_cosy_smoke ~ ~-18 ~ 1 0 1 0.05 8 force @a
execute if entity @s[scores={counter=20..40,counter_1=2}] run summon arrow ~ ~ ~ {CustomName:'{"text":"戦闘爆撃機KM6","color":"gray"}',Motion:[0.0d,-4.0d,0.0d],Tag:["Arrow"],life:1200}
execute if entity @s[scores={counter_1=3}] run scoreboard players set @s counter_1 0