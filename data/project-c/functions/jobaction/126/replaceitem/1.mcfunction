item replace entity @s hotbar.1 with minecraft:kelp{display:{Name:'{"text":"ウィンドエッジ","color":"white","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"敵の座標に風の刃を放つ。","color":"white","italic":false}','{"text":"CT:7","color":"green","italic":false}']},HideFlags:32} 1


playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1