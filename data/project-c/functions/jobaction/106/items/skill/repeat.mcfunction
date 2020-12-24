#スキル使用処理


execute if entity @e[tag=neac_fall_damage_nullification_execute_remove,limit=1] as @e[tag=neac_fall_damage_nullification_execute_remove] run effect clear @s slow_falling
execute if entity @e[tag=neac_fall_damage_nullification_execute_remove,limit=1] as @e[tag=neac_fall_damage_nullification_execute_remove] run tag @s remove neac_fall_damage_nullification_execute_remove




#レリーヴストーン
execute if entity @e[scores={106-relieveD=1..},limit=1] as @e[scores={106-relieveD=1..}] at @s run function project-c:jobaction/106/items/skill/01/proc1
execute if entity @p[gamemode=!spectator,scores={jobNumber=106,Mana=1..}] as @a[gamemode=!spectator,scores={jobNumber=106,Mana=1..}] at @s run function project-c:jobaction/106/items/skill/01/proc2




#灯火
execute if entity @e[type=minecraft:blaze,tag=106_fire,limit=1] as @e[type=minecraft:blaze,tag=106_fire] at @s run function project-c:jobaction/106/items/skill/03/proc



#アロースプリンクラー
execute if entity @e[type=minecraft:armor_stand,tag=106_sprink_arrow,limit=1] as @e[type=minecraft:armor_stand,tag=106_sprink_arrow] at @s run function project-c:jobaction/106/items/skill/04/shot
execute if entity @e[tag=106_sprink_arrow_aec,type=minecraft:area_effect_cloud,limit=1] as @e[tag=106_sprink_arrow_aec,type=minecraft:area_effect_cloud] at @s run function project-c:jobaction/106/items/skill/04/deployed



#偵察
execute if entity @e[tag=106_reconnaissance_stand,limit=1] as @e[tag=106_reconnaissance_stand] at @s run function project-c:jobaction/106/items/skill/05/stand
execute if entity @p[scores={jobNumber=106,counter=1..}] as @a[scores={jobNumber=106,counter=1..}] at @s run function project-c:jobaction/106/items/skill/05/timer




#ウォール
execute if entity @e[tag=106_wall,limit=1] as @e[tag=106_wall] at @s run function project-c:jobaction/106/items/skill/06/proc



#魂の呼び声
execute if entity @e[type=minecraft:area_effect_cloud,tag=106_soul_curse,limit=1] as @e[type=minecraft:area_effect_cloud,tag=106_soul_curse] at @s run function project-c:jobaction/106/items/skill/08/proc



#ダッシュブースト
execute if entity @p[scores={jobNumber=106,counter_9=1..}] as @a[scores={jobNumber=106,counter_9=1..}] at @s run function project-c:jobaction/106/items/skill/09/proc


#ボム
execute if entity @e[type=minecraft:creeper,tag=106_bomb,limit=1] as @e[type=minecraft:creeper,tag=106_bomb] at @s run function project-c:jobaction/106/items/skill/11/fuse_timer



execute if entity @p[tag=106_skill_no_drop] as @a[tag=106_skill_no_drop] run tag @s remove 106_skill_no_drop