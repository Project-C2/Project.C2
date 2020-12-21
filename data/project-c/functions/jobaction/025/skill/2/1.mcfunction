scoreboard players add @s counter 1
execute as @s[scores={counter=140}] at @s run playsound minecraft:item.bucket.fill master @a ~ ~ ~ 2 1
execute as @s[scores={counter=140}] at @s run playsound minecraft:item.bucket.fill master @a ~ ~ ~ 2 2
execute as @s[scores={counter=140}] at @s run particle minecraft:dripping_lava ~ ~1 ~ 3 3 3 0.1 150 force @a
execute as @s[scores={counter=140},tag=!025-ochaB] at @s run tellraw @a[distance=..15] ["",{"text":"\u5897\u6b96\u3059\u308b\u304a\u8336","bold":true,"color":"green"},{"text":" *\u30c6\u30a3\u30fc\u30b9\u30d7\u30ea\u30f3\u30af\u30eb\uff01","bold":true}]
execute as @s[scores={counter=140},team=Red] at @s run effect give @e[distance=..5,team=Blue,tag=Battle] instant_damage 1 0
execute as @s[scores={counter=140},team=Blue] at @s run effect give @e[distance=..5,team=Red,tag=Battle] instant_damage 1 0
execute as @s[scores={counter=140},team=Red] at @s run effect give @e[distance=..5,team=Blue,tag=Battle] minecraft:levitation 1 5 true
execute as @s[scores={counter=140},team=Blue] at @s run effect give @e[distance=..5,team=Red,tag=Battle] minecraft:levitation 1 5 true
#
execute as @s[scores={counter=280},tag=!025-ochaB] at @s run tellraw @a[distance=..15] ["",{"text":"\u5897\u6b96\u3059\u308b\u304a\u8336","bold":true,"color":"green"},{"text":" *\u771f\u306e\u304a\u8336\u306f\u6642\u9593\u3092\u64cd\u308b","bold":true}]
execute as @s[scores={counter=280}] at @s run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 2 0
execute as @s[scores={counter=280}] at @s run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 2 1
execute as @s[scores={counter=280}] at @s run particle minecraft:firework ~ ~1 ~ 3 3 3 0.1 20 force @a
execute as @s[scores={counter=280},team=Red] at @s run scoreboard players add @a[distance=..5,team=Red] CT1 100
execute as @s[scores={counter=280},team=Red] at @s run scoreboard players add @a[distance=..5,team=Red] CT2 100
execute as @s[scores={counter=280},team=Red] at @s run scoreboard players add @a[distance=..5,team=Red] CT3 100
execute as @s[scores={counter=280},team=Blue] at @s run scoreboard players add @a[distance=..5,team=Blue] CT1 100
execute as @s[scores={counter=280},team=Blue] at @s run scoreboard players add @a[distance=..5,team=Blue] CT2 100
execute as @s[scores={counter=280},team=Blue] at @s run scoreboard players add @a[distance=..5,team=Blue] CT3 100
#
execute as @s[scores={counter=420},tag=!025-ochaB] at @s run tellraw @a[distance=..15] ["",{"text":"\u5897\u6b96\u3059\u308b\u304a\u8336","bold":true,"color":"green"},{"text":" *\u30ec\u30b8\u30a7\u30f3\u30c9\u30aa\u30d6\u30de\u30eb\u30c6\u30a3\u30d7\u30e9\u30a3\uff01","bold":true}]
execute as @s[scores={counter=420},team=Red,tag=!025-ochaB] at @s run summon skeleton ~ ~ ~ {Glowing:1b,Team:"Red",Health:2f,Tags:["025-ocha","025-ochaB"],CustomName:"{\"text\":\"増殖するお茶\",\"color\":\"green\",\"bold\":true}",HandItems:[{id:"minecraft:golden_shovel",Count:1b},{id:"minecraft:diamond_shovel",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3017740}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5393484}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14932184}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"67c205dc-e451-46c3-bafe-2cf13c376c4f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxN2JlZWVhOGUxYjA0ZWQ5OGMzOGMzN2FiOGNjNDA4MjliMTRhZjA1MmE5Y2FiYzVkNDBiMzQxZDYxZDQxNCJ9fX0="}]}}}}],Attributes:[{Name:generic.max_health,Base:2}],Silent:1b}
execute as @s[scores={counter=420},team=Blue,tag=!025-ochaB] at @s run summon skeleton ~ ~ ~ {Glowing:1b,Team:"Blue",Health:2f,Tags:["025-ocha","025-ochaB"],CustomName:"{\"text\":\"増殖するお茶\",\"color\":\"green\",\"bold\":true}",HandItems:[{id:"minecraft:golden_shovel",Count:1b},{id:"minecraft:diamond_shovel",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3017740}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5393484}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14932184}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"67c205dc-e451-46c3-bafe-2cf13c376c4f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxN2JlZWVhOGUxYjA0ZWQ5OGMzOGMzN2FiOGNjNDA4MjliMTRhZjA1MmE5Y2FiYzVkNDBiMzQxZDYxZDQxNCJ9fX0="}]}}}}],Attributes:[{Name:generic.max_health,Base:2}],Silent:1b}
scoreboard players set @s[scores={counter=420}] counter 0
execute as @e[nbt={HurtTime:9s}] at @s run playsound minecraft:entity.villager.hurt master @a ~ ~ ~ 2 1
scoreboard players add @s counter_2 1
kill @s[scores={counter_2=1200}]