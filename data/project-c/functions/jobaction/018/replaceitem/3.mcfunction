item replace entity @s hotbar.3 with minecraft:wheat_seeds{display:{Name:'{"text":"麦畑生成の儀","italic":false,"color":"gold"}',Lore:['{"text":"発動:スニーク","color":"yellow","italic":false}','{"text":"小麦の種を蒔く。金の鍬で成長促進が可能。","color":"white","italic":false}','{"text":"成長すると収穫してパンを作り、","color":"white","italic":false}','{"text":"自身に2個、味方チームに1個配布する。","color":"white","italic":false}','{"text":"CT:25","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3
