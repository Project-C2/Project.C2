replaceitem entity @s hotbar.0 minecraft:stick{display:{Name:'{"text":"メテオワンド","color":"gold","italic":false}',Lore:['{"text":"5秒に1回、ノックバック2を0.8秒間得る。","color":"white","italic": false}']},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"103",Amount:2.0d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"103",Amount:1d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],Unbreakable:1b,Enchantments:[{id:"knockback",lvl:2s}]} 1
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 1 2
particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0.5 80 normal @a
particle minecraft:enchanted_hit ~ ~ ~ 1 1 1 0.5 20 force @a
