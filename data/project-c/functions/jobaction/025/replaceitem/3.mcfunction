item replace entity @s hotbar.3 with minecraft:nether_star{display:{Name:'{"text":"忘れた頃の復讐","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"発動:スニーク"}','{"text":"怒りゲージに応じて火力が増加する"}','{"text":"CT:60"}']},HideFlags:1} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3