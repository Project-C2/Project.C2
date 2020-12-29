#メイン5


#data get entity @s SelectedItem.tag.ChargedProjectiles[].tag.arrow_type


execute if score @s stockcounter matches 1 run scoreboard players set #106_arrow counter 1
execute if score @s stockcounter matches 2.. run scoreboard players set #106_arrow counter 2

execute if score #106_arrow counter matches 1 run scoreboard players remove @s stockcounter 1
execute if score #106_arrow counter matches 2 run scoreboard players remove @s stockcounter 2

execute if score #106_arrow counter matches 1.. run tag @s add 106_weapon5_charged
execute if score #106_arrow counter matches 2 run tag @s add 106_weapon5_charged-r

scoreboard players reset #106_arrow

function project-c:jobaction/106/items/auxiliary/arrow/reload/auto/check
function project-c:jobaction/106/items/weapon/05/set

tag @s add 106_weapon5_replace
