item replace entity @s hotbar.1 with minecraft:chicken{display:{Name:'{"text":"害鳥空爆の儀","italic":false}',Lore:['{"text":"発動:スニーク/Soul50以上","color":"yellow","italic":false}','{"text":"魂を捧げ、鶏を正面に射出。","color":"white","italic":false}','{"text":"鶏の着弾時に爆発する羽を振り撒く。","color":"white","italic":false}','{"text":"CT:8/Soul50消費","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1