item replace entity @s hotbar.3 with minecraft:potion{display:{Name:'{"text":"はてなポーション"}'},CustomPotionEffects:[{Id:26,Amplifier:108,Duration:2}],CustomPotionColor:16777215,HideFlags:32} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3