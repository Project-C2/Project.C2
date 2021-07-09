item replace entity @s hotbar.0 with golden_sword{display:{Name:'{"text":"シュヴァリエソード・マグナ","color":"white","italic":false}',Lore:['{"text":" ","color":"gray","italic":false}','{"text":"利き手に持ったとき:","color":"gray","italic":false}','{"text":" 攻撃力 2.5","color":"dark_green","italic":false}','{"text":" 攻撃速度 1.6","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.5,Operation:0,UUID:[I;-332976322,-1981265970,-1476138317,-75597045],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-256159887,-1225372504,-1651641981,1010234161],Slot:"mainhand"}]} 1
item replace entity @s weapon.offhand with golden_axe{display:{Name:'{"text":"シュヴァリエブージ・マグナ","italic":false}',Lore:['{"text":" "}','{"text":"利き手に持ったとき:","color":"gray","italic":false}','{"text":" 攻撃力 4.5","color":"dark_green","italic":false}','{"text":" 攻撃速度 1","color":"dark_green","italic":false}']},HideFlags:6,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:3.5,Operation:0,UUID:[I;492022226,-1267511831,-1356080719,-1693047514],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-3,Operation:0,UUID:[I;1021370766,1268993380,-1140773275,463420797],Slot:"mainhand"}]} 1
item replace entity @s hotbar.4 with end_crystal{display:{Name:'{"text":"イージスマージ・ディヴァイド","color":"white","italic":false}',Lore:['{"text":"発動:パッシブ","color":"yellow","italic":false}','{"text":"モード:イージスマージで試合を開始し、効果中体力が","color":"white","italic":false}','{"text":"金ハートに置き換わり、受けたダメージを吸収する","color":"white","italic":false}','{"text":"金ハートが0になるか衝撃吸収効果が消去された際、","color":"white","italic":false}','{"text":"体力を回復してモード:ディヴァインウェポンに移行する","color":"white","italic":false}','{"text":"モード:ディヴァインウェポンに移行後30秒経過すると","color":"white","italic":false}','{"text":"解除され、モード:イージスマージに再移行する","color":"white","italic":false}']}} 1
item replace entity @s[scores={counter_4=..0}] armor.chest with elytra{display:{Name:'{"text":"モード:イージスマージ","color":"yellow","bold":true,"italic":false}',Lore:['{"text":" 防具 +7.5","color":"gray","italic":false}','{"text":" 防具強度 +2.5","color":"gray","italic":false}','{"text":" 滑空能力","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:7.5,Operation:0,UUID:[I;-1245327899,390941413,-1895648147,1921846778],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:2.5,Operation:0,UUID:[I;1023964609,1884376969,-2141716239,330545278],Slot:"chest"}]} 1
item replace entity @s[scores={counter_4=1..}] armor.chest with golden_chestplate{display:{Name:'{"text":"モード:ディヴァインウェポン","color":"yellow","bold":true,"italic":false}',Lore:['{"text":" 攻撃力 +1.5","color":"gray","italic":false}','{"text":" 攻撃速度 +0.25","color":"gray","italic":false}','{"text":" デバフ無効","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.5,Operation:0,UUID:[I;718637608,-1675276788,-2082294732,1572365642],Slot:"chest"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.25,Operation:0,UUID:[I;185303513,-1883943207,-1982710783,1461399516],Slot:"chest"}]} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0