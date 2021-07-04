item replace entity @s hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2