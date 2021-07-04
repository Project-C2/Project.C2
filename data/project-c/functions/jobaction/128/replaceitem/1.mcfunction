item replace entity @s hotbar.1 with minecraft:prismarine_shard{display:{Name:'{"text":"Whirlwind","color":"white","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"跳躍し、周囲の敵を切り刻む。","color":"white","italic":false}','{"text":"CT:6","color":"green","italic":false}']},HideFlags:32} 1


playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1