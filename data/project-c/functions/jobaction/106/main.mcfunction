#実行者     -> jobNumber = 106
#実行地点   -> 実行者
#counter      -> 偵察用
#Mana         -> ダッシュブーストのスニーク時間用
#counter_1    -> 選択ウェポン用
#counter_2    -> 選択サポート用
#counter_3    -> 選択スキルスロット1用
#counter_4    -> 選択スキルスロット2用
#counter_5    -> 選択スキルスロット3用
#counter_6    -> インベントリGUIのタブ用
#counter_7    -> スキルのページ切り替え用
#counter_8    -> 盾破壊時間
#counter_9    -> ダッシュブーストの時間
#subcounter   -> レリーヴストーンの耐性用
#stockounter   -> 矢の個数
#MagicFatigue   -> 矢のリロード
#sdi_d_alifetime -> サポートページ切り替え用

#以下新規作成スコア

#106-relieveD    -> レリーブヴストーンのダメージ用


scoreboard players reset @s usedSkill
execute if entity @s[scores={counter_1=..0}] run function project-c:jobaction/106/change

execute if entity @s[advancements={project-c:neac/inventory_changed=true}] run function project-c:jobaction/106/inventory_changed

execute if entity @s[scores={drop2=1..}] run function project-c:jobaction/106/drop

execute if entity @s[gamemode=!spectator] run function project-c:jobaction/106/items/skill/use_check

function project-c:jobaction/106/xp_bar/execution


#ダッシュトリガーチェンジ
execute if entity @s[scores={counter_2=3},nbt={Inventory:[{tag:{106_mode:walk}}]},predicate=project-c:neac/sprint,gamemode=!spectator] run function project-c:jobaction/106/items/support/04
execute if entity @s[scores={counter_2=3},nbt={Inventory:[{tag:{106_mode:sprint}}]},predicate=!project-c:neac/sprint,gamemode=!spectator] run function project-c:jobaction/106/items/support/04


execute if entity @s[scores={CT1=1200..},tag=!106_drop,tag=!SkillReady1] run tag @s add 106_skill_setup
execute if entity @s[scores={CT2=1200..},tag=!106_drop,tag=!SkillReady2] run tag @s add 106_skill_setup
execute if entity @s[scores={CT3=1200..},tag=!106_drop,tag=!SkillReady3] run tag @s add 106_skill_setup
execute if entity @s[tag=106_skill_setup] run function project-c:jobaction/106/items/skill/setup

#盾使用時
execute if entity @s[scores={shieldBlock=200..}] run function project-c:jobaction/106/items/support/03/break
execute if entity @s[scores={counter_8=1..}] run function project-c:jobaction/106/items/support/03/breaking


#弓、クロスボウ使用等時に矢(スコア)を減らす
execute if entity @s[scores={bow=1..}] run function project-c:jobaction/106/items/auxiliary/arrow/use/by_bow/check
execute if entity @s[scores={crossbow=1..}] run function project-c:jobaction/106/items/auxiliary/arrow/use/by_crossbow/check

#矢の自己リロード実行
execute if entity @s[scores={MagicFatigue=..-1}] run function project-c:jobaction/106/items/auxiliary/arrow/reload/self/time_limit

#矢のリロード処理
execute if entity @s[scores={MagicFatigue=1..}] run function project-c:jobaction/106/items/auxiliary/arrow/reload/counter



scoreboard players reset @s[scores={drop2=1..}] drop2
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt

scoreboard players reset @s[scores={useFungusStick=1..}] useFungusStick
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={bow=1..}] bow
scoreboard players reset @s[scores={crossbow=1..}] crossbow
scoreboard players reset @s[scores={jump=1..}] jump
scoreboard players set @s[scores={sneak=1..}] sneak 0

