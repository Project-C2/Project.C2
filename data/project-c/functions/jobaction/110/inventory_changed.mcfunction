advancement revoke @s only project-c:neac/inventory_changed

execute unless entity @s[tag=110drop] run function project-c:jobaction/110/gui/main
execute if entity @s[tag=110drop] run function project-c:jobaction/110/gui/set


replaceitem entity @s[tag=110drop] hotbar.4 minecraft:gray_stained_glass_pane{display:{Name:'{"text":"特殊枠","italic":false}',Lore:['{"text":"ここに特殊枠を追加します","italic":false}']}} 1

tag @s[tag=110drop] remove 110drop