item replace entity @s hotbar.1 with minecraft:magma_cream{display:{Name:'{"text":"メラ","color":"red","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック / もう一度右クリックで解放"}','{"text":"§f前方に火炎弾を放つ。"}','{"text":"§fチャージにより威力が上昇する。"}','{"text":"§aMP:6/16/36"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1