item replace entity @s hotbar.1 with minecraft:stick{display:{Name:'{"text":"ヴォーパルストライク","color":"yellow","italic":false}',Lore:['""','[{"text":"発動: 武器を持ちスニーク","color":"yellow","italic":false},{"text":" / ","color":"gray"},{"text":"CT: 7s","color":"green","italic":false}]','{"text":"単発の突きを放つ重攻撃。","color":"white","italic":false}','{"text":"刀身の倍以上の射程と","color":"white","italic":false}','{"text":"両手槍に匹敵する威力を有する。","color":"white","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1