item replace entity @s hotbar.2 with minecraft:end_crystal{display:{Name:'{"text":"デストロイモード","color":"dark_red","italic":"false","underlined":"true"}',Lore:['{"text":"§e発動:スニーク"}','{"text":"§f6秒間発光し、攻撃力と移動速度と"}','{"text":"§f攻撃速度が限界まで引き上げられる。"}','{"text":"§f効果時間が終了すると自身が大ダメージを負う。"}','{"text":"§aCT:30"}']},HideFlags:1,Enchantments:[{id:"minecraft:sharpness",lvl:0}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2