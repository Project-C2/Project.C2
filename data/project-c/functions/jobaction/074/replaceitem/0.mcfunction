replaceitem entity @s hotbar.0 minecraft:stone_sword{display:{Name:'{"text":"火蜥蜴の剣","color":"red","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"074",Amount:-2.85d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"074",Amount:5,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],Unbreakable:1b} 1

replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"烈火の杖","color":"red","italic":false}'},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.maxHealth",Amount:-0.25d,Operation:1,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"offhand"}],Unbreakable:1b} 1

execute unless score @s counter_3 matches 0..1 run scoreboard players set @s counter_3 0
scoreboard players reset @s drop