item replace entity @s hotbar.3 with minecraft:snowball{display:{Name:'{"text":"To The Stars","color":"yellow","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"空へ跳躍し、真下に攻撃を仕掛ける。","color":"white","italic":false}','{"text":"CT:15","color":"green","italic":false}']},Enchantments:[{}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3