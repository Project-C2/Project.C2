item replace entity @s hotbar.0 with minecraft:bow{display:{Name:'{"text":"弓"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
item replace entity @s weapon.offhand with minecraft:arrow 1
function project-c:jobaction/058/replaceitem/4

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0