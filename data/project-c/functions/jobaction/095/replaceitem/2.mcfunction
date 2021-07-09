item replace entity @s hotbar.2 with minecraft:nautilus_shell{display:{Name:'{"text":"恐慌呼び起こせし魔笛","color":"#eeff22","underlined":true,"italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"周囲に爆音の衝撃を叩きつけ、","color":"white","italic":false}','{"text":"飛び道具を破壊し敵を衝撃で混乱させる。","color":"white","italic":false}','{"text":"CT:12","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
