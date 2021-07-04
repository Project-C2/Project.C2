item replace entity @s hotbar.2 with minecraft:chorus_plant{display:{Name:'{"text":"飢餓怨嗟の魂","color":"dark_purple","italic":false}',Lore:['{"text":"発動:スニーク/Soul150以上","color":"yellow","italic":false}','{"text":"長時間の魂の呪詛を唱えた後、飢餓の呪いを放出。","color":"white","italic":false}','{"text":"広範囲の敵へ一瞬の盲目をかけ、猛毒と空腹を付与。","color":"white","italic":false}','{"text":"呪詛を唱える時間は小麦の数が多いほど短くなる。","color":"white","italic":false}','{"text":"CT:30/Soul150消費/小麦全消去","color":"green","italic":false}']}} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
item replace entity @s enderchest.2 from entity @s container.2
