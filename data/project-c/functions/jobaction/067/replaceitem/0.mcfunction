replaceitem entity @s hotbar.0 minecraft:iron_sword{display:{Name:"{\"text\":\"クリスタルソード\",\"color\":\"aqua\",\"italic\":false}"},Unbreakable:1b} 1
scoreboard players reset @s drop
execute unless score @s counter_2 matches 0.. run scoreboard players set counter_2 counter 0
function project-c:jobaction/067/replaceitem/shield