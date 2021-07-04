item replace entity @s hotbar.2 with minecraft:seagrass{display:{Name:'{"text":"ハウリングストーム","color":"green","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"自身の周囲に風を巻き起こし、","color":"white","italic":false}','{"text":"周囲の味方に5秒間耐性2を与え、","color":"white","italic":false}','{"text":"「次の近接攻撃が2倍になる」バフを与える。","color":"white","italic":false}','{"text":"CT:40","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2


