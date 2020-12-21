advancement revoke @s only project-c:neac/inventory_changed

function project-c:jobaction/106/items/gui/main


execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/weapon

execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/support

execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/skill/setup

execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/auxiliary/setup

replaceitem entity @s[tag=106_drop] hotbar.4 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"特殊枠"}',Lore:['{"text":"ここに特殊枠を追加します"}']}} 1

#Tag削除
tag @s[tag=106_page_setup] remove 106_page_setup
tag @s[tag=106_close_proc] remove 106_close_proc
tag @s[tag=106_skill_page_setup] remove 106_skill_page_setup
tag @s[tag=106_exstorage_page_setup] remove 106_exstorage_page_setup
tag @s[tag=106_gui_all_setup] remove 106_gui_all_setup


tag @s[tag=106_drop] remove 106_drop