scoreboard players operation #089dummy playerNumber = @s playerNumber
execute as @e[tag=089denkou] if score @s playerNumber = #089dummy playerNumber run tag @s add to_tp
execute unless entity @e[tag=to_tp,limit=1] run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 2
execute unless entity @e[tag=to_tp,limit=1] run tellraw @s [{"text":"発動に失敗しました:電光がありません","color":"red"}]
execute if entity @e[tag=to_tp,limit=1] positioned as @e[tag=to_tp,limit=1,sort=nearest] run function project-c:jobaction/089/skill/1/slash
tag @s remove 089denkou_addable

scoreboard players reset #089dummy
