execute unless entity @s[scores={counter=2..}] run replaceitem entity @s hotbar.0 minecraft:lingering_potion{display:{Name:'{"text":"アクアボム","color":"aqua","italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"水魔力を炸裂させて攻撃する。","color":"white","italic":false}','{"text":"CT:1.1s","color":"green","italic":false}']},Potion:"minecraft:water",CustomPotionEffects:[{Id:13b,Amplifier:93b,Duration:1}],HideFlags:32} 1

replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"治水の杖","color":"blue","italic":false}'},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.maxHealth",Amount:-0.25d,Operation:1,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"offhand"}],Unbreakable:1b} 1

execute unless entity @s[scores={counter=2..}] run scoreboard players reset @s counter
#execute if score @s counter_6 matches 1 run scoreboard players reset @s counter_6
scoreboard players reset @s drop