replaceitem entity @s hotbar.0 minecraft:golden_sword{display:{Name:'{"text":"今は亡き猛者の剣","color":"aqua","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"089",Amount:-2.0d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"089",Amount:4,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],Unbreakable:1b} 1

replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"古代ニンジン遺物","color":"aqua","italic":false}'},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movementSpeed",Amount:0.2d,Operation:1,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:'offhand'}],Unbreakable:1b,Enchantments:[{id:"vanishing_curse",lvl:10s}]} 1

execute unless score @s counter_3 matches 0..1 run scoreboard players set @s counter_3 0
scoreboard players reset @s drop