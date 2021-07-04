item replace entity @a[team=Red,tag=SetArmor] armor.head with minecraft:leather_helmet{HideFlags:5,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;0,467478,0,492552],Slot:"head"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'"チームヘルメット"',color:16711680},Unbreakable:1b} 1

item replace entity @a[team=Blue,tag=SetArmor] armor.head with minecraft:leather_helmet{HideFlags:5,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;0,467478,0,492552],Slot:"head"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'"チームヘルメット"',color:255},Unbreakable:1b} 1

clear @a[tag=SetArmor] minecraft:leather_chestplate

clear @a[tag=SetArmor] minecraft:leather_leggings

clear @a[tag=SetArmor] minecraft:leather_boots

tag @a[tag=SetArmor] remove SetArmor