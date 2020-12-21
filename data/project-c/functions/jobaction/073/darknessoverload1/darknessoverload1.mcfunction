tellraw @s ["",{"text":"\u06de "},{"text":"§e§k1§r","color":"dark_purple"},{"text":"§8§lDarknessOverload§r","color":"black"},{"text":"§e§k1§r Ⅰ","color":"dark_purple"},{"text":" を選択しました"}]
scoreboard players set @s subcounter 21
scoreboard players set @s drop 1

playsound minecraft:entity.experience_orb.pickup master @s 0 0 0 0.5 2 0.5

function project-c:jobaction/073/darknessoverload1/replaceitem