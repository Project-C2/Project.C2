item replace entity @s hotbar.0 with minecraft:iron_sword{display:{Name:'{"text":"投げナイフ","color":"white","underlined":true,"italic":false}'},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:2,Operation:0,UUID:[I;281716386,-451522753,-1768625751,611734678],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1,Operation:0,UUID:[I;281716386,-451522753,-1768625751,611734678],Slot:"mainhand"}],Unbreakable:1b,HideFlags:1} 1

item replace entity @s[scores={stockcounter=0}] weapon.offhand with minecraft:snowball
scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0