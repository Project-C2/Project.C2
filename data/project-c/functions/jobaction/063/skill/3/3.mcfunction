execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{isItem:1b,Tier:1b,Potion:"minecraft:strong_healing"}}]}] run effect give @e[team=Red,distance=..5] instant_health 1 1
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{isItem:1b,Tier:1b,Potion:"minecraft:strong_healing"}}]}] run effect give @e[team=Blue,distance=..5] instant_health 1 1

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{isItem:1b,Tier:1b,Potion:"minecraft:strong_harming"}}]}] run effect give @e[team=Red,distance=..7] instant_damage 1 1
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{isItem:1b,Tier:1b,Potion:"minecraft:strong_harming"}}]}] run effect give @e[team=Blue,distance=..7] instant_damage 1 1

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"加速のスプラッシュポーション","color":"white","italic":false}'}}}]}] run effect give @e[team=Red,distance=..5] haste 30 0
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"加速のスプラッシュポーション","color":"white","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..5] haste 30 0

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"疲労のスプラッシュポーション","color":"white","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..7] mining_fatigue 15 0
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"疲労のスプラッシュポーション","color":"white","italic":false}'}}}]}] run effect give @e[team=Red,distance=..7] mining_fatigue 15 0

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"輪廻の秘薬","color":"white","italic":false,"underlined":true}'}}}]}] run effect give @s regeneration 10 2
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"輪廻の秘薬","color":"white","italic":false,"underlined":true}'}}}]}] run effect give @s absorption 30 2

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"転禍の秘薬","color":"dark_red","italic":false,"underlined":true}'}}}]}] run effect give @s speed 15 4

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s resistance 30 1
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s fire_resistance 30 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s water_breathing 30 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s night_vision 30 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s dolphins_grace 30 0

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"無双の秘薬","color":"#5900BF","italic":false,"underlined":true}'}}}]}] run effect give @s haste 15 2
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"無双の秘薬","color":"#5900BF","italic":false,"underlined":true}'}}}]}] run effect give @s strength 10 4

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"お節介ポーション","color":"gray","bold":true,"italic":true,"underlined":true}'}}}]}] run effect give @e[team=Blue,distance=..7] jump_boost 30 1
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"お節介ポーション","color":"gray","bold":true,"italic":true,"underlined":true}'}}}]}] run effect give @e[team=Red,distance=..7] jump_boost 30 1
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"お節介ポーション","color":"gray","bold":true,"italic":true,"underlined":true}'}}}]}] run effect give @e[team=Blue,distance=..7] slow_falling 30 0
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"お節介ポーション","color":"gray","bold":true,"italic":true,"underlined":true}'}}}]}] run effect give @e[team=Red,distance=..7] slow_falling 30 0

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"メッサヒカル","color":"#FFFF00","bold":true,"italic":false}'}}}]}] run effect give @e[team=Blue,distance=..20] glowing 45 0
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"メッサヒカル","color":"#FFFF00","bold":true,"italic":false}'}}}]}] run effect give @e[team=Red,distance=..20] glowing 45 0

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'[{"text":"は","color":"green","bold":true,"italic":false},{"text":"て","color":"aqua"},{"text":"な","color":"red"},{"text":"ポーション","color":"gold"}]'}}}]}] run effect give @e[distance=..15,tag=!Stable] luck 1 108 true

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"クリーピー","color":"dark_green","bold":true,"italic":false},{"text":"ボム","color":"#FF0000"}'}}}]}] as @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"クリーピー","color":"dark_green","bold":true,"italic":false},{"text":"ボム","color":"#FF0000"}'}}}]}] at @e[team=Blue,distance=..7,limit=1] run summon creeper ~ ~2.5 ~ 
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"クリーピー","color":"dark_green","bold":true,"italic":false},{"text":"ボム","color":"#FF0000"}'}}}]}] as @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"クリーピー","color":"dark_green","bold":true,"italic":false},{"text":"ボム","color":"#FF0000"}'}}}]}] at @e[team=Red,distance=..7,limit=1] run summon creeper ~ ~2.5 ~ {CustomNameVisible:1b,powered:1b,ExplosionRadius:1b,Fuse:35,ignited:1b,CustomName:'[{"text":"クリーピー","color":"dark_green","bold":true},{"text":"ボム","color":"#FF0000","bold":true}]',ArmorItems:[{},{},{},{id:"minecraft:creeper_head",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:-100,Operation:1,UUID:[1705743174,835142992,-1581982728,-784202802],Slot:'head'}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:1000000,ShowParticles:0b},{Id:30b,Amplifier:49b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100}]}

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..7] instant_damage 1 1
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..7] weakness 10 4
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..7] wither 5 1
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Red,distance=..7] instant_damage 1 1
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Red,distance=..7] weakness 10 4
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Red,distance=..7] wither 5 1

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"エリアエーテル","color":"dark_aqua","bold":true,"italic":false}'}}}]}] run scoreboard players add @e[team=Red,distance=..7] CT1 200
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"エリアエーテル","color":"dark_aqua","bold":true,"italic":false}'}}}]}] run scoreboard players add @e[team=Red,distance=..7] CT2 200
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"エリアエーテル","color":"dark_aqua","bold":true,"italic":false}'}}}]}] run scoreboard players add @e[team=Red,distance=..7] CT3 200

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"エリアエーテル","color":"dark_aqua","bold":true,"italic":false}'}}}]}] run scoreboard players add @e[team=Blue,distance=..7] CT1 200
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"エリアエーテル","color":"dark_aqua","bold":true,"italic":false}'}}}]}] run scoreboard players add @e[team=Blue,distance=..7] CT2 200
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"エリアエーテル","color":"dark_aqua","bold":true,"italic":false}'}}}]}] run scoreboard players add @e[team=Blue,distance=..7] CT3 200

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"エレベーターポーション","color":"light_purple"}'}}}]}] run effect give @e[team=Red,distance=..5] jump_boost 4 20
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"エレベーターポーション","color":"light_purple"}'}}}]}] run effect give @e[team=Blue,distance=..5] jump_boost 4 20

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"ノンデメリット","color":"yellow","bold":true,"italic":false}'}}}]}] run effect give @e[team=Red,distance=..5] luck 1 109 true
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"ノンデメリット","color":"yellow","bold":true,"italic":false}'}}}]}] run effect give @e[team=Blue,distance=..5] luck 1 109 true

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"暗黒水","color":"dark_purple","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..7] unluck 30 100 true
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"暗黒水","color":"dark_purple","italic":false}'}}}]}] run effect give @e[team=Red,distance=..7] unluck 30 100 true

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"鋼鉄のポーション","color":"#828282","italic":false}'}}}]}] run effect give @s luck 1 111 true
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"鋼鉄のポーション","color":"#828282","italic":false}'}}}]}] run effect give @s luck 1 111 true

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"a","color":"#FFFF00","bold":true,"italic":false,"underlined":false,"obfuscated":true},{"text":"ジェネシスソード","color":"#FFCC00","bold":true,"underlined":true,"obfuscated":false},{"text":"a","color":"#FFFF00","bold":true,"italic":false,"underlined":false,"obfuscated":true}'}}}]}] run tag @s add 063-sword

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"lll","color":"#DEDEDE","bold":false,"italic":false,"underlined":false,"obfuscated":true},{"text":"ヘヴンリーボウ","color":"white","bold":true,"underlined":true,"obfuscated":false},{"text":"lll","color":"#DEDEDE","bold":false,"italic":false,"underlined":false,"obfuscated":true}'}}}]}] run tag @s add 063-bow

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"あ","color":"#00d3bf","bold":true,"italic":false,"underlined":false,"obfuscated":true},{"text":"グローリークラウン","color":"#00ecda","bold":true,"underlined":true,"obfuscated":false},{"text":"あ","color":"#00d3bf","bold":true,"italic":false,"underlined":false,"obfuscated":true}'}}}]}] run tag @s add 063-wing

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"|","color":"dark_purple","bold":true,"italic":false,"underlined":false,"obfuscated":true},{"text":"|","color":"light_purple"},{"text":"|","color":"dark_purple"},{"text":"|","color":"light_purple"},{"text":"スカイウィング","color":"#8D8DA5","bold":true,"underlined":true,"obfuscated":false},{"text":"|","color":"light_purple"},{"text":"|","color":"dark_purple","bold":true,"italic":false,"underlined":false,"obfuscated":true},{"text":"|","color":"light_purple"},{"text":"|","color":"dark_purple"}'}}}]}] run tag @s add 063-clown

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"[","color":"#A50505","bold":true,"italic":false,"underlined":false,"obfuscated":true},{"text":"[","color":"#FF0000"},{"text":"[","color":"#A50505"},{"text":"オーバードーズ","color":"#610303","bold":true,"underlined":true,"obfuscated":false},{"text":"]","color":"#A50505","bold":true,"italic":false,"underlined":false,"obfuscated":true},{"text":"]","color":"#FF0000"},{"text":"]","color":"#A50505"}'}}}]}] run effect give @s luck 1 112 true
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"[","color":"#A50505","bold":true,"italic":false,"underlined":false,"obfuscated":true},{"text":"[","color":"#FF0000"},{"text":"[","color":"#A50505"},{"text":"オーバードーズ","color":"#610303","bold":true,"underlined":true,"obfuscated":false},{"text":"]","color":"#A50505","bold":true,"italic":false,"underlined":false,"obfuscated":true},{"text":"]","color":"#FF0000"},{"text":"]","color":"#A50505"}'}}}]}] run effect give @s luck 1 112 true



execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"aaa","color":"white","bold":true,"italic":false,"obfuscated":true},{"text":"エ","color":"red","obfuscated":false},{"text":"ク","color":"gold","obfuscated":false},{"text":"ス","color":"yellow","obfuscated":false},{"text":"エ","color":"green","obfuscated":false},{"text":"リ","color":"dark_aqua","obfuscated":false},{"text":"ク","color":"blue","obfuscated":false},{"text":"サ","color":"light_purple","obfuscated":false},{"text":"ー","color":"dark_purple","obfuscated":false},{"text":"aaa"}}'}}}]}] run effect give @s minecraft:luck 1 110

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"Ｔｈｅ Ｆｒｕｉｔ ｏｆ Ｇｒｉｓａｉａ","color":"#FFF700","bold":true,"italic":false,"underlined":true}'}}}]}] run effect give @s minecraft:absorption 120 3
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"Ｔｈｅ Ｆｒｕｉｔ ｏｆ Ｇｒｉｓａｉａ","color":"#FFF700","bold":true,"italic":false,"underlined":true}'}}}]}] run effect give @s minecraft:regeneration 20 1
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"Ｔｈｅ Ｆｒｕｉｔ ｏｆ Ｇｒｉｓａｉａ","color":"#FFF700","bold":true,"italic":false,"underlined":true}'}}}]}] run effect give @s minecraft:fire_resistance 300 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"Ｔｈｅ Ｆｒｕｉｔ ｏｆ Ｇｒｉｓａｉａ","color":"#FFF700","bold":true,"italic":false,"underlined":true}'}}}]}] run effect give @s minecraft:resistance 300 0

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{display:{Name:'{"text":"Ｔｈｅ Ｆｒｕｉｔ ｏｆ Ｇｒｉｓａｉａ","color":"#FFF700","bold":true,"italic":false,"underlined":true}'}}}]}] run effect give @s minecraft:luck 1 120

replaceitem entity @s hotbar.5 minecraft:air
function project-c:general/0-luckeffection