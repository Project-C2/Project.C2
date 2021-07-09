item replace entity @s hotbar.3 with minecraft:bamboo{display:{Name:'{"text":"カウンタースラスト","color":"white","italic":false}',Lore:['{"text":"§e発動:スニークせずに盾で攻撃を防ぐ"}','{"text":"正面を高威力で刺突して反撃する。","color":"white","italic":false}','{"text":"エンティティ貫通属性を持つ。","color":"white","italic":false}','{"text":"CT7,盾耐久-40","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3