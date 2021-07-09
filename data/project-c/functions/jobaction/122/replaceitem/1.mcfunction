item replace entity @s hotbar.1 with minecraft:pink_dye{display:{Name:'{"text":"サイコボール","color":"white","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"サイコボールが光放ち、","color":"white","italic":false}','{"text":"前方に微チャージの後、エネルギー弾を放つ。","color":"white","italic":false}','{"text":"CT:6","color":"green","italic":false}']},HideFlags:32} 1


playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1