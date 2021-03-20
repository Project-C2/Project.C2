#CommandBlock -> -45 2 89
#実行者 -> @a[tag=088-S3-used]

#buff
execute if entity @s[scores={playerKills=1}] run effect give @s strength 1 9
execute if entity @s[scores={playerKills=2}] run effect give @s strength 1 19
execute if entity @s[scores={playerKills=3..}] run effect give @s strength 1 29

#count
scoreboard players remove @s counter_4 1
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 1

#player killed
execute if entity @s[scores={damageDealt=1..}] if score @s playerKills > @s counter_5 run function project-c:jobaction/088/skill/3/1-1

#limit
execute if entity @s[scores={counter_4=..0}] run function project-c:jobaction/088/skill/3/1-2

#death
execute if entity @s[scores={deathCount=1..}] run scoreboard players set @s counter_4 0

#reset
execute unless entity @a[tag=088-S3-used] run data merge block -45 2 89 {auto:0b}
scoreboard players reset @s damageDealt