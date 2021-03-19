execute if entity @e[tag=Damage1,limit=1] as @e[tag=Damage1] run effect give @s resistance 1 1 true
execute if entity @e[tag=Damage1,limit=1] as @e[tag=Damage1] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @e[tag=Damage1,limit=1] as @e[tag=Damage1] run tag @s remove Damage1

execute if entity @e[tag=Damage2,limit=1] as @e[tag=Damage2] run effect give @s resistance 1 0 true
execute if entity @e[tag=Damage2,limit=1] as @e[tag=Damage2] run effect give @s minecraft:instant_damage 1 0 true
execute if entity @e[tag=Damage2,limit=1] as @e[tag=Damage2] run tag @s remove Damage2

execute if entity @e[tag=Damage4,limit=1] as @e[tag=Damage2] run effect give @s resistance 1 0 true
execute if entity @e[tag=Damage4,limit=1] as @e[tag=Damage4] run effect give @s minecraft:instant_damage 1 1 true
execute if entity @e[tag=Damage4,limit=1] as @e[tag=Damage4] run tag @s remove Damage4


clear @a minecraft:glass_bottle 1
clear @a minecraft:elytra{Damage:431} 1
scoreboard players add @e[type=shulker_bullet] counter 1
kill @e[type=shulker_bullet,scores={counter=80}]

execute if entity @a[tag=Battle,gamemode=!spectator,scores={damageTaken=31..,OutCombat=240..},limit=1] as @a[tag=Battle,gamemode=!spectator,scores={damageTaken=31..,OutCombat=240..}] run effect clear @s regeneration
execute if entity @a[tag=Battle,gamemode=!spectator,scores={OutCombat=240..,damageTaken=31..},limit=1] as @a[tag=Battle,gamemode=!spectator,scores={OutCombat=240..,damageTaken=31..}] run tag @s remove Regene

execute if entity @a[tag=Battle,scores={damageTaken=31..},gamemode=!spectator,limit=1] as @a[tag=Battle,scores={damageTaken=31..},gamemode=!spectator] run scoreboard players set @s OutCombat 0
execute if entity @a[tag=Battle,team=Blue,limit=1] as @a[tag=Battle,team=Blue] at @s unless entity @a[tag=Battle,team=Red,distance=..10,gamemode=!spectator] run scoreboard players add @s OutCombat 1
execute if entity @a[tag=Battle,team=Red,limit=1] as @a[tag=Battle,team=Red] at @s unless entity @a[tag=Battle,team=Blue,distance=..10,gamemode=!spectator] run scoreboard players add @s OutCombat 1

execute if entity @a[tag=Battle,scores={OutCombat=240},gamemode=!spectator,limit=1] as @a[tag=Battle,scores={OutCombat=240},gamemode=!spectator] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 0.75
execute if entity @a[tag=Battle,scores={OutCombat=240},limit=1] as @a[tag=Battle,scores={OutCombat=240}] run effect give @s regeneration 100000 1 true

execute if entity @a[tag=Battle,scores={OutCombat=400},gamemode=!spectator,limit=1] as @a[tag=Battle,scores={OutCombat=400},gamemode=!spectator] at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1
execute if entity @a[tag=Battle,scores={OutCombat=400},limit=1] as @a[tag=Battle,scores={OutCombat=400}] run effect give @s regeneration 100000 2 true
execute if entity @a[tag=Battle,scores={OutCombat=401..},limit=1] as @a[tag=Battle,scores={OutCombat=401..}] run effect give @s speed 1 0 true



execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion] at @s run particle minecraft:block iron_block ~ ~1 ~ 0.5 0.5 0.5 0 3
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion] at @s run effect give @s resistance 1 4 true
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion,nbt={HurtTime:9s}] at @s run effect clear @s resistance
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion,nbt={HurtTime:9s}] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 0.5
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion,nbt={HurtTime:9s}] at @s run particle minecraft:block iron_block ~ ~1 ~ 0 0 0 1 70
execute if entity @a[tag=KoutetuPotion,limit=1] as @a[tag=KoutetuPotion,nbt={HurtTime:9s}] at @s run tag @s remove KoutetuPotion

execute if entity @a[scores={damageTaken=1..},nbt={HurtTime:9s}] run scoreboard players reset @a[scores={damageTaken=1..},nbt={HurtTime:9s}] damageTaken

execute if entity @a[tag=OverPotion,limit=1] as @a[tag=OverPotion] at @s run particle minecraft:white_ash ~ ~1 ~ 0.5 0.5 0.5 0 3

execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=1}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=1}] at @s run tag @s add OverPotion1
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=2}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=2}] at @s run tag @s add OverPotion2
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=3}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=3}] at @s run tag @s add OverPotion3
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=1}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=1}] at @s run tag @s add OverPotionUse
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=2}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=2}] at @s run tag @s add OverPotionUse
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=3}] unless entity @s[scores={relic=27}] as @a[tag=OverPotion,scores={usedSkill=3}] at @s run tag @s add OverPotionUse

execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=1,relic=27,CT1=..1180}] as @a[tag=OverPotion,scores={usedSkill=1,relic=27,CT1=..1180}] at @s run tag @s add OverPotion1
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=2,relic=27,CT2=..1180}] as @a[tag=OverPotion,scores={usedSkill=2,relic=27,CT2=..1180}] at @s run tag @s add OverPotion2
execute if entity @a[tag=OverPotion,limit=1,scores={usedSkill=3,relic=27,CT3=..1180}] as @a[tag=OverPotion,scores={usedSkill=3,relic=27,CT3=..1180}] at @s run tag @s add OverPotion3

execute if entity @a[tag=OverPotion1,limit=1] as @a[tag=OverPotion1] at @s run scoreboard players set @s CT1 1179
execute if entity @a[tag=OverPotion2,limit=1] as @a[tag=OverPotion2] at @s run scoreboard players set @s CT2 1179
execute if entity @a[tag=OverPotion3,limit=1] as @a[tag=OverPotion3] at @s run scoreboard players set @s CT3 1179

execute if entity @a[tag=OverPotion1,limit=1] as @a[tag=OverPotion1] at @s run tag @s remove OverPotion1
execute if entity @a[tag=OverPotion2,limit=1] as @a[tag=OverPotion2] at @s run tag @s remove OverPotion2
execute if entity @a[tag=OverPotion3,limit=1] as @a[tag=OverPotion3] at @s run tag @s remove OverPotion3

execute if entity @a[tag=OverPotionUse,limit=1] as @a[tag=OverPotionUse] at @s run particle minecraft:firework ~ ~1 ~ 0 0 0 1 30
execute if entity @a[tag=OverPotionUse,limit=1] as @a[tag=OverPotionUse] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 2
execute if entity @a[tag=OverPotionUse,limit=1] as @a[tag=OverPotionUse] at @s run tag @s remove OverPotion
execute if entity @a[tag=OverPotionUse,limit=1] as @a[tag=OverPotionUse] at @s run tag @s remove OverPotionUse

execute as @a at @s store result score @s Hight run data get entity @s Pos[1]

execute if entity @a[gamemode=!spectator,tag=Battle,limit=1] as @a[gamemode=!spectator,tag=Battle] if score @s Hight matches ..4 unless score #GameTime counter matches ..0 run function project-c:general/void_return

function project-c:general/stagegimmick/base

kill @e[type=area_effect_cloud,nbt={Effects:[{Id:30b,Amplifier:49b,ShowParticles:0b}]}]

