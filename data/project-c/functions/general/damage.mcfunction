#> project-c:general/damage

# 実行者:被ダメ側
# 実行地点:被ダメ側
# #skill_dmgに与ダメの人のplayerNumberを代入する

#hurtByNumberの代入
execute if score #skill_dmg playerNumber matches ..2147483647 run scoreboard players operation @s hurtByNumber = #skill_dmg playerNumber
execute as @a if score @s playerNumber = #skill_dmg playerNumber run data modify storage score_damage: byUUID set from entity @s UUID
#特殊処理(カウンターなど)


#ダメージ処理
execute unless entity @e[tag=damaged,limit=1] unless data entity @s {Invulnerable:1b} run tag @s add damaged
execute as @e[tag=damaged,limit=1] at @s run function score_damage:api/attack
#戦闘外判定の解除
execute if entity @s[tag=Battle,scores={OutCombat=240..}] run effect clear @s regeneration
execute if entity @s[tag=Battle,scores={OutCombat=240..}] run tag @s remove Regene
scoreboard players set @s OutCombat 0

tag @e[tag=damaged] remove damaged
