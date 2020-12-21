scoreboard players reset @s counter_5
execute unless score @s counter_2 matches 0.. run scoreboard players set @s counter_2 0
scoreboard players add @s counter_2 1
execute unless score @s counter_4 matches 2.. run scoreboard players add @s counter_4 2
function project-c:jobaction/095/replaceitem/4

playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1.3 0.8
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 0.5 0.8
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1.3 1.2
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 0.5 1.2
particle minecraft:instant_effect ~ ~0.2 ~ 1.5 0.1 1.5 1 300 normal @a
particle minecraft:instant_effect ~ ~0.2 ~ 1.5 0.1 1.5 1 75 force @a
playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.8 1
playsound minecraft:item.armor.equip_netherite master @a ~ ~ ~ 1 0.5

execute unless block 33 2 91 minecraft:repeating_command_block run setblock 33 2 91 minecraft:repeating_command_block[facing=south,conditional=false]{Command:"function project-c:jobaction/095/skill/4/x1",TrackOutput:0b,auto:1b}
