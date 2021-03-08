#CT
scoreboard players set @s CT2 0
#スキル効果
execute at @s[team=Red,scores={Mana=..99}] run summon skeleton ~ ~ ~ {Team:"Red",Health:30f,Tags:["025-ocha"],CustomName:'{"text":"増殖するお茶","color":"green","bold":true}',HandItems:[{id:"minecraft:golden_shovel",Count:1b},{id:"minecraft:diamond_shovel",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3017740}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5393484}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14932184}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"67c205dc-e451-46c3-bafe-2cf13c376c4f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxN2JlZWVhOGUxYjA0ZWQ5OGMzOGMzN2FiOGNjNDA4MjliMTRhZjA1MmE5Y2FiYzVkNDBiMzQxZDYxZDQxNCJ9fX0="}]}}}}],Attributes:[{Name:"generic.max_health",Base:30}],Silent:1b}

execute at @s[team=Blue,scores={Mana=..99}] run summon skeleton ~ ~ ~ {Team:"Blue",Health:30f,Tags:["025-ocha"],CustomName:'{"text":"増殖するお茶","color":"green","bold":true}',HandItems:[{id:"minecraft:golden_shovel",Count:1b},{id:"minecraft:diamond_shovel",Count:1b}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3017740}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:5393484}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:14932184}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"67c205dc-e451-46c3-bafe-2cf13c376c4f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTAxN2JlZWVhOGUxYjA0ZWQ5OGMzOGMzN2FiOGNjNDA4MjliMTRhZjA1MmE5Y2FiYzVkNDBiMzQxZDYxZDQxNCJ9fX0="}]}}}}],Attributes:[{Name:"generic.max_health",Base:30}],Silent:1b}
execute at @a[scores={Mana=..99}] run tellraw @s {"text":"\u308f\u308c\u306e\u540d\u306fkoucyacyan\uff01\n\u4e16\u754c\u6700\u5f31\u306e\uff76\uff9e\uff72\uff7c\uff9e\u3060\uff01","bold":true}
#共通
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~ ~-1 ~ {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}],Invisible:1b}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~ ~-0.35 ~ {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:gray_wool",Count:1b}],Invisible:1b}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~ ~0.25 ~ {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:gray_wool",Count:1b}],Invisible:1b}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~ ~0.8 ~0.75 {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}],Invisible:1b}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~ ~0.8 ~ {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}],Invisible:1b}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~ ~0.8 ~-0.75 {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:anvil",Count:1b}],Invisible:1b}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~0.25 ~0.25 ~-0.75 {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence",Count:1b}],Invisible:1b,Rotation:[90F,0F]}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~0.25 ~0.25 ~0.75 {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence",Count:1b}],Invisible:1b,Rotation:[-90F,0F]}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~0.5 ~0.5 ~0.55 {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Invisible:1b,Pose:{Head:[120f,0f,0f]}}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~0.5 ~0.6 ~0.95 {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Invisible:1b,Pose:{Head:[-60f,0f,0f]}}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~0.75 ~0.65 ~0.95 {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:iron_bars",Count:1b}],Invisible:1b}
execute at @s[scores={Mana=100..}] run summon minecraft:armor_stand ~0.5 ~2.15 ~0.525 {Marker:1b,Tags:["025-100"],ArmorItems:[{},{},{},{id:"minecraft:end_rod",Count:1b}],Invisible:1b,Pose:{Head:[120f,0f,0f]}}
execute at @s[scores={Mana=100..},team=Red] run summon minecraft:armor_stand ~ ~2.1 ~ {Marker:1b,Invisible:1b,Tags:["025-100","025-Core","025-Core-Red"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"6fbd24df-1704-4703-add1-9d65df91e733",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWExNTA1ZDA4MDYzNmI4YzgyZDU3ZDI0MjVmMTIzYTU5ZTQxNTQ1N2M0YmMzYzY3YWRlYzUyMWQyOTFiYzRlMSJ9fX0="}]}}}}],Rotation:[-90F,0F],Small:1b}
execute at @s[scores={Mana=100..},team=Blue] run summon minecraft:armor_stand ~ ~2.1 ~ {Marker:1b,Invisible:1b,Tags:["025-100","025-Core","025-Core-Blue"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"6fbd24df-1704-4703-add1-9d65df91e733",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWExNTA1ZDA4MDYzNmI4YzgyZDU3ZDI0MjVmMTIzYTU5ZTQxNTQ1N2M0YmMzYzY3YWRlYzUyMWQyOTFiYzRlMSJ9fX0="}]}}}}],Rotation:[-90F,0F],Small:1b}
execute at @s[scores={Mana=100..}] run tellraw @a ["",{"text":"UC\u2082T","underlined":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":{"text":"\u7a76\u6975\u751f\u547d\u4f53\u30af\u30ea\u30e0\u30be\u30f3tea-UltimateCreatureCrimsonTea","underlined":true,"color":"dark_red"}}},{"text":"\u964d\u81e8","color":"white"},{"text":" "}]
execute at @s[scores={Mana=100..}] run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 2 0.45
execute at @s[scores={Mana=100..}] run particle minecraft:explosion ~ ~ ~ 2 2 2 0 50 force @a
scoreboard players set @s[scores={Mana=100..}] Mana 0
#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block -71 2 -71 {auto:1b}
data merge block -71 2 -69 {auto:1b}