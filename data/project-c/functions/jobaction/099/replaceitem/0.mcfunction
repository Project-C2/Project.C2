execute unless score @s counter_3 matches 1.. run scoreboard players set @s counter_4 1
execute unless score @s counter_3 matches 1.. run scoreboard players set @s counter_3 1

execute if score @s counter_3 matches 5.. run scoreboard players set @s counter_3 4
execute unless score @s counter_4 matches 1.. run scoreboard players set @s counter_4 1


function project-c:jobaction/099/replaceitem/0-1



item replace entity @s weapon.offhand with minecraft:snowball 1
function project-c:jobaction/099/replaceitem/4



scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0