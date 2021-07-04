item replace entity @s hotbar.2 with minecraft:heart_of_the_sea{display:{Name:'{"text":"Blinding Assault","color":"white","italic":false}',Lore:['{"text":"発動:スニーク(手に持たなくても発動可能)","color":"yellow","italic":false}','{"text":"前方に突進し、ダメージを与える。発動中無敵。","color":"white","italic":false}','{"text":"命中時最大2回までBlinding AssaultのCTがリセットされる。","color":"white","italic":false}','{"text":"CT:15","color":"green","italic":false}']}} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
