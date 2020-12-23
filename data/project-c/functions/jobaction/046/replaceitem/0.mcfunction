replaceitem entity @s hotbar.0 minecraft:golden_sword{display:{Name:'{"text":"spear"}'},Unbreakable:1b} 1
replaceitem entity @s weapon.offhand minecraft:golden_sword{display:{Name:'{"text":"longsword"}'},Unbreakable:1b} 1
replaceitem entity @s armor.chest minecraft:elytra{display:{Name:'{"text":"Vex Wings"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:-8,Operation:0,UUID:[I;-779585008,-1467727641,-1419561838,2129138811],Slot:"chest"}]} 1
replaceitem entity @s[scores={CT1=..1199}] armor.chest minecraft:elytra{display:{Name:'{"text":"Vex Wings"}',Lore:['{"text":"壊れている"}']},Unbreakable:1b,Damage:1000,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1

scoreboard players reset @s drop