advancement revoke @s only project-c:neac/inventory_changed

function project-c:jobaction/110/replaceitem/gui/set


#execute if entity @s[tag=110_drop] run function project-c:jobaction/110/replaceitem/weapon
#execute if entity @s[tag=110_drop] run function project-c:jobaction/110/replaceitem/bless
#execute if entity @s[tag=110_drop] run function project-c:jobaction/110/replaceitem/skills

replaceitem entity @s[tag=110_drop] hotbar.4 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"特殊枠","italic":false}',Lore:['{"text":"ここに特殊枠を追加します","italic":false}']}} 1

#Tag削除
tag @s[tag=110_page_setup] remove 110_page_setup
tag @s[tag=110_skill_page_setup] remove 110_skill_page_setup
tag @s[tag=110_gui_all_setup] remove 110_gui_all_setup


tag @s[tag=110_drop] remove 110_drop