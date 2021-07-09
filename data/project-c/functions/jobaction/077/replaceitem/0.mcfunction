item replace entity @s hotbar.0 with minecraft:golden_pickaxe{display:{Name:'{"text":"Crush","color":"yellow","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"074",Amount:-1.0d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"074",Amount:3,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],Unbreakable:1b} 1

item replace entity @s weapon.offhand with minecraft:golden_pickaxe{display:{Name:'{"text":"Crush","color":"yellow","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"074",Amount:-1.0d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"074",Amount:3,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],Unbreakable:1b} 1

item replace entity @s armor.chest with minecraft:golden_chestplate{display:{Name:'{"text":"miner armor"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[]} 1

execute unless score @s counter_3 matches 0..1 run scoreboard players set @s counter_3 0
scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0