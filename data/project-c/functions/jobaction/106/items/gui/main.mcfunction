
scoreboard players set #106-tab counter 0
scoreboard players operation #106-tab counter = @s counter_6
scoreboard players operation #106-tab counter /= #100 counter
execute if score #106-tab counter matches 0 if entity @s[tag=!106_page_setup,tag=!106_drop] run function project-c:jobaction/106/items/gui/check
execute if score #106-tab counter matches 3 if entity @s[tag=!106_page_setup,tag=!106_drop] run function project-c:jobaction/106/items/gui/skill/select_slot/check



#execute if score #106-tab counter matches 3 run function project-c:jobaction/106/items/gui/skill/select_slot/set

scoreboard players reset #106-tab

function project-c:jobaction/106/items/gui/set
