item replace entity @s hotbar.0 with minecraft:diamond_sword{display:{Name:'{"text":"モナド＝機械仕掛けの神剣","color":"red","italic":false,"underlined":true}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"アーツを入れ替える","color":"white","italic":false}']},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.7,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}]} 1
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick 1
scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0
item replace entity @s[scores={Mana=1}] hotbar.4 with minecraft:purple_glazed_terracotta{display:{Name:'{"text":"斬＝バスター","color":"dark_purple","italic":false,"underlined":true}',Lore:['{"text":"攻撃力が上昇する","color":"white","italic":false}']}} 1
item replace entity @s[scores={Mana=2}] hotbar.4 with minecraft:gray_glazed_terracotta{display:{Name:'{"text":"鎧＝アーマー","color":"dark_gray","italic":false,"underlined":true}',Lore:['{"text":"防御力が上昇する","color":"white","italic":false}']}} 1
item replace entity @s[scores={Mana=3}] hotbar.4 with minecraft:light_blue_glazed_terracotta{display:{Name:'{"text":"疾＝スピード","color":"aqua","italic":false,"underlined":true}',Lore:['{"text":"機動力が上昇する","color":"white","italic":false}']}} 1