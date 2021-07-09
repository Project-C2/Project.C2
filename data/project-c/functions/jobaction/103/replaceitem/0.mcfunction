clear @s stick
item replace entity @s hotbar.0 with minecraft:stick{display:{Name:'{"text":"メテオワンド","color":"gold","italic":false}',Lore:['{"text":"5秒に1回、ノックバック2を1秒間得る。","color":"white","italic": false}','{"text":"ただし、この状態で火球以外を殴ると自爆する。","color":"white","italic": false}']},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"103",Amount:2.0d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"103",Amount:1d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],Unbreakable:1b} 1
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{Unbreakable:1b} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0