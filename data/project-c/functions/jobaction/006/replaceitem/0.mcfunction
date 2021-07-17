item replace entity @s hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"white eclipse blade"}'},Unbreakable:1b,Enchantments:[{id:22,lvl:3}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.5,Operation:0,UUID:[I;-261370136,1951877744,-1100090295,-1473627646],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-261370136,1951877744,-1100090295,-1473627646],Slot:"mainhand"}]} 1
item replace entity @s[scores={counter_2=1}] weapon.offhand with minecraft:ender_pearl 1
item replace entity @s[scores={counter_2=2}] weapon.offhand with minecraft:ender_pearl 2
item replace entity @s[scores={counter_2=3}] weapon.offhand with minecraft:ender_pearl 3

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0