item replace entity @s hotbar.2 with minecraft:gilded_blackstone{display:{Name:'{"text":"岩石周回","color":"gold","italic":false}',Lore:['{"text":"発動: 右クリック","color":"yellow","italic":false}','{"text":"自身の周囲を岩石が旋回するようになる。","color":"white","italic":false}','{"text":"自身が死亡すると解除される。","color":"white","italic":false}','{"text":"衝突した相手にダメージを与える。","color":"white","italic":false}','{"text":"CT:10","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
