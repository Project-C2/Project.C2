tellraw @s ["",{"text":"\u06de "},{"text":"§e§k1§r","color":"dark_purple"},{"text":"§0§lDarknessOverload§r Ⅰ","color":"black"},{"text":"§e§k1§r","color":"dark_purple"},{"text":" を選択しました"}]
scoreboard players set @s subcounter 21
scoreboard players set @s drop 1

playsound minecraft:entity.experience_orb.pickup master @s 0 0 0 0.5 2 0.5

function project-c:jobaction/073/darknessoverload0/replaceitem