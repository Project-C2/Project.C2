item replace entity @s hotbar.2 with minecraft:paper{display:{Name:'[{"text":"ステータス","italic":false,"bold":true,"color":"dark_red"},{"text":"の握り","italic":false,"bold":false,"color":"white"}]',Lore:['[{"text":"相手の","italic":false,"color":"white"},{"text":"ステータス","color":"dark_red"},{"text":"を奪い、自分のラーメンを10秒間強化する。"},{"text":"","color":"dark_purple"}]','[{"text":"ステータス","italic":false,"color":"dark_red"},{"text":"を奪われた相手は強烈な弱体化と移動速度低下を受ける。","color":"white"},{"text":"","color":"dark_purple"}]','[{"text":"発動: 攻撃","italic":false,"color":"yellow"},{"text":" ","color":"white"},{"text":"/","color":"gray"},{"text":" ","color":"white"},{"text":"CT 30s","color":"green"}]']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2