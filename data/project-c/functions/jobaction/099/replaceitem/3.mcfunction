item replace entity @s hotbar.3 with minecraft:netherite_ingot{display:{Name:'{"text":"フォームチェンジ","color":"#CB1111","bold":true,"italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"現在の到達フェーズまでのフォームを切り替える。","color":"white","italic":false}','{"text":"CT:1","color":"green","italic":false}']},job99_skill:3b} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3