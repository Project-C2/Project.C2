item replace entity @s hotbar.1 with minecraft:light_blue_dye{display:{Name:'{"text":"冷血の霜撃","color":"aqua","bold":true,"italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"急速に凍結する寒気を放ち、","color":"white","italic":false}','{"text":"前方の敵にダメージと鈍足を与える。","color":"white","italic":false}','{"text":"攻撃が命中時、自身のHPを小回復する。","color":"white","italic":false}','{"text":"CT:7","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1