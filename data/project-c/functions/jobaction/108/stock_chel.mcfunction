#実行者     -> jobNumber = 108
#実行地点   -> 実行者
# ちぇるを貯める
scoreboard players add @s stockcounter 1
execute if score @s stockcounter matches ..30 run give @s minecraft:pink_dye{display:{Name:"{\"text\":\"ちぇる★\",\"italic\":\"false\"}",Lore:[]}}
execute if score @s stockcounter matches 30.. run scoreboard players set @s stockcounter 30
function project-c:jobaction/108/update_attack_damage/01