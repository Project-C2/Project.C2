item replace entity @s hotbar.0 with shulker_shell{display:{Name:'{"text":"グローブ","italic":"false"}',Lore:['{"text":"ちぇるーん★。","italic":"false","color":"white"}']},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3,Operation:0,UUID:[I;1,1,1,1],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;1,1,1,1],Slot:"mainhand"}]} 1
function project-c:jobaction/108/update_attack_damage/01
scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0