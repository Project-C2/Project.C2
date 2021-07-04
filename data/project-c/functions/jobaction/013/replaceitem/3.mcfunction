item replace entity @s hotbar.3 with minecraft:player_head{display:{Name:'{"text":"マインドコントロール"}',Lore:['{"text":"発動:攻撃"}','{"text":"敵を2秒間スタン状態にし"}','{"text":"全スキルのCTを3秒追加する。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3