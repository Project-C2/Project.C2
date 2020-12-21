### ちぇるを貯める
execute if score @s 108-CHEL-Count matches ..30 run give @s stone{display:{Name:"{\"text\":\"ちぇる\"}",Lore:[]}}
scoreboard players add @s 108-CHEL-Count 1
execute if score @s 108-CHEL-Count matches 30.. run scoreboard players set @s 108-CHEL-Count 30
function project-c:jobaction/108/update_attack_damage/01