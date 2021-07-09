item replace entity @s[scores={counter_1=1}] weapon.offhand with minecraft:snowball 1
item replace entity @s[scores={counter_1=2}] weapon.offhand with minecraft:snowball 2
item replace entity @s[scores={counter_1=3}] weapon.offhand with minecraft:snowball 3

item replace entity @s[scores={counter_3=0}] hotbar.0 with minecraft:diamond_sword{HideFlags:1,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.3,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.1,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"}],Unbreakable:1,display:{Name:'{"text":"父王の剣"}',Lore:['{"text":"ルシス王国に伝わる武器。"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}]}
item replace entity @s[scores={counter_3=1}] hotbar.0 with minecraft:diamond_hoe{HideFlags:1,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:1,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.5,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"}],Unbreakable:1,display:{Name:'{"text":"夜叉王の刀剣"}',Lore:['{"text":"ルシス王国に伝わる武器。"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}]}
item replace entity @s[scores={counter_3=2}] hotbar.0 with minecraft:diamond_axe{HideFlags:0,AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:7,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.6,Operation:1,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3.42,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;-1282659273,1747077405,-1324473214,1323579637],Slot:"mainhand"}],Unbreakable:1,display:{Name:'{"text":"修羅王の刃"}',Lore:['{"text":"ルシス王国に伝わる武器。"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}]}

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0