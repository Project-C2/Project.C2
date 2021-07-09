item replace entity @s hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"クリスタルソード","color":"aqua","italic":false}'},Unbreakable:1b} 1
scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0
execute unless score @s counter_2 matches 0.. run scoreboard players set counter_2 counter 0
function project-c:jobaction/067/replaceitem/shield