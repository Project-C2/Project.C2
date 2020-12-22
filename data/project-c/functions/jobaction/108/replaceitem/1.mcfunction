#実行者     -> jobNumber = 108
#実行地点   -> 実行者
replaceitem entity @s hotbar.1 minecraft:book{display:{Name:"{\"text\":\"ちぇるーんちぇらるれちぇるぽぱぴ？\",\"italic\":\"false\"}",Lore:['[{"text":"ちぇる★","italic":"false","color":"red"},{"text":"語を周囲のプレイヤーに聞かせ、しばらく混乱させる。","italic":"false","color":"white"}]']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1