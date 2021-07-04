clear @s stick
item replace entity @s hotbar.0 with minecraft:netherite_hoe{display:{Name:'{"text":"Snipe","color":"dark_purple","italic":false}',Lore:['{"text":"前方に矢を放つ。発動後Reloadに変化。","color":"white","italic": false}']},Unbreakable:1b} 1
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{Unbreakable:1b} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0