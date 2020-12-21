replaceitem entity @a[team=Red,tag=SetArmor] armor.head minecraft:leather_helmet{HideFlags:5,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:492552,UUIDMost:467478,Slot:"head"}],ench:[{id:10,lvl:1}],display:{Name:"チームヘルメット",color:16711680},Unbreakable:1b} 1

replaceitem entity @a[team=Blue,tag=SetArmor] armor.head minecraft:leather_helmet{HideFlags:5,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:492552,UUIDMost:467478,Slot:"head"}],ench:[{id:10,lvl:1}],display:{Name:"チームヘルメット",color:255},Unbreakable:1b} 1

clear @a[tag=SetArmor] minecraft:leather_chestplate

clear @a[tag=SetArmor] minecraft:leather_leggings

clear @a[tag=SetArmor] minecraft:leather_boots

tag @a[tag=SetArmor] remove SetArmor