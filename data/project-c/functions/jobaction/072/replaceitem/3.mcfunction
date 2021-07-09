item replace entity @s hotbar.3 with minecraft:end_crystal{display:{Name:'{"text":"§c天眼§f/§a無空","color":"light_blue","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:スニーク+右クリック"}','{"text":"§fメインハンドの剣によって発動するスキルが変わる。"}','{"text":"§c====無銘「金重」時===="}','{"text":"§c天眼:自身の攻撃力が上昇+発動中に周囲の敵の耐性消去。"}','{"text":"§a=====大和国住国宗====="}','{"text":"§a無空:自身に無敵付与+発動時全デバフ消去。"}','{"text":"§aCT:60"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady3
item replace entity @s enderchest.3 from entity @s container.3