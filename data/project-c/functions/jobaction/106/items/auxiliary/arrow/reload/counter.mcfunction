#リロード処理
execute if score @s MagicFatigue matches 1.. run scoreboard players remove @s MagicFatigue 1
execute if entity @s[scores={MagicFatigue=0}] run function project-c:jobaction/106/items/auxiliary/arrow/reload/complete