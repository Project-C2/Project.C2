item replace entity @s hotbar.0 with minecraft:flint{display:{Name:'{"text":"常闇のショール","color":"gray","italic":false,"underlined":true}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f属性を破棄する。"}','{"text":"§aCT:1"}']},HideFlags:1,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Wand","italic":false,"color":"aqua"}',Lore:['{"text":"§7魔法発動に使用する杖。"}','{"text":"§f射出型魔法と設置型魔法の使用が可能。"}']},HideFlags:1,Enchantments:[{}]} 1
function project-c:jobaction/059/replaceitem/4

scoreboard players reset @s drop
item replace entity @s enderchest.0 from entity @s container.0