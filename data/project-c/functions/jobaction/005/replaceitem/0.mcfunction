item replace entity @s hotbar.0 with minecraft:flint_and_steel{Unbreakable:1b,display:{Name:'{"text":"Green Lighter"}'}} 1
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{Unbreakable:1b,display:{Name:'{"text":"起爆装置"}',Lore:['{"text":"発動:右クリック"}','{"text":"一番近い爆弾を爆発させる。"}','{"text":"味方の爆弾も爆発する。"}']},ench:[{id:3,lvl:2}]} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0