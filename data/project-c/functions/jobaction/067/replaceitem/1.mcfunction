item replace entity @s hotbar.1 with minecraft:golden_sword{display:{Name:'{"text":"ステップ&デストロイ","color":"white","italic":false}',Lore:['{"text":"発動:ダッシュジャンプ","color":"yellow","italic":false}','{"text":"正面に小ジャンプする。","color":"white","italic":false}','{"text":"CT:3","color":"green","italic":false}','{"text":"--------------------------------","italic":false,"color":"gray"}','{"text":"発動:発動後攻撃","color":"yellow","italic":false}','{"text":"攻撃力7で攻撃し、敵に1秒スタンを付与。","color":"white","italic":false}','{"text":"自身の攻撃力が4秒間40%上昇する。","color":"white","italic":false}','{"text":"CT:7","color":"green","italic":false}']},destroyMode:0b,Unbreakable:1b} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1
item replace entity @s enderchest.1 from entity @s container.1