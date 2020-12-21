scoreboard players operation #067dummy counter = @s shieldBlock
scoreboard players set #067dummy subcounter 5
scoreboard players operation #067dummy counter /= #067dummy subcounter
scoreboard players operation @s counter_2 += #067dummy counter
execute if score @s counter_2 matches 85.. run scoreboard players set @s counter_2 84
scoreboard players reset #067dummy
function project-c:jobaction/067/replaceitem/shield