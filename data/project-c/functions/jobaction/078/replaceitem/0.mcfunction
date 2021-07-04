item replace entity @s[scores={counter_3=0}] hotbar.0 with minecraft:prismarine_shard{display:{Name:'{"text":"DICE","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f前方のお客様に包丁を提供する。"}','{"text":"§fBOOMERANGS BACK","italic":"false"}']},HideFlags:63} 1
item replace entity @s[scores={counter_3=1}] hotbar.0 with minecraft:prismarine_shard{display:{Name:'{"text":"MINCE","color":"gold","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f8方向のお客様に包丁を提供する。"}','{"text":"§fBOOMERANGS BACK","italic":"false"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s weapon.offhand with minecraft:snowball

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0