replaceitem entity @s[scores={Mana=..0}] hotbar.0 minecraft:blaze_rod{display:{Name:'{"text":"イリュージョンレーザー","color":"gold","italic":false,"underlined":true}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f前方を光線で攻撃する。"}','{"text":"§aCT:3"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
replaceitem entity @s[scores={Mana=1..20}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 1
replaceitem entity @s[scores={Mana=21..40}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 2
replaceitem entity @s[scores={Mana=41..60}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 3
replaceitem entity @s[scores={Mana=61..80}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 4
replaceitem entity @s[scores={Mana=81..100}] hotbar.0 minecraft:compass{display:{Name:'{"text":"CoolTime"}'}} 5
replaceitem entity @s weapon.offhand minecraft:snowball{display:{Name:'{"text":"魔法球","color":"gray","italic":false,"underlined":true}'},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
replaceitem entity @s armor.head minecraft:iron_helmet{display:{Name:'{"text":"Witch Hat"}'},AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:1,Operation:0,UUID:[I;1785754322,499597348,-1802027895,1510365000],Slot:"head"}]} 1

scoreboard players reset @s drop