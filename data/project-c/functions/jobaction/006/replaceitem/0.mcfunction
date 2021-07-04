item replace entity @s hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"white eclipse blade"}'},Unbreakable:1b,Enchantments:[{id:22,lvl:3}]} 1
item replace entity @s[scores={counter_2=1}] weapon.offhand with minecraft:ender_pearl 1
item replace entity @s[scores={counter_2=2}] weapon.offhand with minecraft:ender_pearl 2
item replace entity @s[scores={counter_2=3}] weapon.offhand with minecraft:ender_pearl 3

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0