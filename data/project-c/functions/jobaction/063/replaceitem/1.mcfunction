replaceitem entity @s[scores={counter_1=0}] hotbar.1 gunpowder{display:{Name:'{"text":"ポーションコントロール -オフ-","color":"red","italic":false,"underlined":false}',Lore:['{"text":"発動:スニーク","color":"yellow","italic":false}','{"text":"投げるポーションが長距離まで素早く届くようになる。","color":"white","italic":false}','{"text":"スニークで発動をオンオフ可能。","color":"white","italic":false}','{"text":"CT:1","color":"green","italic":false}']},HideFlags:1} 1

replaceitem entity @s[scores={counter_1=1}] hotbar.1 minecraft:redstone{display:{Name:'{"text":"ポーションコントロール -オン-","color":"red","italic":false,"underlined":false}',Lore:['{"text":"発動:スニーク","color":"yellow","italic":false}','{"text":"投げるポーションが長距離まで素早く届くようになる。","color":"white","italic":false}','{"text":"スニークで発動をオンオフ可能。","color":"white","italic":false}','{"text":"CT:1","color":"green","italic":false}']},HideFlags:1} 1

playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady1