item replace entity @s hotbar.2 with minecraft:bow{display:{Name:'{"text":"サイコショット"}',Lore:['{"text":"発動:スニーク"}','{"text":"前方に弓を投げつけ、"}','{"text":"敵に短時間の発光+暗視+盲目を付与。"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2