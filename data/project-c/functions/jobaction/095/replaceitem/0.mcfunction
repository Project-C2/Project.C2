item replace entity @s hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"Iron Spear","color":"gray","italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"095",Amount:-2.4d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"095",Amount:3d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],Unbreakable:1b,095weapon:1b} 1
item replace entity @s weapon.offhand with minecraft:snowball 1
function project-c:jobaction/095/replaceitem/4

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0