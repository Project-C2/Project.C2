item replace entity @s hotbar.2 with minecraft:cobblestone_wall{display:{Name:'{"text":"タワー・オブ・ストーンヘブン","color":"gold","bold":true,"italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"背後に岩石の巨塔を打ち立てる。","color":"white","italic":false}','{"text":"一定時間毎に巨塔はその一部を崩すと同時に","color":"white","italic":false}','{"text":"周辺の敵へ石礫を放つ。","color":"white","italic":false}','{"text":"CT:40","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2