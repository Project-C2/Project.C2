item replace entity @s hotbar.1 with minecraft:diamond{display:{Name:'{"text":"レインボーブラスト","color":"white","italic":false}',Lore:['{"text":"右クリックでチャージ / もう一度右クリックで解放","color":"yellow","italic":false}','{"text":"上空から視線の先に爆発弾を飛ばす。","color":"white","italic":false}','{"text":"チャージに応じて発生数が増加。","color":"white","italic":false}','{"text":"CT:12","color":"green","italic":false}']},HideFlags:32} 1


playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1