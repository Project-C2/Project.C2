item replace entity @s hotbar.2 with minecraft:snowball{display:{Name:'{"text":"グラビティボール","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f前方に低速弾を放つ。"}','{"text":"§f通りかかった敵にボイド状態を付与する。"}','{"text":"§fボイド状態の敵は被ダメージ時追加ダメージを食らう。"}','{"text":"§aCT:10"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2