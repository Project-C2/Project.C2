item replace entity @s hotbar.0 with minecraft:golden_sword{display:{Name:'{"text":"holy stake"}'},Unbreakable:1b,Enchantments:[{id:"smite",lvl:3s},{id:"sharpness",lvl:1s}],HideFlags:1} 1
item replace entity @s hotbar.4 with minecraft:writable_book{display:{Name:'{"text":"救世主"}',Lore:['{"text":"ゲーム開始時、三柱の死天使を呼び出す。"}','{"text":"倒されても60秒で復活する。"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}],pages:[""]} 1
item replace entity @s weapon.offhand with minecraft:iron_nugget{display:{Name:'{"text":"天集いの笛"}',Lore:['{"text":"発動:メイン/オフハンドの切り替え"}','{"text":"死天使を招集する。"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1}]} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0