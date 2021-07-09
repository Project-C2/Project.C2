item replace entity @s hotbar.1 with minecraft:flint{display:{Name:'{"text":"タレット","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f前方へ火球を放つタレットを設置する。"}','{"text":"§f最大5体まで。"}','{"text":"§aCT:5"}']},HideFlags:63} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1