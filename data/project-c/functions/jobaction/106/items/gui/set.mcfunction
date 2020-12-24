
scoreboard players set #106-tab counter 0
scoreboard players operation #106-tab counter = @s counter_6
scoreboard players operation #106-tab counter /= #100 counter

data remove block 0 0 0 Items[]
execute if score #106-tab counter matches 0 unless score @s counter_6 matches 1 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"minecraft:iron_sword",Count:1b,tag:{106_gui_item:1,display:{Name:'{"text":"ウェポン","italic":false,"color":"yellow"}'},AttributeModifiers:[{}]}}
execute if score #106-tab counter matches 0 if score @s counter_6 matches 1 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"minecraft:iron_sword",Count:1b,tag:{106_gui_item:1,display:{Name:'[{"text":"ウェポン","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{}],AttributeModifiers:[{}]}}
execute if score #106-tab counter matches 0 unless score @s counter_6 matches 2 run data modify block 0 0 0 Items[{Slot:1b}] merge value {id:"minecraft:golden_sword",Count:1b,tag:{106_gui_item:1,display:{Name:'{"text":"サポート","italic":false,"color":"yellow"}'},AttributeModifiers:[{}]}}
execute if score #106-tab counter matches 0 if score @s counter_6 matches 2 run data modify block 0 0 0 Items[{Slot:1b}] merge value {id:"minecraft:golden_sword",Count:1b,tag:{106_gui_item:1,display:{Name:'[{"text":"サポート","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{}],AttributeModifiers:[{}]}}
execute if score #106-tab counter matches 0 unless score @s counter_6 matches 3 run data modify block 0 0 0 Items[{Slot:2b}] merge value {id:"minecraft:campfire",Count:1b,tag:{106_gui_item:1,display:{Name:'{"text":"スキル","italic":false,"color":"yellow"}'},AttributeModifiers:[{}]}}
execute if score #106-tab counter matches 0 if score @s counter_6 matches 3 run data modify block 0 0 0 Items[{Slot:2b}] merge value {id:"minecraft:campfire",Count:1b,tag:{106_gui_item:1,display:{Name:'[{"text":"ウェポン","italic":false,"color":"yellow"},{"text":" "},{"text":"選択中","italic":false,"color":"dark_aqua"}]'},Enchantments:[{}],AttributeModifiers:[{}]}}


execute if score #106-tab counter matches 0 if entity @s[scores={counter_6=1}] run function project-c:jobaction/106/items/gui/weapon/open
execute if score #106-tab counter matches 0 if entity @s[scores={counter_6=2}] run function project-c:jobaction/106/items/gui/support/open
execute if score #106-tab counter matches 0 if entity @s[scores={counter_6=3}] run function project-c:jobaction/106/items/gui/skill/open

execute if score #106-tab counter matches 3 run function project-c:jobaction/106/items/gui/skill/select_slot/set

clear @s #project-c:neac/all{106_gui_item:1}
loot replace entity @s container.27 9 mine 0 0 0 minecraft:air{inv_copy:1b}


scoreboard players reset #106-tab