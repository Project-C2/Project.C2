item replace entity @s hotbar.2 with minecraft:iron_bars{display:{Name:'{"text":"盟約-ツキシタガウモノ","color":"light_purple"}',Lore:['{"text":"発動:スニーク"}','{"text":"最寄りのヴェックス以外の味方と盟約を結ぶ。"}','{"text":"盟約対象には耐性と移動速度上昇を付与。"}','{"text":"自身は盟約対象の付近にいる時のみ攻撃力+1.5。"}','{"text":"盟約対象の付近にいない時、自身はダメージを受け続ける。"}','{"text":"CT:30"}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2