execute if entity @e[type=item,tag=CPOA,limit=1] as @e[type=item,tag=CPOA] run data merge entity @s {Item:{tag:{CanPlaceOn:["acacia_button","acacia_door","acacia_fence_gate","acacia_fence","acacia_leaves","acacia_log","acacia_planks","acacia_pressure_plate","acacia_sapling","acacia_sign","acacia_slab","acacia_stairs","acacia_trapdoor","acacia_wall_sign","acacia_wood","activator_rail","air","allium","ancient_debris","andesite","andesite_slab","andesite_stairs","andesite_wall","anvil","attached_melon_stem","attached_pumpkin_stem","azure_bluet","bamboo","bamboo_sapling","barrel","barrier","basalt","beacon","bedrock","beehive","bee_nest","beetroots","bell","birch_button","birch_door","birch_fence_gate","birch_fence","birch_leaves","birch_log","birch_planks","birch_pressure_plate","birch_sapling","birch_sign","birch_slab","birch_stairs","birch_trapdoor","birch_wall_sign","birch_wood","black_banner","black_bed","black_carpet","black_concrete_powder","black_concrete","black_glazed_terracotta","black_shulker_box","black_stained_glass","black_stained_glass_pane","black_terracotta","black_wall_banner","black_wool","blackstone","blackstone_slab","blackstone_stairs","blackstone_wall","blast_furnace","blue_banner","blue_bed","blue_carpet","blue_concrete_powder","blue_concrete","blue_glazed_terracotta","blue_ice","blue_orchid","blue_shulker_box","blue_stained_glass","blue_stained_glass_pane","blue_terracotta","blue_wall_banner","blue_wool","bone_block","bookshelf","brain_coral","brain_coral_block","brain_coral_fan","brain_coral_wall_fan","brewing_stand","brick_slab","brick_stairs","brick_wall","bricks","brown_banner","brown_bed","brown_carpet","brown_concrete_powder","brown_concrete","brown_glazed_terracotta","brown_mushroom_block","brown_mushroom","brown_shulker_box","brown_stained_glass","brown_stained_glass_pane","brown_terracotta","brown_wall_banner","brown_wool","bubble_column","bubble_coral","bubble_coral_block","bubble_coral_fan","bubble_coral_wall_fan","cactus","cake","campfire","carrots","cartography_table","carved_pumpkin","cauldron","cave_air","chain","chain_command_block","chest","chipped_anvil","chiseled_nether_bricks","chiseled_polished_blackstone","chiseled_quartz_block","chiseled_red_sandstone","chiseled_sandstone","chiseled_stone_bricks","chorus_flower","chorus_plant","clay","coal_block","coal_ore","coarse_dirt","cobblestone","cobblestone_slab","cobblestone_stairs","cobblestone_wall","cobweb","cocoa","command_block","comparator","composter","conduit","cornflower","cracked_nether_bricks","cracked_polished_blackstone_bricks","cracked_stone_bricks","crafting_table","creeper_head","creeper_wall_head","crimson_button","crimson_door","crimson_fence_gate","crimson_fence","crimson_fungus","crimson_hyphae","crimson_nylium","crimson_planks","crimson_pressure_plate","crimson_roots","crimson_sign","crimson_slab","crimson_stairs","crimson_stem","crimson_trapdoor","crimson_wall_sign","crying_obsidian","cut_red_sandstone","cut_red_sandstone_slab","cut_sandstone","cut_sandstone_slab","cyan_banner","cyan_bed","cyan_carpet","cyan_concrete_powder","cyan_concrete","cyan_glazed_terracotta","cyan_shulker_box","cyan_stained_glass","cyan_stained_glass_pane","cyan_terracotta","cyan_wall_banner","cyan_wool","damaged_anvil","dandelion","dark_oak_button","dark_oak_door","dark_oak_fence_gate","dark_oak_fence","dark_oak_leaves","dark_oak_log","dark_oak_planks","dark_oak_pressure_plate","dark_oak_sapling","dark_oak_sign","dark_oak_slab","dark_oak_stairs","dark_oak_trapdoor","dark_oak_wall_sign","dark_oak_wood","dark_prismarine","dark_prismarine_slab","dark_prismarine_stairs","daylight_detector","dead_brain_coral","dead_brain_coral_block","dead_brain_coral_fan","dead_brain_coral_wall_fan","dead_bubble_coral","dead_bubble_coral_block","dead_bubble_coral_fan","dead_bubble_coral_wall_fan","dead_bush","dead_fire_coral","dead_fire_coral_block","dead_fire_coral_fan","dead_fire_coral_wall_fan","dead_horn_coral","dead_horn_coral_block","dead_horn_coral_fan","dead_horn_coral_wall_fan","dead_tube_coral","dead_tube_coral_block","dead_tube_coral_fan","dead_tube_coral_wall_fan","detector_rail","diamond_block","diamond_ore","diorite","diorite_slab","diorite_stairs","diorite_wall","dirt","dispenser","dragon_egg","dragon_head","dragon_wall_head","dried_kelp_block","dropper","emerald_block","emerald_ore","enchanting_table","end_gateway","end_portal_frame","end_portal","end_rod","end_stone","end_stone_brick_slab","end_stone_brick_stairs","end_stone_brick_wall","end_stone_bricks","ender_chest","farmland","fern","fire","fire_coral","fire_coral_block","fire_coral_fan","fire_coral_wall_fan","fletching_table","flower_pot","frosted_ice","furnace","gilded_blackstone","glass","glass_pane","glowstone","gold_block","gold_ore","granite","granite_slab","granite_stairs","granite_wall","grass_block","grass_path","grass","gravel","gray_banner","gray_bed","gray_carpet","gray_concrete_powder","gray_concrete","gray_glazed_terracotta","gray_shulker_box","gray_stained_glass","gray_stained_glass_pane","gray_terracotta","gray_wall_banner","gray_wool","green_banner","green_bed","green_carpet","green_concrete_powder","green_concrete","green_glazed_terracotta","green_shulker_box","green_stained_glass","green_stained_glass_pane","green_terracotta","green_wall_banner","green_wool","grindstone","hay_block","heavy_weighted_pressure_plate","hopper","honey_block","honeycomb_block","horn_coral","horn_coral_block","horn_coral_fan","horn_coral_wall_fan","ice","infested_chiseled_stone_bricks","infested_cobblestone","infested_cracked_stone_bricks","infested_mossy_stone_bricks","infested_stone","infested_stone_bricks","iron_bars","iron_door","iron_block","iron_ore","iron_trapdoor","jack_o_lantern","jigsaw","jukebox","jungle_button","jungle_door","jungle_fence_gate","jungle_fence","jungle_leaves","jungle_log","jungle_planks","jungle_pressure_plate","jungle_sapling","jungle_sign","jungle_slab","jungle_stairs","jungle_trapdoor","jungle_wall_sign","jungle_wood","kelp","kelp_plant","ladder","lantern","lapis_block","lapis_ore","large_fern","lava","lectern","lever","light_blue_banner","light_blue_bed","light_blue_carpet","light_blue_concrete_powder","light_blue_concrete","light_blue_glazed_terracotta","light_blue_shulker_box","light_blue_stained_glass","light_blue_stained_glass_pane","light_blue_terracotta","light_blue_wall_banner","light_blue_wool","light_gray_banner","light_gray_bed","light_gray_carpet","light_gray_concrete_powder","light_gray_concrete","light_gray_glazed_terracotta","light_gray_shulker_box","light_gray_stained_glass","light_gray_stained_glass_pane","light_gray_terracotta","light_gray_wall_banner","light_gray_wool","light_weighted_pressure_plate","lilac","lily_pad","lily_of_the_valley","lime_banner","lime_bed","lime_carpet","lime_concrete_powder","lime_concrete","lime_glazed_terracotta","lime_shulker_box","lime_stained_glass","lime_stained_glass_pane","lime_terracotta","lime_wall_banner","lime_wool","lodestone","loom","magenta_banner","magenta_bed","magenta_carpet","magenta_concrete_powder","magenta_concrete","magenta_glazed_terracotta","magenta_shulker_box","magenta_stained_glass","magenta_stained_glass_pane","magenta_terracotta","magenta_wall_banner","magenta_wool","magma_block","melon","melon_stem","mossy_cobblestone","mossy_cobblestone_slab","mossy_cobblestone_stairs","mossy_cobblestone_wall","mossy_stone_brick_slab","mossy_stone_brick_stairs","mossy_stone_brick_wall","mossy_stone_bricks","moving_piston","mushroom_stem","mycelium","nether_brick_fence","nether_brick_slab","nether_brick_stairs","nether_brick_wall","nether_bricks","nether_gold_ore","nether_portal","nether_quartz_ore","nether_sprouts","nether_wart_block","nether_wart","netherite_block","netherrack","note_block","oak_button","oak_door","oak_fence_gate","oak_fence","oak_leaves","oak_log","oak_planks","oak_pressure_plate","oak_sapling","oak_sign","oak_slab","oak_stairs","oak_trapdoor","oak_wall_sign","oak_wood","observer","obsidian","orange_banner","orange_bed","orange_carpet","orange_concrete_powder","orange_concrete","orange_glazed_terracotta","orange_shulker_box","orange_stained_glass","orange_stained_glass_pane","orange_terracotta","orange_tulip","orange_wall_banner","orange_wool","oxeye_daisy","packed_ice","peony","petrified_oak_slab","pink_banner","pink_bed","pink_carpet","pink_concrete_powder","pink_concrete","pink_glazed_terracotta","pink_shulker_box","pink_stained_glass","pink_stained_glass_pane","pink_terracotta","pink_tulip","pink_wall_banner","pink_wool","piston_head","piston","player_head","player_wall_head","podzol","polished_andesite","polished_andesite_slab","polished_andesite_stairs","polished_basalt","polished_blackstone","polished_blackstone_brick_slab","polished_blackstone_brick_stairs","polished_blackstone_brick_wall","polished_blackstone_bricks","polished_blackstone_button","polished_blackstone_pressure_plate","polished_blackstone_slab","polished_blackstone_stairs","polished_blackstone_wall","polished_diorite","polished_diorite_slab","polished_diorite_stairs","polished_granite","polished_granite_slab","polished_granite_stairs","poppy","potatoes","potted_acacia_sapling","potted_allium","potted_azure_bluet","potted_bamboo","potted_birch_sapling","potted_blue_orchid","potted_brown_mushroom","potted_cactus","potted_cornflower","potted_crimson_fungus","potted_crimson_roots","potted_dandelion","potted_dark_oak_sapling","potted_dead_bush","potted_fern","potted_jungle_sapling","potted_lily_of_the_valley","potted_oak_sapling","potted_orange_tulip","potted_oxeye_daisy","potted_pink_tulip","potted_poppy","potted_red_mushroom","potted_red_tulip","potted_spruce_sapling","potted_warped_fungus","potted_warped_roots","potted_white_tulip","potted_wither_rose","powered_rail","prismarine","prismarine_brick_slab","prismarine_brick_stairs","prismarine_bricks","prismarine_slab","prismarine_stairs","prismarine_wall","pumpkin","pumpkin_stem","purple_banner","purple_bed","purple_carpet","purple_concrete_powder","purple_concrete","purple_glazed_terracotta","purple_shulker_box","purple_stained_glass","purple_stained_glass_pane","purple_terracotta","purple_wall_banner","purple_wool","purpur_block","purpur_pillar","purpur_slab","purpur_stairs","quartz_block","quartz_bricks","quartz_pillar","quartz_slab","quartz_stairs","rail","red_banner","red_bed","red_carpet","red_concrete_powder","red_concrete","red_glazed_terracotta","red_mushroom_block","red_mushroom","red_nether_brick_slab","red_nether_brick_stairs","red_nether_brick_wall","red_nether_bricks","red_sand","red_sandstone","red_sandstone_slab","red_sandstone_stairs","red_sandstone_wall","red_shulker_box","red_stained_glass","red_stained_glass_pane","red_terracotta","red_tulip","red_wall_banner","red_wool","respawn_anchor","redstone_block","redstone_lamp","redstone_ore","redstone_torch","redstone_wall_torch","redstone_wire","repeater","repeating_command_block","rose_bush","sand","sandstone","sandstone_slab","sandstone_stairs","sandstone_wall","scaffolding","sea_lantern","sea_pickle","seagrass","shroomlight","shulker_box","skeleton_skull","skeleton_wall_skull","slime_block","smithing_table","smoker","smooth_quartz","smooth_quartz_slab","smooth_quartz_stairs","smooth_red_sandstone","smooth_red_sandstone_slab","smooth_red_sandstone_stairs","smooth_sandstone","smooth_sandstone_slab","smooth_sandstone_stairs","smooth_stone","smooth_stone_slab","snow_block","snow","soul_campfire","soul_fire","soul_lantern","soul_sand","soul_soil","soul_torch","soul_wall_torch","spawner","sponge","spruce_button","spruce_door","spruce_fence_gate","spruce_fence","spruce_leaves","spruce_log","spruce_planks","spruce_pressure_plate","spruce_sapling","spruce_sign","spruce_slab","spruce_stairs","spruce_trapdoor","spruce_wall_sign","spruce_wood","sticky_piston","stone","stone_brick_slab","stone_brick_stairs","stone_brick_wall","stone_bricks","stone_button","stone_pressure_plate","stone_slab","stone_stairs","stonecutter","stripped_acacia_log","stripped_acacia_wood","stripped_birch_log","stripped_birch_wood","stripped_crimson_hyphae","stripped_crimson_stem","stripped_dark_oak_log","stripped_dark_oak_wood","stripped_jungle_log","stripped_jungle_wood","stripped_oak_log","stripped_oak_wood","stripped_spruce_log","stripped_spruce_wood","stripped_warped_hyphae","stripped_warped_stem","structure_block","structure_void","sugar_cane","sunflower","sweet_berry_bush","tall_grass","tall_seagrass","target","terracotta","tnt","torch","trapped_chest","tripwire_hook","tripwire","tube_coral","tube_coral_block","tube_coral_fan","tube_coral_wall_fan","turtle_egg","twisting_vines","twisting_vines_plant","vine","void_air","wall_torch","warped_button","warped_door","warped_fence_gate","warped_fence","warped_fungus","warped_hyphae","warped_nylium","warped_planks","warped_pressure_plate","warped_roots","warped_sign","warped_slab","warped_stairs","warped_stem","warped_trapdoor","warped_wall_sign","warped_wart_block","water","weeping_vines","weeping_vines_plant","wet_sponge","wheat","white_banner","white_bed","white_carpet","white_concrete_powder","white_concrete","white_glazed_terracotta","white_shulker_box","white_stained_glass","white_stained_glass_pane","white_terracotta","white_tulip","white_wall_banner","white_wool","wither_rose","wither_skeleton_skull","wither_skeleton_wall_skull","yellow_banner","yellow_bed","yellow_carpet","yellow_concrete_powder","yellow_concrete","yellow_glazed_terracotta","yellow_shulker_box","yellow_stained_glass","yellow_stained_glass_pane","yellow_terracotta","yellow_wall_banner","yellow_wool","zombie_head","zombie_wall_head"]}}}
execute if entity @e[type=item,tag=CPOA,limit=1] as @e[type=item,tag=CPOA] as @s run tag @s remove CPOA
