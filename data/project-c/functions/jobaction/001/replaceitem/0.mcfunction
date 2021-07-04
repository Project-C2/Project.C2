item replace entity @s hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"Iron spear"}'},Unbreakable:1b} 1
item replace entity @s weapon.offhand with minecraft:shield{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.5,Operation:0,UUID:[I;-1,1,0,2],Slot:"offhand"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-1,1,0,2],Slot:"offhand"}],Unbreakable:1,BlockEntityTag:{Base:0,Patterns:[{Pattern:gru,Color:7},{Pattern:sc,Color:14}]}} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0