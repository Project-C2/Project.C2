#スキル使用処理

scoreboard players set #106_has_skill counter -1
scoreboard players set #106_has_skill_slot counter -1
scoreboard players set #106_has_skill_ct counter -1


execute store result score #106_has_skill counter run data get entity @s SelectedItem.tag.106_skill
#execute store result score #106_has_skill_slot counter run data get entity @s SelectedItem.tag.skill_slot


#execute if score #106_has_skill_slot counter matches 1 run scoreboard players operation #106_has_skill_ct counter = @s CT1
#execute if score #106_has_skill_slot counter matches 2 run scoreboard players operation #106_has_skill_ct counter = @s CT2
#execute if score #106_has_skill_slot counter matches 3 run scoreboard players operation #106_has_skill_ct counter = @s CT3

execute if score #106_has_skill counter = @s counter_3 run scoreboard players operation #106_has_skill_ct counter = @s CT1
execute if score #106_has_skill counter = @s counter_4 run scoreboard players operation #106_has_skill_ct counter = @s CT2
execute if score #106_has_skill counter = @s counter_5 run scoreboard players operation #106_has_skill_ct counter = @s CT3


scoreboard players reset #106_has_skill_slot







#レリーヴストーン
execute if entity @s[scores={damageDealt=1..},tag=!106_relieve_used] if score #106_has_skill counter matches 1 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/01/use
execute if entity @s[scores={sneak=1..},tag=!106_relieve_used] if score #106_has_skill counter matches 1 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/01/use
execute if entity @s[scores={jump=1..},tag=!106_relieve_used] if score #106_has_skill counter matches 1 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/01/use
execute if entity @s[tag=106_relieve_used] run tag @s remove 106_relieve_used


#トリック
execute if entity @s[tag=!106_skill_no_drop,tag=!106_death_skill,scores={counter_3=2,CT1=1200..,drop2=1..}] run function project-c:jobaction/106/items/skill/02/use
execute if entity @s[tag=!106_skill_no_drop,tag=!106_death_skill,scores={counter_4=2,CT2=1200..,drop2=1..}] run function project-c:jobaction/106/items/skill/02/use
execute if entity @s[tag=!106_skill_no_drop,tag=!106_death_skill,scores={counter_5=2,CT3=1200..,drop2=1..}] run function project-c:jobaction/106/items/skill/02/use



#灯火
execute if entity @s[scores={sneak=1..}] if score #106_has_skill counter matches 3 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/03/use




#アロースプリンクラー
execute if entity @s[scores={useFungusStick=1..}] if score #106_has_skill counter matches 4 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/04/use
#セルフ展開
execute if entity @s[nbt={SelectedItem:{tag:{106_auxiliary_skill:4b}}},scores={useCarrotStick=1..}] run function project-c:jobaction/106/items/skill/04/auxiliary/use




#偵察
execute if entity @s[scores={jump=1..},tag=Battle] if score #106_has_skill counter matches 5 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/05/use





#ウォール
execute if entity @s[scores={sneak=1..}] if score #106_has_skill counter matches 6 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/06/use







#ガードフォート
execute if entity @s[scores={sneak=1..}] if score #106_has_skill counter matches 7 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/07/use





#魂の呼び声
#こいつは別枠で起動する(project-c:jobaction/106/items/change_keep)




#ダッシュブースト
execute if entity @s[scores={counter_3=9,CT1=1200..}] run function project-c:jobaction/106/items/skill/09/use_check
execute if entity @s[scores={counter_4=9,CT2=1200..}] run function project-c:jobaction/106/items/skill/09/use_check
execute if entity @s[scores={counter_5=9,CT3=1200..}] run function project-c:jobaction/106/items/skill/09/use_check





#ショートテレポート
execute if entity @s[scores={jump=1..},tag=Battle] if score #106_has_skill counter matches 10 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/10/use
#パーティクル
execute if entity @s[nbt={OnGround:1b}] if score #106_has_skill counter matches 10 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/10/particle_call





#ボム
execute if entity @s[scores={sneak=1..}] if score #106_has_skill counter matches 11 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/11/use
#起爆装置
execute if entity @s[nbt={SelectedItem:{tag:{106_auxiliary_skill:11b}}},scores={useCarrotStick=1..}] run function project-c:jobaction/106/items/skill/11/auxiliary/use




#マーカー
execute if entity @s[scores={damageDealt=1..,counter_3=12,CT1=1200..}] run function project-c:jobaction/106/items/skill/12/use
execute if entity @s[scores={damageDealt=1..,counter_4=12,CT2=1200..}] run function project-c:jobaction/106/items/skill/12/use
execute if entity @s[scores={damageDealt=1..,counter_5=12,CT3=1200..}] run function project-c:jobaction/106/items/skill/12/use





#パーフォレイトショット
execute if entity @s[scores={sneak=1..}] if score #106_has_skill counter matches 13 if score #106_has_skill_ct counter matches 1200.. run function project-c:jobaction/106/items/skill/13/use



#クイックリロード

execute if entity @s[scores={MagicFatigue=10..,counter_3=14,CT1=1200..}] run function project-c:jobaction/106/items/skill/14/use
execute if entity @s[scores={MagicFatigue=10..,counter_4=14,CT2=1200..}] run function project-c:jobaction/106/items/skill/14/use
execute if entity @s[scores={MagicFatigue=10..,counter_5=14,CT3=1200..}] run function project-c:jobaction/106/items/skill/14/use







scoreboard players reset #106_has_skill
scoreboard players reset #106_has_skill_ct





execute if entity @s[tag=106_death_skill] run tag @s remove 106_death_skill
execute if entity @s[tag=106_skill_no_drop] run tag @s remove 106_skill_no_drop