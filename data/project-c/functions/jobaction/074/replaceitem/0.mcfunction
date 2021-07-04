item replace entity @s hotbar.0 with minecraft:stone_sword{display:{Name:'{"text":"火蜥蜴の剣","color":"red","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"074",Amount:-2.85d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"074",Amount:5,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],Unbreakable:1b} 1

item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"烈火の杖","color":"red","italic":false}'},AttributeModifiers:[],Unbreakable:1b} 1

execute unless score @s counter_3 matches 0..1 run scoreboard players set @s counter_3 0
scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0