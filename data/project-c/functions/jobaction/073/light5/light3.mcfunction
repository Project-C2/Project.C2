tellraw @s ["",{"text":"\u06de "},{"text":"Heal Ⅱ","color":"green"},{"text":" を選択しました"}]
scoreboard players set @s subcounter 15
scoreboard players set @s drop 1

playsound minecraft:entity.experience_orb.pickup master @s 0 0 0 0.5 2 0.5

function project-c:jobaction/073/light5/replaceitem