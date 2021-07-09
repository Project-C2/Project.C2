item replace entity @s hotbar.2 with minecraft:respawn_anchor{display:{Name:'{"text":"星遺物に眠る深層","color":"yellow","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f自身の水平十字方向へ衝撃波を放ち、"}','{"text":"§f敵にはダメージ、味方に回復を付与する。"}','{"text":"§aCT:60"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2