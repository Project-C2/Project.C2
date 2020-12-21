
scoreboard players set #106-tab counter 0
scoreboard players operation #106-tab counter = @s 106-tab
scoreboard players operation #106-tab counter /= #100 counter
execute if score #106-tab counter matches 0 run function project-c:jobaction/106/items/gui/weapon/open
execute if score #106-tab counter matches 0 run function project-c:jobaction/106/items/gui/support/open
execute if score #106-tab counter matches 0 run function project-c:jobaction/106/items/gui/skill/open


execute if score #106-tab counter matches 3 run function project-c:jobaction/106/items/gui/skill/setup_page

scoreboard players reset #106-tab

scoreboard players add #106-gui counter 1
execute unless score #106-gui counter matches 2.. run function project-c:jobaction/106/items/gui/main
execute if score #106-gui counter matches 2.. run scoreboard players reset #106-gui