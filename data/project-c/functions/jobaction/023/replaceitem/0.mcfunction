scoreboard players add @s counter 0
scoreboard players add @s subcounter 0
scoreboard players add @s counter_1 0
scoreboard players add @s counter_2 0
scoreboard players add @s counter_3 0
tag @s[tag=!023-0,tag=!023-1,tag=!023-2,tag=!023-3,tag=!023-4] add 023-0
tag @s[tag=!023-30,tag=!023-31,tag=!023-32,tag=!023-33,tag=!023-34] add 023-30
execute as @s run function project-c:jobaction/023/replaceitem/0-wand
execute as @s run function project-c:jobaction/023/replaceitem/0-book
replaceitem entity @s weapon.offhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Wand","italic":false,"color":"aqua"}',Lore:['{"text":"§7魔法発動に使用する杖。"}','{"text":"§f射出型魔法と設置型魔法の使用が可能。"}']},HideFlags:1,Enchantments:[{}]} 1
scoreboard players reset @s drop