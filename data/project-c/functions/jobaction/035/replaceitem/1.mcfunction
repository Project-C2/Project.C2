item replace entity @s hotbar.1 with minecraft:nether_star{display:{Name:'{"text":"299792458[m/s]"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§6超高速で発射する弓矢を構える。"}','{"text":"§aCT:1,Cost:1"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1