item replace entity @s hotbar.1 with minecraft:shulker_shell{display:{Name:'{"text":"お神輿-お神輿","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"発動: 右クリック","color":"yellow","italic":false},{"text":" / ","color":"gray"},{"text":"CT: 6s","color":"green","italic":false},{"text":" / ","color":"gray"},{"text":"追加入力可能:1回(1.2秒)","color":"aqua","italic":false}]','{"text":"おみこしを投擲する。","color":"white","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1