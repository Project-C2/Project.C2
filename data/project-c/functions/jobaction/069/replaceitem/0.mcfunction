item replace entity @s hotbar.0 with minecraft:crossbow{display:{Name:'{"text":"ショートボウ","color":"white","underlined":false,"italic":false}'},Enchantments:[{id:"quick_charge",lvl:3s}],Unbreakable:1b} 1

item replace entity @s[tag=!069useElytra,nbt={OnGround:1b}] armor.chest with minecraft:elytra{display:{Name:'{"text":"Celestial Feather","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}','{"text":"[Jump: Double Jump]","color":"white","italic":false}','{"text":" "}','{"text":""大丈夫、きっとやりとげられる"","color":"white","italic":false}']},HideFlags:5,RepairCost:-1000,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.maxHealth",Amount:-0.3,Operation:1,UUIDLeast:605430,UUIDMost:320978,Slot:"chest"}],Unbreakable:1b,ItemName:Celestial_Feather,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:binding_curse",lvl:1}],CustomModelData:1} 1

item replace entity @s hotbar.4 with minecraft:arrow

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0