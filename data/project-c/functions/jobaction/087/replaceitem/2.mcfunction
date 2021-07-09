item replace entity @s hotbar.2 with minecraft:hopper{display:{Name:'{"text":"コネクティング","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク(手に持たなくても使用可能)"}','{"text":"§fタレットの向きを敵の方角へ変える。"}','{"text":"§aCT:1"}']},HideFlags:63} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2