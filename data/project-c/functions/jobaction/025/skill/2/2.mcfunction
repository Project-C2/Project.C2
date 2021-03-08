scoreboard players add @s counter 1
kill @s[scores={counter=1200}]
scoreboard players add @s[tag=025-Core] counter_2 1
#
execute as @s[scores={counter_2=60}] at @s run tellraw @a ["",{"text":"\u300a"},{"text":"UC\u2082T","color":"dark_red"},{"text":"\u300b "},{"text":"\u771f\u7d05\u4e4b\u4e16\u30fc\u30af\u30ea\u30e0\u30be\u30f3\u30ec\u30eb\u30e0\u30ba\u30fc","color":"dark_red"}]
execute as @s[scores={counter_2=60}] at @s run particle minecraft:dust 100000 0 0 5 ~ ~ ~ 5 5 5 0 500 force @a
execute as @s[scores={counter_2=60}] at @s run particle minecraft:lava ~ ~ ~ 5 5 5 0 50
execute as @s[scores={counter_2=60}] at @s run playsound minecraft:entity.witch.death master @a ~ ~ ~ 2 0.75
execute as @s[scores={counter_2=60}] at @s run playsound minecraft:entity.witch.death master @a ~ ~ ~ 2 1.75
execute as @s[scores={counter_2=60},tag=025-Core-Red] at @s run effect give @e[distance=..7,team=Blue] slowness 5 2
execute as @s[scores={counter_2=60},tag=025-Core-Blue] at @s run effect give @e[distance=..7,team=Red] slowness 5 2
execute as @s[scores={counter_2=60},tag=025-Core-Red] at @s run effect give @e[distance=..7,team=Blue] weakness 5 2
execute as @s[scores={counter_2=60},tag=025-Core-Blue] at @s run effect give @e[distance=..7,team=Red] weakness 5 2
execute as @s[scores={counter_2=60},tag=025-Core-Red] at @s run effect give @e[distance=..7,team=Blue] blindness 5 2
execute as @s[scores={counter_2=60},tag=025-Core-Blue] at @s run effect give @e[distance=..7,team=Red] blindness 5 2
#
execute as @s[scores={counter_2=200}] at @s run tellraw @a ["",{"text":"\u300a"},{"text":"UC\u2082T","color":"dark_red"},{"text":"\u300b "},{"text":"\u7652\u98f2\u6d74\u30fc\u30ec\u30b9\u30c8\u30c6\u30a3\u30fc","color":"dark_green"}]
execute as @s[scores={counter_2=200}] at @s run particle minecraft:dripping_honey ~ ~ ~ 5 5 5 0 100
execute as @s[scores={counter_2=200}] at @s run particle minecraft:dripping_lava ~ ~ ~ 5 5 5 0 100
execute as @s[scores={counter_2=200}] at @s run particle dust 100000 100000 0.5 2 ~ ~ ~ 3 3 3 0 100
execute as @s[scores={counter_2=200}] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 2 1.45
execute as @s[scores={counter_2=200}] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 2 1.45
execute as @s[scores={counter_2=200}] at @s run playsound minecraft:block.bell.use master @a ~ ~ ~ 2 1.45
execute as @s[scores={counter_2=200}] at @s run playsound minecraft:block.bell.resonate master @a ~ ~ ~ 2 1.45
execute as @s[scores={counter_2=200},tag=025-Core-Red] at @s run effect give @a[team=Red,distance=..7] instant_health 1 1
execute as @s[scores={counter_2=200},tag=025-Core-Blue] at @s run effect give @a[team=Blue,distance=..7] instant_health 1 1
execute as @s[scores={counter_2=200},tag=025-Core-Red] at @s run effect give @a[team=Red,distance=..7] regeneration 7 1
execute as @s[scores={counter_2=200},tag=025-Core-Blue] at @s run effect give @a[team=Blue,distance=..7] regeneration 7 1

