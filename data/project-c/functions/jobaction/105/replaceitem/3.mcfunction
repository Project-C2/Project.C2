execute unless score @s counter_5 matches 1 run item replace entity @s hotbar.3 with minecraft:campfire{display:{Name:'{"text":"祭りだ-祭りだ","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"発動: スニーク(手に持たなくても発動可)","color":"yellow","italic":false},{"text":" / ","color":"gray"},{"text":"CT: 2s","color":"green","italic":false}]','{"text":"スキル2種のうち片方のCT回復速度を2倍にする。","color":"white","italic":false}','{"text":"赤い炎は第一スキル、青い炎は第二スキルのCTを加速。","color":"white","italic":false}','{"text":"発動する度にジャンプする。","color":"white","italic":false}']}} 1
execute if score @s counter_5 matches 1 run item replace entity @s hotbar.3 with minecraft:soul_campfire{display:{Name:'{"text":"祭りだ-祭りだ","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"発動: スニーク(手に持たなくても発動可)","color":"yellow","italic":false},{"text":" / ","color":"gray"},{"text":"CT: 2s","color":"green","italic":false}]','{"text":"スキル2種のうち片方のCT回復速度を2倍にする。","color":"white","italic":false}','{"text":"赤い炎は第一スキル、青い炎は第二スキルのCTを加速。","color":"white","italic":false}','{"text":"発動する度にジャンプする。","color":"white","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3