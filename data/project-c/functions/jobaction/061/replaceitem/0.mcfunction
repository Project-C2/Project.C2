item replace entity @s hotbar.0 with minecraft:blaze_powder{display:{Name:'{"text":"火の矢"}'},HideFlags:1} 1

item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick

item replace entity @s hotbar.4 with minecraft:armor_stand{display:{Name:'{"text":"ENV-スーツ","color":"blue","italic":false,"underlined":false}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f常時低速落下を付与する。"}','{"text":"§f使用でオンオフを切り替える。"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0