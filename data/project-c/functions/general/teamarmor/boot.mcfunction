item replace entity @a[team=Red,tag=SetArmor] armor.feet with minecraft:leather_boots{HideFlags:5,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;0,467478,0,492552],Slot:"boots"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'"チームブーツ"',color:16711680},Unbreakable:1b} 1

item replace entity @a[team=Blue,tag=SetArmor] armor.feet with minecraft:leather_boots{HideFlags:5,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;0,467478,0,492552],Slot:"boots"}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],display:{Name:'"チームブーツ"',color:255},Unbreakable:1b} 1

clear @a[tag=SetArmor] minecraft:leather_helmet

clear @a[tag=SetArmor] minecraft:leather_chestplate

clear @a[tag=SetArmor] minecraft:leather_leggings

tag @a[tag=SetArmor] remove SetArmor