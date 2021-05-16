execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{isItem:1b,Tier:1b,Potion:"minecraft:strong_healing"}}]}] run effect give @e[team=Red,distance=..5] instant_health 1 1
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{isItem:1b,Tier:1b,Potion:"minecraft:strong_healing"}}]}] run effect give @e[team=Blue,distance=..5] instant_health 1 1

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{isItem:1b,Tier:1b,Potion:"minecraft:strong_harming"}}]}] run effect give @e[team=Red,distance=..7] instant_damage 1 1
execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{isItem:1b,Tier:1b,Potion:"minecraft:strong_harming"}}]}] run effect give @e[team=Blue,distance=..7] instant_damage 1 1

execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"加速のスプラッシュポーション","color":"white","italic":false}'}}}]}] run effect give @e[team=Red,distance=..5] haste 30 0
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"加速のスプラッシュポーション","color":"white","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..5] haste 30 0

execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"疲労のスプラッシュポーション","color":"white","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..7] mining_fatigue 15 0
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"疲労のスプラッシュポーション","color":"white","italic":false}'}}}]}] run effect give @e[team=Red,distance=..7] mining_fatigue 15 0

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"輪廻の秘薬","color":"white","italic":false,"underlined":true}'}}}]}] run effect give @s regeneration 10 2
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"輪廻の秘薬","color":"white","italic":false,"underlined":true}'}}}]}] run effect give @s absorption 30 2

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"転禍の秘薬","color":"dark_red","italic":false,"underlined":true}'}}}]}] run effect give @s speed 15 4

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s resistance 30 1
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s fire_resistance 30 0
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s water_breathing 30 0
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s night_vision 30 0
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"万象の秘薬","color":"dark_green","italic":false,"underlined":true}'}}}]}] run effect give @s dolphins_grace 30 0

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"無双の秘薬","color":"#5900BF","italic":false,"underlined":true}'}}}]}] run effect give @s haste 15 2
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"無双の秘薬","color":"#5900BF","italic":false,"underlined":true}'}}}]}] run effect give @s strength 10 4

execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"お節介ポーション","color":"gray","bold":true,"italic":true,"underlined":true}'}}}]}] run effect give @e[team=Blue,distance=..7] jump_boost 30 1
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"お節介ポーション","color":"gray","bold":true,"italic":true,"underlined":true}'}}}]}] run effect give @e[team=Red,distance=..7] jump_boost 30 1
execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"お節介ポーション","color":"gray","bold":true,"italic":true,"underlined":true}'}}}]}] run effect give @e[team=Blue,distance=..7] slow_falling 30 0
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"お節介ポーション","color":"gray","bold":true,"italic":true,"underlined":true}'}}}]}] run effect give @e[team=Red,distance=..7] slow_falling 30 0

execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"メッサヒカル","color":"#FFFF00","bold":true,"italic":false}'}}}]}] run effect give @e[team=Blue,distance=..20] glowing 45 0
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"メッサヒカル","color":"#FFFF00","bold":true,"italic":false}'}}}]}] run effect give @e[team=Red,distance=..20] glowing 45 0

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{display:{Name:'[{"text":"は","color":"green","bold":true,"italic":false},{"text":"て","color":"aqua"},{"text":"な","color":"red"},{"text":"ポーション","color":"gold"}]'}}}]}] run effect give @e[distance=..15,tag=!Stable] luck 1 108 true

execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"クリーピー","color":"dark_green","bold":true,"italic":false},{"text":"ボム","color":"#FF0000"}'}}}]}] as @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"クリーピー","color":"dark_green","bold":true,"italic":false},{"text":"ボム","color":"#FF0000"}'}}}]}] at @e[team=Blue,distance=..7,limit=1] run summon creeper ~ ~2.5 ~ {CustomNameVisible:1b,powered:1b,ExplosionRadius:1b,Fuse:35,ignited:1b,CustomName:'[{"text":"クリーピー","color":"dark_green","bold":true},{"text":"ボム","color":"#FF0000","bold":true}]',ArmorItems:[{},{},{},{id:"minecraft:creeper_head",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:-100,Operation:1,UUID:[1705743174,835142992,-1581982728,-784202802],Slot:'head'}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:1000000,ShowParticles:0b},{Id:30b,Amplifier:49b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100}]}
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"クリーピー","color":"dark_green","bold":true,"italic":false},{"text":"ボム","color":"#FF0000"}'}}}]}] as @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"クリーピー","color":"dark_green","bold":true,"italic":false},{"text":"ボム","color":"#FF0000"}'}}}]}] at @e[team=Red,distance=..7,limit=1] run summon creeper ~ ~2.5 ~ {CustomNameVisible:1b,powered:1b,ExplosionRadius:1b,Fuse:35,ignited:1b,CustomName:'[{"text":"クリーピー","color":"dark_green","bold":true},{"text":"ボム","color":"#FF0000","bold":true}]',ArmorItems:[{},{},{},{id:"minecraft:creeper_head",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:-100,Operation:1,UUID:[1705743174,835142992,-1581982728,-784202802],Slot:'head'}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.085F],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:1000000,ShowParticles:0b},{Id:30b,Amplifier:49b,Duration:1000000,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100}]}

execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..7] instant_damage 1 1
execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..7] weakness 10 4
execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Blue,distance=..7] wither 5 1
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Red,distance=..7] instant_damage 1 1
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Red,distance=..7] weakness 10 4
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{display:{Name:'{"text":"禁忌・冥界落とし","color":"dark_gray","italic":false}'}}}]}] run effect give @e[team=Red,distance=..7] wither 5 1

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{ItemID:10}}]}] run effect give @e[team=Red,distance=..7] unluck 30 0
execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{ItemID:10}}]}] run effect give @e[team=Blue,distance=..7] unluck 30 0

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{ItemID:11}}]}] run effect give @e[team=Red,distance=..7] instant_damage 1 1
execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{ItemID:11}}]}] run effect give @e[team=Blue,distance=..7] instant_damage 1 1

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{ItemID:12}}]}] run effect give @e[team=Red,distance=..7] glowing 30 0
execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{ItemID:12}}]}] run effect give @e[team=Blue,distance=..7] glowing 30 0

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:13}}]}] run effect give @s minecraft:jump_boost 1 12

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{ItemID:14}}]}] run scoreboard players add @e[team=Blue,distance=..7] CT1 200
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{ItemID:14}}]}] run scoreboard players add @e[team=Blue,distance=..7] CT2 200
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:5b,tag:{ItemID:14}}]}] run scoreboard players add @e[team=Blue,distance=..7] CT3 200

execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{ItemID:14}}]}] run scoreboard players add @e[team=Red,distance=..7] CT1 200
execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{ItemID:14}}]}] run scoreboard players add @e[team=Red,distance=..7] CT2 200
execute if entity @s[team=Red,nbt={Inventory:[{Slot:5b,tag:{ItemID:14}}]}] run scoreboard players add @e[team=Red,distance=..7] CT3 200

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:15}}]}] run effect clear @s minecraft:unluck
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:15}}]}] run effect clear @s minecraft:poison
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:15}}]}] run effect clear @s minecraft:wither
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:15}}]}] run effect clear @s minecraft:levitation
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:15}}]}] run effect clear @s minecraft:slowness
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:15}}]}] run effect clear @s minecraft:weakness
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:15}}]}] run effect clear @s minecraft:mining_fatigue
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:15}}]}] run effect clear @s minecraft:nausea

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:16}}]}] run effect give @s minecraft:luck 1 108

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:17}}]}] run tag @s add 063-sword

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:18}}]}] run tag @s add 063-shield

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:19}}]}] run tag @s add 063-wing

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^ ^1 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^1 ^1 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^-1 ^1 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^1 ^2 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^ ^2 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^-1 ^2 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^1 ^3 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^ ^3 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^-1 ^3 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.max_health",Base:20d},{Name:"generic.movement_speed",Base:0d},{Name:"generic.attack_damage",Base:0d},{Name:"generic.knockback_resistance",Base:1d},{Name:"generic.follow_range",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:24}}]}] run effect give @s minecraft:luck 1 110

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:25}}]}] run effect give @s minecraft:absorption 120 3
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:25}}]}] run effect give @s minecraft:regeneration 20 1
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:25}}]}] run effect give @s minecraft:fire_resistance 300 0
execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:25}}]}] run effect give @s minecraft:resistance 300 0

execute if entity @s[nbt={Inventory:[{Slot:5b,tag:{ItemID:26}}]}] run effect give @s minecraft:luck 1 120

replaceitem entity @s hotbar.5 minecraft:air
function project-c:general/0-luckeffection