
scoreboard players operation #118-- damageTaken /= #2 counter

scoreboard players operation #118-- teamNumber = @a[tag=118-1--,limit=1] teamNumber
execute if score @s teamNumber = #118-- teamNumber as @a[tag=118-1--] run tag @s add 118-1--2
execute if entity @e[tag=118-1--2,limit=1] if entity @e[tag=118-1-selector-damage,limit=1] run scoreboard players operation @a[tag=118-1--,limit=1] stockcounter += #118-- damageTaken
execute if entity @e[tag=118-1--2,limit=1] if entity @e[tag=118-1-own-damage,limit=1] run scoreboard players operation @a[tag=118-1--,limit=1] subcounter += #118-- damageTaken
execute as @a[tag=118-1--] run tag @s remove 118-1--2

scoreboard players operation #118-- counter_5 = @a[tag=118-1--,limit=1] counter_7
scoreboard players operation #118-- counter_6 = @a[tag=118-1--,limit=1] counter_8

scoreboard players operation #118-- counter_5 -= #118-- damageTaken
scoreboard players operation #118-- counter_6 -= #118-- damageTaken

scoreboard players operation #118-- counter_1 = #118-- counter_5
scoreboard players operation #118-- counter_2 = #118-- counter_6


scoreboard players operation @s ScoreToHealth = #118-- counter_5
execute as @a[tag=118-1--] run scoreboard players operation @s ScoreToHealth = #118-- counter_6

