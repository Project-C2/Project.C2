item replace entity @s hotbar.1 with horn_coral{display:{Name:'{"text":"バニッシュメント","color":"white","italic":false}',Lore:['{"text":"発動:スニーク","color":"yellow","italic":false}','{"text":"周囲の敵の位置に光の柱を生み出し、","color":"white","italic":false}','{"text":"1秒後にその場に落雷を落とす","color":"white","italic":false}','{"text":"直撃した敵に発光を付与する","color":"white","italic":false}','{"text":"CT:10","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1