#
execute as @s[scores={counter_2=340}] at @s run tellraw @a ["",{"text":"\u300a"},{"text":"UC\u2082T","color":"dark_red"},{"text":"\u300b "},{"text":"\u795e\u5668\u53ec\u559a\u30fc\u30df\u30b9\u30c6\u30a3\u30c3\u30af\u30a6\u30a8\u30dd\u30f3\u30fc","color":"dark_purple"}]
execute as @s[scores={counter_2=340,counter=..600}] at @s run summon minecraft:item ~1 ~3 ~ {Tags:["isItem"],Item:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'{"text":"神玉剣-ジュエルス-","color":"light_purple","bold":true,"italic":false,"underlined":true}'},Damage:1559,Enchantments:[{id:"minecraft:sharpness",lvl:10s},{id:"minecraft:fire_aspect",lvl:1s}]}},Glowing:1b}
execute as @s[scores={counter_2=340,counter=600..}] at @s run summon minecraft:item ~1 ~3 ~ {Tags:["isItem"],Item:{id:"minecraft:diamond_axe",Count:1b,tag:{display:{Name:'{"text":"時空斧-ヒューチャー-","color":"blue","bold":true,"italic":false,"underlined":true}'},Damage:1560,Enchantments:[{id:"minecraft:sharpness",lvl:13s},{id:"minecraft:knockback",lvl:3s}]}},Glowing:1b}
execute as @s[scores={counter_2=340}] at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 2 1.45
execute as @s[scores={counter_2=340}] at @s run particle minecraft:enchant ~ ~ ~ 0 0 0 5 2000
#
execute as @s[scores={counter_2=480}] at @s run tellraw @a ["",{"text":"\u300a"},{"text":"UC\u2082T","color":"dark_red"},{"text":"\u300b "},{"text":"\u6b63\u7fa9\u4e4b\u714c\u88c1\u30fc\u30a2\u30d6\u30bd\u30ea\u30e5\u30fc\u30c8\u30fb\u30b8\u30e3\u30c3\u30b8\u30e1\u30f3\u30c8\u30fc","color":"gold"}]
execute as @s[scores={counter_2=480}] at @s run particle minecraft:end_rod ~5 ~-1.5 ~ 0.2 0 0.2 0.01 30 force
execute as @s[scores={counter_2=480}] at @s run particle minecraft:end_rod ~-5 ~-1.5 ~ 0.2 0 0.2 0.01 30 force
execute as @s[scores={counter_2=480}] at @s run particle minecraft:end_rod ~ ~-1.5 ~5 0.2 0 0.2 0.01 30 force
execute as @s[scores={counter_2=480}] at @s run particle minecraft:end_rod ~ ~-1.5 ~-5 0.2 0 0.2 0.01 30 force
execute as @s[scores={counter_2=480}] at @s run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.75
execute as @s[scores={counter_2=480}] at @s run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1.45
execute as @s[scores={counter_2=490}] at @s run particle minecraft:end_rod ~7 ~-1.5 ~7 0.2 0 0.2 0.01 30 force
execute as @s[scores={counter_2=490}] at @s run particle minecraft:end_rod ~-7 ~-1.5 ~-7 0.2 0 0.2 0.01 30 force
execute as @s[scores={counter_2=490}] at @s run particle minecraft:end_rod ~7 ~-1.5 ~-7 0.2 0 0.2 0.01 30 force
execute as @s[scores={counter_2=490}] at @s run particle minecraft:end_rod ~-7 ~-1.5 ~-7 0.2 0 0.2 0.01 30 force
execute as @s[scores={counter_2=490}] at @s run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 0.75
execute as @s[scores={counter_2=490}] at @s run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 2 1.45
execute as @s[scores={counter_2=510}] at @s run summon minecraft:lightning_bolt ~5 ~-1.5 ~
execute as @s[scores={counter_2=510}] at @s run summon minecraft:lightning_bolt ~-5 ~-1.5 ~
execute as @s[scores={counter_2=510}] at @s run summon minecraft:lightning_bolt ~ ~-1.5 ~5
execute as @s[scores={counter_2=510}] at @s run summon minecraft:lightning_bolt ~ ~-1.5 ~-5
execute as @s[scores={counter_2=520}] at @s run summon minecraft:lightning_bolt ~7 ~-1.5 ~7
execute as @s[scores={counter_2=520}] at @s run summon minecraft:lightning_bolt ~-7 ~-1.5 ~-7
execute as @s[scores={counter_2=520}] at @s run summon minecraft:lightning_bolt ~-7 ~-1.5 ~7
execute as @s[scores={counter_2=520}] at @s run summon minecraft:lightning_bolt ~7 ~-1.5 ~-7
#
execute as @s[scores={counter_2=580}] at @s run tellraw @a ["",{"text":"\u300a"},{"text":"UC\u2082T","color":"dark_red"},{"text":"\u300b "},{"text":"\u5897\u6b96\u7089-\u30de\u30eb\u30c1\u30d7\u30e9\u30a4-","color":"blue"}]
execute as @s[scores={counter_2=580},tag=025-Core-Red] at @s run summon skeleton ~ ~ ~ {Glowing:1b,Team:"Red",Health:2f,Tags:["025-ocha","025-ochaB"],CustomName:'{"text":"増殖するお茶","color":"green","bold":true}',HandItems:[{id:"minecraft:golden_shovel",Count:1b},{id:"minecraft:diamond_shovel",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3017740}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5393484}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14932184}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"67c205dc-e451-46c3-bafe-2cf13c376c4f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxN2JlZWVhOGUxYjA0ZWQ5OGMzOGMzN2FiOGNjNDA4MjliMTRhZjA1MmE5Y2FiYzVkNDBiMzQxZDYxZDQxNCJ9fX0="}]}}}}],Attributes:[{Name:"generic.max_health",Base:2}],Silent:1b}
execute as @s[scores={counter_2=580},tag=025-Core-Blue] at @s run summon skeleton ~ ~ ~ {Glowing:1b,Team:"Blue",Health:2f,Tags:["025-ocha","025-ochaB"],CustomName:'{"text":"増殖するお茶","color":"green","bold":true}',HandItems:[{id:"minecraft:golden_shovel",Count:1b},{id:"minecraft:diamond_shovel",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3017740}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5393484}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14932184}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"67c205dc-e451-46c3-bafe-2cf13c376c4f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxN2JlZWVhOGUxYjA0ZWQ5OGMzOGMzN2FiOGNjNDA4MjliMTRhZjA1MmE5Y2FiYzVkNDBiMzQxZDYxZDQxNCJ9fX0="}]}}}}],Attributes:[{Name:"generic.max_health",Base:2}],Silent:1b}
execute as @s[scores={counter_2=580},tag=025-Core-Red] at @s run summon skeleton ~ ~ ~ {Glowing:1b,Team:"Red",Health:2f,Tags:["025-ocha","025-ochaB"],CustomName:'{"text":"増殖するお茶","color":"green","bold":true}',HandItems:[{id:"minecraft:golden_shovel",Count:1b},{id:"minecraft:diamond_shovel",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3017740}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5393484}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14932184}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"67c205dc-e451-46c3-bafe-2cf13c376c4f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxN2JlZWVhOGUxYjA0ZWQ5OGMzOGMzN2FiOGNjNDA4MjliMTRhZjA1MmE5Y2FiYzVkNDBiMzQxZDYxZDQxNCJ9fX0="}]}}}}],Attributes:[{Name:"generic.max_health",Base:2}],Silent:1b}
execute as @s[scores={counter_2=580},tag=025-Core-Blue] at @s run summon skeleton ~ ~ ~ {Glowing:1b,Team:"Blue",Health:2f,Tags:["025-ocha","025-ochaB"],CustomName:'{"text":"増殖するお茶","color":"green","bold":true}',HandItems:[{id:"minecraft:golden_shovel",Count:1b},{id:"minecraft:diamond_shovel",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3017740}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5393484}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14932184}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"67c205dc-e451-46c3-bafe-2cf13c376c4f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxN2JlZWVhOGUxYjA0ZWQ5OGMzOGMzN2FiOGNjNDA4MjliMTRhZjA1MmE5Y2FiYzVkNDBiMzQxZDYxZDQxNCJ9fX0="}]}}}}],Attributes:[{Name:"generic.max_health",Base:2}],Silent:1b}
execute as @s[scores={counter_2=580}] at @s run data merge block -71 2 -71 {auto:1b}
scoreboard players set @s[scores={counter_2=600..}] counter_2 0