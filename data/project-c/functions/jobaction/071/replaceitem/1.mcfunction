item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick{display:{Name:'{"text":"弾丸装填","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e右クリック"}','{"text":"§f効果:風の力を消費し矢を創り出す。"}','{"text":"§f発動時の風の力の消費量により矢の性能が変わる。"}','{"text":"§aCT:10"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1