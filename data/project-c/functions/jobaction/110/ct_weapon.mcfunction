scoreboard players remove @s counter 1
scoreboard players set #110- counter 111
scoreboard players operation #110- counter_1 = @s counter
scoreboard players operation #110- counter_2 = @s counter
scoreboard players operation #110- counter_1 %= #1000 counter
scoreboard players operation #110- counter_2 /= #1000 counter
#counter_1 = CooldownX
#counter_2 = CooldownX_max
scoreboard players operation #110- counter *= #110- counter_1
scoreboard players operation #110- counter /= #110- counter_2
scoreboard players operation #110- counter_3 = #110- counter_1
scoreboard players remove #110- counter_3 1
xp set @s 30 levels
xp set @s 0 points
execute if score #110- counter_3 matches 1.. if score #110- counter matches 1.. run function project-c:jobaction/110/ct-gauge
xp set @s 0 levels
scoreboard players add #110- counter_3 19
scoreboard players operation #110- counter_3 /= #20 counter
execute if score #110- counter_3 matches 1.. run function project-c:jobaction/110/ct-level
execute if score #110- counter_1 matches ..1 run function project-c:jobaction/110/ct-end
scoreboard players reset #110-