item replace entity @s hotbar.3 with minecraft:end_rod{display:{Name:'{"text":"Lights Out","color":"dark_purple","italic":false}',Lore:['{"text":"発動: 右クリック","color":"yellow","italic":false}','{"text":"前方に強力な一撃を放つ。","color":"white","italic":false}','{"text":"命中時、全てのクールタイムをリセットする。","color":"white","italic":false}','{"text":"CT:10","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3