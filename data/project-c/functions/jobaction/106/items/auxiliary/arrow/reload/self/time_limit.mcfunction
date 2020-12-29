#自己リロード実行
execute if score @s MagicFatigue matches ..-1 run scoreboard players add @s MagicFatigue 1
execute if entity @s[tag=106_arrow_reload_check] if score @s MagicFatigue matches 0 run tag @s remove 106_arrow_reload_check
#execute if entity @s[tag=has_items_use_arrow] if score @s MagicFatigue matches 0 run 
execute if entity @s if score @s MagicFatigue matches 0 run scoreboard players reset @s MagicFatigue