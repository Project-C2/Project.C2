execute if data entity @s {SelectedItem:{tag:{110weapon:1b}}} store result score #110- counter_1 run data get entity @s SelectedItem.tag.110weaponID
execute if score #110- counter_1 matches 2 unless score @s counter matches 1.. run function project-c:jobaction/110/weapons/2/0
execute if score #110- counter_1 matches 3 if score @s stockcounter matches 1.. run function project-c:jobaction/110/weapons/3/0



scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset #110-