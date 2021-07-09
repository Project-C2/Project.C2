item replace entity @s hotbar.1 with minecraft:light_blue_dye{display:{Name:'{"text":"チャージ済みのナノ爆弾","color":"blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f着弾地点で爆発する電撃弾を放つ。"}','{"text":"§f弾は周囲の敵に連鎖する電撃を放つ。"}','{"text":"§aCT:15"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1