execute if entity @s[scores={relicCount=0..3}] run particle dust 1 0 0 1 ~ ~0.8 ~ 0.3 0.8 0.3 1 5 force @a
execute if entity @s[scores={relicCount=4..7}] run particle dust 1 0.5 0 1 ~ ~0.8 ~ 0.3 0.8 0.3 1 4 force @a
execute if entity @s[scores={relicCount=8..11}] run particle dust 1 1 0 1 ~ ~0.8 ~ 0.3 0.8 0.3 1 4 force @a
execute if entity @s[scores={relicCount=12..15}] run particle dust 0.5 1 0 1 ~ ~0.8 ~ 0.3 0.8 0.3 1 4 force @a
execute if entity @s[scores={relicCount=16..19}] run particle dust 0 1 0 1 ~ ~0.8 ~ 0.3 0.8 0.3 1 4 force @a
execute if entity @s[scores={relicCount=20..23}] run particle dust 0 1 0.5 1 ~ ~0.8 ~ 0.3 0.8 0.3 1 4 force @a
execute if entity @s[scores={relicCount=24..27}] run particle dust 0 0.5 1 1 ~ ~0.8 ~ 0.3 0.8 0.3 1 4 force @a
execute if entity @s[scores={relicCount=28..32}] run particle dust 1 0 1 1 ~ ~0.8 ~ 0.3 0.8 0.3 1 4 force @a


scoreboard players add @s relicCount 1
execute if entity @s[scores={relicCount=33..}] run scoreboard players set @s relicCount 0