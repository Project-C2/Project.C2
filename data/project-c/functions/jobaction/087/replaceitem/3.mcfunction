item replace entity @s hotbar.3 with minecraft:blaze_powder{display:{Name:'{"text":"クラックブラスト","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§fタレットから強力な一撃を放つ。"}','{"text":"§f効果を受けたタレットは破壊される。"}','{"text":"§aCT:15"}']},HideFlags:63} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3
