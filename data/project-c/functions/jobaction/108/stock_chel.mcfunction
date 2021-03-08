#実行者     -> jobNumber = 108
#実行地点   -> 実行者
# ちぇるを貯める
scoreboard players add @s stockcounter 1
execute if score @s stockcounter matches ..30 run give @s minecraft:pink_dye{display:{Name:'{"text":"ちぇる★","italic":"false"}',Lore:['{"text":"ちぇるうぃだんす？","italic":"false","color":"white"}','{"text":"パッシブスキル","italic":"false","color":"aqua"}','[{"text":"近接攻撃を行うたびに","italic":"false","color":"white"},{"text":"ちぇる★","italic":"false","color":"red"},{"text":"を貯め近接攻撃を強化する。","italic":"false","color":"white"}]','[{"text":"ちぇる★","italic":"false","color":"red"},{"text":"は最大30まで貯めることができる。","italic":"false","color":"white"}]']}}
execute if score @s stockcounter matches 30.. run scoreboard players set @s stockcounter 30
function project-c:jobaction/108/update_attack_damage/01

