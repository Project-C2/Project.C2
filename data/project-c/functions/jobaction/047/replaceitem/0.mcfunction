item replace entity @s[scores={Mana=..0}] hotbar.0 with minecraft:blaze_rod{display:{Name:'{"text":"イリュージョンレーザー","color":"gold","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f前方を光線で攻撃する。"}','{"text":"§aCT:3"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
item replace entity @s[scores={Mana=1..20}] hotbar.0 with minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 1
item replace entity @s[scores={Mana=21..40}] hotbar.0 with minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 2
item replace entity @s[scores={Mana=41..60}] hotbar.0 with minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 3
item replace entity @s[scores={Mana=61..80}] hotbar.0 with minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 4
item replace entity @s[scores={Mana=81..100}] hotbar.0 with minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 5
item replace entity @s weapon.offhand with minecraft:snowball{display:{Name:'{"text":"魔法球","color":"gray","italic":false,"underlined":true}'},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
item replace entity @s armor.head with minecraft:iron_helmet{display:{Name:'{"text":"Witch Hat"}'},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:1,Operation:0,UUID:[I;1785754322,499597348,-1802027895,1510365000],Slot:"head"}]} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0