item replace entity @s hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4/ストック4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
item replace entity @s enderchest.2 from entity @s container.2

item replace entity @s[scores={counter_2=0}] hotbar.2 with minecraft:compass

item replace entity @s[scores={counter_2=1}] hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4/ストック4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

item replace entity @s[scores={counter_2=2}] hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4/ストック4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 2

item replace entity @s[scores={counter_2=3}] hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4/ストック4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 3

item replace entity @s[scores={counter_2=4}] hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4/ストック4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 4

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2