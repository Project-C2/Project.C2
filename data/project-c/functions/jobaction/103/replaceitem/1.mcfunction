item replace entity @s hotbar.1 with minecraft:fire_charge{display:{Name:'{"text":"ファイヤボール","color":"red","italic":false}',Lore:['""','[{"text":"発動: 右クリック(手に持たなくても発動可)","color":"yellow","italic":false},{"text":" / ","color":"gray"},{"text":"CT: 5.4s","color":"green","italic":false}]','{"text":"前方に火の玉を発射する。","color":"white","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1