item replace entity @s hotbar.1 with minecraft:spectral_arrow{display:{Name:'{"text":"トラップ・オブ・アルガリア","color":"gold","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"前方を槍で攻撃し、","color":"white","italic":false}','{"text":"命中した敵にスタンを付与する。","color":"white","italic":false}','{"text":"CT:10","color":"green","italic":false}']},Enchantments:[{}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1