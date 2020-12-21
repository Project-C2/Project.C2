replaceitem entity @s hotbar.2 minecraft:tropical_fish_bucket{display:{Name:'{"text":"トロピカルスクランブル","color":"red","bold":true,"italic":false}',Lore:['{"text":"発動:右クリック","color":"yellow","italic":false}','{"text":"前方に熱帯魚の群れを突撃させる。","color":"white","italic":false}','{"text":"CT:20","color":"green","italic":false}']},Enchantments:[{}]} 1
playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.5 2 0.5
tag @s add SkillReady2
scoreboard players set #8 counter 8
