tellraw @s ["",{"text":"\u06de "},{"text":"MagicDamage Ⅰ","color":"dark_purple"},{"text":" を選択しました"}]
scoreboard players set @s subcounter 1
scoreboard players set @s drop 1

playsound minecraft:entity.experience_orb.pickup master @s 0 0 0 0.5 2 0.5
function project-c:jobaction/073/neutral1/replaceitem