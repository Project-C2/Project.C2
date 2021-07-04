item replace entity @s hotbar.3 with minecraft:nether_star{display:{Name:'{"text":"ヴィルヴェルヴィント","color":"green","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"自身を中心につむじ風を大量発生させる。","color":"white","italic":false}','{"text":"使用後15秒間は再度使用不可。","color":"white","italic":false}','{"text":"CT:60","color":"green","italic":false}']}} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3