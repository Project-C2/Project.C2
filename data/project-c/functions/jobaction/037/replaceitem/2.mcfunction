item replace entity @s[team=Red] hotbar.2 with minecraft:splash_potion{display:{Name:'{"text":"究極拷問安眠スペシャル"}'},CustomPotionEffects:[{Id:26,Amplifier:102,Duration:2}],Potion:"minecraft:luck",HideFlags:32,CustomPotionColor:13158600} 1
item replace entity @s[team=Blue] hotbar.2 with minecraft:splash_potion{display:{Name:'{"text":"究極拷問安眠スペシャル"}'},CustomPotionEffects:[{Id:26,Amplifier:103,Duration:2}],Potion:"minecraft:luck",HideFlags:32,CustomPotionColor:13158600} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2