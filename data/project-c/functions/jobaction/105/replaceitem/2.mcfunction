item replace entity @s hotbar.2 with minecraft:firework_star{display:{Name:'{"text":"ワッショイ-ワッショイ","color":"gold","bold":true,"italic":false}',Lore:['[{"text":"発動: 右クリック","color":"yellow","italic":false},{"text":" / ","color":"gray"},{"text":"CT: 6s","color":"green","italic":false},{"text":" / ","color":"gray"},{"text":"追加入力可能:1回(1.2秒)","color":"aqua","italic":false}]','{"text":"花火を発射する。","color":"white","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
