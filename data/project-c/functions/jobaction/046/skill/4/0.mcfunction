scoreboard players set @s counter_5 0
scoreboard players set @s counter_4 600


replaceitem entity @s armor.chest golden_chestplate{display:{Name:'{"text":"モード:ディヴァインウェポン","color":"yellow","bold":true,"italic":false}',Lore:['{"text":" 攻撃力 +1.5","color":"gray","italic":false}','{"text":" 攻撃速度 +0.25","color":"gray","italic":false}','{"text":" デバフ無効","color":"gray","italic":false}']},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:1.5,Operation:0,UUID:[I;718637608,-1675276788,-2082294732,1572365642],Slot:"chest"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:0.25,Operation:0,UUID:[I;185303513,-1883943207,-1982710783,1461399516],Slot:"chest"}]} 1
replaceitem entity @s hotbar.3 honeycomb{display:{Name:'{"text":"フェイズシフト","color":"white","italic":false}',Lore:['{"text":"発動:スニーク","color":"yellow","italic":false}','{"text":"モード:ディヴァインウェポン時のみ","color":"white","italic":false,"underlined":true}','{"text":"力をためて敵を吸い込んだ後大爆発し、","color":"white","italic":false}','{"text":"敵にダメージを与えて吹き飛ばす","color":"white","italic":false}','{"text":"発動後、モード:イージスマージに移行する","color":"white","italic":false}','{"text":"CT:45","color":"green","italic":false}']}} 1
function project-c:general/max-health

effect clear @s absorption

particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.5 60
particle minecraft:block blue_stained_glass ~ ~1 ~ 0.5 0.5 0.5 0.5 20
playsound minecraft:block.glass.break master @a ~ ~ ~ 2 0
playsound minecraft:item.totem.use master @a ~ ~ ~ 2 0.45
playsound minecraft:item.totem.use master @a ~ ~ ~ 2 0.45