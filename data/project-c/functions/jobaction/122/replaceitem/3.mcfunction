item replace entity @s hotbar.3 with minecraft:nether_star{display:{Name:'{"text":"サイコビーム","color":"light_purple","italic":false}',Lore:['{"text":"発動: 右クリックでチャージ / もう一度右クリックで解放","color":"yellow","italic":false}','{"text":"サイコビームが輝き残し、","color":"white","italic":false}','{"text":"チャージ時間に応じて持続するビームを放つ。","color":"white","italic":false}','{"text":"CT:30","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3