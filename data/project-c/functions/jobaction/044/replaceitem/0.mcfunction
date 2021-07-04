item replace entity @s[scores={counter_1=1}] weapon.offhand with minecraft:arrow{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 1
item replace entity @s[scores={counter_1=2}] weapon.offhand with minecraft:arrow{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 2
item replace entity @s[scores={counter_1=3}] weapon.offhand with minecraft:arrow{Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 3
item replace entity @s hotbar.0 with minecraft:bow{display:{Name:'{"text":"星弓＝ヘラクレス","color":"yellow","italic":false,"underlined":true}'},HideFlags:1,Unbreakable:1b,Enchantments:[{id:"minecraft:unbreaking",lvl:1}]} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0