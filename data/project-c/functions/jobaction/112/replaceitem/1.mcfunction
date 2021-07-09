item replace entity @s hotbar.1 with minecraft:gunpowder{display:{Name:'{"text":"磁力操作","color":"gold","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"自身の周囲に磁力を発生させ、敵の行動を妨害する。","color":"white","italic":false}','{"text":"メイン武器を右クリックで操作を変えれる。","color":"white","italic":false}','{"text":"CT:20","color":"green","italic":false}']},HideFlags:32} 1


playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1