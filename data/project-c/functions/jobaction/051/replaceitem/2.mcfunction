item replace entity @s hotbar.2 with minecraft:packed_ice{display:{Name:'{"text":"永凍輪舞真君","color":"aqua","bold":true,"underlined":true,"italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"自身の周囲を回転する氷柱を3本召喚。","color":"white","italic":false}','{"text":"周囲の敵に鈍足と小ダメージを与える。","color":"white","italic":false}','{"text":"CT:25","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2