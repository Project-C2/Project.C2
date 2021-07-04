item replace entity @s hotbar.2 with minecraft:anvil{display:{Name:'{"text":"グランドクラッシュ"}',Lore:['{"text":"発動:落下"}','{"text":"周囲の敵にダメージ+スタン。"}']}}
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2