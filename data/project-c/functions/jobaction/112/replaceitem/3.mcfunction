item replace entity @s hotbar.3 with minecraft:flint{display:{Name:'{"text":"砂鉄球","color":"gold","italic":false}',Lore:['{"text":"発動: 右クリック","color":"yellow","italic":false}','{"text":"周囲の土を巻き上げ、攻撃に利用する。","color":"white","italic":false}','{"text":"弾は最寄りの敵を狙う。","color":"white","italic":false}','{"text":"CT:30","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3