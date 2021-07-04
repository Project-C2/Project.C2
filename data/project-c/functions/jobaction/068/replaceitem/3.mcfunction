item replace entity @s hotbar.3 with minecraft:blaze_rod{display:{Name:'{"text":"重爆撃機フォボスZ プラン4","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§fスペクテイターモードになり、座標を指定し"}','{"text":"§f一定時間後に強力な爆撃機を要請する。"}','{"text":"§f爆撃機は発動地点後方から前方に通り抜ける。"}','{"text":"§aCT:60"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3