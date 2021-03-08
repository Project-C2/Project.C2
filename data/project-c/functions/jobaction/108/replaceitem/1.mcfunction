#実行者     -> jobNumber = 108
#実行地点   -> 実行者
replaceitem entity @s hotbar.1 minecraft:book{display:{Name:'{"text":"ちぇるーんちぇらるれちぇるぽぱぴ？","italic":false}',Lore:['[{"text":"ちぇる★","italic":false,"color":"red"},{"text":"語を周囲のプレイヤーに聞かせ、しばらく混乱させる。","italic":false,"color":"white"}]','[{"text":"発動: シフト","italic":false,"color":"yellow"},{"text":" / ","italic":false,"color":"gray"},{"text":"CT: 20s","italic":false,"color":"green"}]']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1