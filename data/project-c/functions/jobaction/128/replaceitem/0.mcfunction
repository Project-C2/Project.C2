item replace entity @s hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"Laser Sword","color":"aqua","underlined":true,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;-71924864,-1910620095,-1909503279,165597798],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2,Operation:0,UUID:[I;-71924864,-1910620095,-1909503279,165597798],Slot:"mainhand"}],Unbreakable:1b,HideFlags:1} 1

item replace entity @s hotbar.4 with minecraft:diamond{display:{Name:'{"text":"Cybernetic Enhancements","color":"white","italic":false}',Lore:['{"text":"発動:空中でもう一度ジャンプ","color":"yellow","italic":false}','{"text":"二段ジャンプを行う。","color":"white","italic":false}']},HideFlags:32} 1

item replace entity @s[tag=!128useElytra,nbt={OnGround:1b}] armor.chest with minecraft:elytra{display:{Name:'{"text":"Celestial Feather","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}','{"text":"[Jump: Double Jump]","color":"white","italic":false}','{"text":" "}','{"text":""大丈夫、きっとやりとげられる"","color":"white","italic":false}']},HideFlags:5,RepairCost:-1000,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.maxHealth",Amount:-0.3,Operation:1,UUIDLeast:605430,UUIDMost:320978,Slot:"chest"}],Unbreakable:1b,ItemName:Celestial_Feather,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:binding_curse",lvl:1}],CustomModelData:1} 1

item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{Unbreakable:1b} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0