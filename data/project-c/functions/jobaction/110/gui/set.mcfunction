#アイテム表示
data remove block 0 0 0 Items[]
execute unless score @s counter_5 matches 1 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"minecraft:iron_sword",Count:1b,tag:{110GUI:1b,110GUISlot:0b,display:{Name:'{"text":"種別1: 武器","color":"white","italic":false,"underlined":true}',Lore:[]}}}
execute if score @s counter_5 matches 1 run data modify block 0 0 0 Items[{Slot:0b}] merge value {id:"minecraft:iron_sword",Count:1b,tag:{110GUI:1b,110GUISlot:0b,display:{Name:'{"text":"種別1: 武器","color":"white","italic":false,"underlined":true}',Lore:['{"text":"選択中","color":"dark_aqua","italic":false}']}}}
execute unless score @s counter_5 matches 2 run data modify block 0 0 0 Items[{Slot:1b}] merge value {id:"minecraft:beacon",Count:1b,tag:{110GUI:1b,110GUISlot:1b,display:{Name:'{"text":"種別2: 加護","color":"white","italic":false,"underlined":true}',Lore:[]}}}
execute if score @s counter_5 matches 2 run data modify block 0 0 0 Items[{Slot:1b}] merge value {id:"minecraft:beacon",Count:1b,tag:{110GUI:1b,110GUISlot:1b,display:{Name:'{"text":"種別2: 加護","color":"white","italic":false,"underlined":true}',Lore:['{"text":"選択中","color":"dark_aqua","italic":false}']}}}
execute unless score @s counter_5 matches 3 run data modify block 0 0 0 Items[{Slot:2b}] merge value {id:"minecraft:enchanted_book",Count:1b,tag:{110GUI:1b,110GUISlot:2b,display:{Name:'{"text":"種別3: 魔法","color":"white","italic":false,"underlined":true}',Lore:[]}}}
execute if score @s counter_5 matches 3 run data modify block 0 0 0 Items[{Slot:2b}] merge value {id:"minecraft:enchanted_book",Count:1b,tag:{110GUI:1b,110GUISlot:2b,display:{Name:'{"text":"種別3: 魔法","color":"white","italic":false,"underlined":true}',Lore:['{"text":"選択中","color":"dark_aqua","italic":false}']}}}
#replaceitem block 0 0 0 container.3 air

execute if score @s counter_5 matches 1 run function project-c:jobaction/110/gui/weapon/0
execute if score @s counter_5 matches 2 run function project-c:jobaction/110/gui/bless/0
execute if score @s counter_5 matches 3 run function project-c:jobaction/110/gui/skills/0

clear @s #project-c:neac/all{110GUI:1b}
loot replace entity @s container.27 mine 0 0 0 minecraft:air{inv_copy:1b}
#data remove block 0 0 0 Items[]
tag @s remove 110pageChange