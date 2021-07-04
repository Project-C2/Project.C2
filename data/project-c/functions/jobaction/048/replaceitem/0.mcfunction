item replace entity @s weapon.offhand with minecraft:bow{display:{Name:'{"text":"精霊弓"}'},Unbreakable:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
item replace entity @s hotbar.0 with minecraft:arrow 1
item replace entity @s hotbar.4 with minecraft:heart_of_the_sea{display:{Name:'{"text":"アストラル・ハーツ"}',Lore:['{"text":"発動:矢を放つ"}','{"text":"効果:自身の放った矢に宿した精霊の力を起動させる。"}','{"text":"発動:既に放った矢の近くでスキル発動"}','{"text":"現在近くにある矢に更に属性を追加させる。"}','{"text":"発動:常時"}','{"text":"自身が常に空中を浮くようになる。"}','{"text":"スニークで降下可能。"}']},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0