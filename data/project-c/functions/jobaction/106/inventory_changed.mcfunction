advancement revoke @s only project-c:neac/inventory_changed

function project-c:jobaction/106/items/gui/main


execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/weapon

execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/support

execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/skill/setup

execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/auxiliary/setup


#Tag削除
tag @s[tag=106_page_setup] remove 106_page_setup
tag @s[tag=106_close_proc] remove 106_close_proc
tag @s[tag=106_skill_page_setup] remove 106_skill_page_setup
tag @s[tag=106_exstorage_page_setup] remove 106_exstorage_page_setup
tag @s[tag=106_gui_all_setup] remove 106_gui_all_setup


tag @s[tag=106_drop] remove 106_drop