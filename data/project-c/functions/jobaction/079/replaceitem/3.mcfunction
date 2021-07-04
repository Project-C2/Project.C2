item replace entity @s hotbar.3 with minecraft:soul_lantern{display:{Name:'{"text":"星遺物の機憶","color":"yellow","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:パッシブ"}','{"text":"§f自身の水平方向十字に敵がいる時に、"}','{"text":"§f自身のステータスを強化する。"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3