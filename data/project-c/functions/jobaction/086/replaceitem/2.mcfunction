item replace entity @s hotbar.2 with minecraft:lily_of_the_valley{display:{Name:'{"text":"黙想","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f3秒間ダメージを与えず、また受けなかった場合に"}','{"text":"§f居合と燕返しのCTを加速する。"}','{"text":"§aCT:10"}']},HideFlags:63} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2