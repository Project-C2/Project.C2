#メインP1

loot replace block 0 0 0 container.4 loot project-c:neac/106/weapon/01
data modify block 0 0 0 Items[{Slot:4b}].tag.106_gui_item set value 1

loot replace block 0 0 0 container.5 loot project-c:neac/106/weapon/02
data modify block 0 0 0 Items[{Slot:5b}].tag.106_gui_item set value 1

loot replace block 0 0 0 container.6 loot project-c:neac/106/weapon/03
data modify block 0 0 0 Items[{Slot:6b}].tag.106_gui_item set value 1



data remove block 0 0 0 Items[{tag:{106_item:0}}].tag.106_weapon
