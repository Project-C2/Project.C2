execute as @e[tag=ConsumableItem1-1] at @s run summon item ~ ~51 ~ {Tags:["isItem","Item1"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:'{"text":"治癒のスプラッシュポーション","color":"white","italic":false}',Lore:['{"text":"投げつけると傷が治る、ありふれたポーション。","color":"gray","italic":false}','{"text":"Tier:1"}']},HideFlags:63,Potion:"minecraft:strong_healing"}}}

execute as @e[tag=ConsumableItem1-2] at @s run summon item ~ ~51 ~ {Tags:["isItem","Item1"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:'{"text":"負傷のスプラッシュポーション","color":"white","italic":false}',Lore:['{"text":"投げつけると傷付ける、ありふれたポーション。","color":"gray","italic":false}','{"text":"Tier:1"}']},HideFlags:63,Potion:"minecraft:strong_harming"}}}

execute as @e[tag=ConsumableItem1-3] at @s run summon item ~ ~51 ~ {Tags:["isItem","Item1"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:'{"text":"加速のスプラッシュポーション","color":"white","italic":false}',Lore:['{"text":"投げつけると力が湧く、ありふれたポーション。","color":"gray","italic":false}','{"text":"Tier:1"}']},HideFlags:63,CustomPotionEffects:[{Id:3b,Amplifier:0b,Duration:600}],CustomPotionColor:16753152}}}

execute as @e[tag=ConsumableItem1-4] at @s run summon item ~ ~51 ~ {Tags:["isItem","Item1"],Item:{id:"minecraft:splash_potion",Count:1b,tag:{display:{Name:'{"text":"疲労のスプラッシュポーション","color":"white","italic":false}',Lore:['{"text":"投げつけると力が抜ける、ありふれたポーション。","color":"gray","italic":false}','{"text":"Tier:1"}']},HideFlags:63,CustomPotionEffects:[{Id:4b,Amplifier:0b,Duration:300}],CustomPotionColor:5395026}}}

kill @e[tag=Tier1]