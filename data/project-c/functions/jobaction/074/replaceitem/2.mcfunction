item replace entity @s hotbar.2 with minecraft:blaze_rod{display:{Name:'{"text":"ラヴァジャヴェリン","color":"red","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"壁で反射する溶岩の投槍を発射する。","color":"white","italic":false}','{"text":"約90ブロック分だけ進み、軌跡を灼熱の炎で封鎖する。","color":"white","italic":false}','{"text":"CT:12","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2