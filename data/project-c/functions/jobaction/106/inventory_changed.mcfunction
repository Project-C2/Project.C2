
execute if data entity @s[tag=!106_weapon5_charged] {Inventory:[{id:"minecraft:crossbow",tag:{106_weapon:5,Charged:1b}}]} run function project-c:jobaction/106/items/weapon/05/charge

execute unless entity @s[tag=106_drop] run function project-c:jobaction/106/items/gui/main


execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/weapon/setup

execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/support/setup

execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/skill/setup

execute if entity @s[tag=106_drop] run function project-c:jobaction/106/items/auxiliary/setup


#execute if entity @s[tag=106_weapon5_replace] run function project-c:jobaction/106/items/weapon/05/set
execute if entity @s[tag=106_weapon5_replace] run function project-c:jobaction/106/items/auxiliary/arrow/set

tag @s[tag=106_weapon5_replace] remove 106_weapon5_replace
#Tag削除
tag @s[tag=106_page_setup] remove 106_page_setup


tag @s[tag=106_drop] remove 106_drop
advancement revoke @s only project-c:neac/inventory_changed