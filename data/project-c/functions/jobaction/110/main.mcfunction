#実行者     -> jobNumber = 110
#実行地点   -> 実行者
#counter      -> メイン武器のCT管理用
#Mana         -> 
#counter_1    -> メイン武器のスキル番号
#counter_2    -> スキル1のスキル番号
#counter_3    -> スキル2のスキル番号
#counter_4    -> スキル3のスキル番号
#counter_5    -> インベントリGUIの選択種類
#counter_6    -> インベントリGUIの選択ページ(武器)
#counter_7    -> インベントリGUIの選択ページ(加護)
#counter_8    -> インベントリGUIの選択ページ(魔法)
#counter_9    -> 加護のスキル番号
#subcounter   -> インベントリGUIの魔法でスロット選択する時の何か
#stockcounter -> 彫刻刀のストック用

scoreboard players reset @s usedSkill

execute if score @s relic matches 2 if score @s counter matches 2.. run scoreboard players remove @s counter 1

execute if score @s counter matches 1.. run function project-c:jobaction/110/ct_weapon
execute unless score @s counter_5 matches 1..3 run function project-c:jobaction/110/first
execute if entity @s[scores={drop2=1..},tag=!110drop] run function project-c:jobaction/110/skills/13/check
execute if entity @s[scores={drop2=1..},tag=!110drop] run function project-c:jobaction/110/skills/16/check_drop
execute if entity @s[scores={drop2=1..}] run tag @s add 110drop
execute if entity @s[tag=!Battle,advancements={project-c:neac/inventory_changed=true}] run function project-c:jobaction/110/inventory_changed
execute if entity @s[tag=110drop] unless entity @s[scores={drop2=1..}] run tag @s remove 110drop

#彫刻のストック用
execute if entity @s[scores={counter_1=3}] run function project-c:jobaction/110/weapons/3/p_tick
#コンポジットボウの発射処理
execute if entity @s[scores={counter_1=4,bow=1..}] run function project-c:jobaction/110/weapons/4/shot
#自動ボウガンの発射処理
execute if entity @s[scores={counter_1=5,crossbow=1..}] run function project-c:jobaction/110/weapons/5/shot
#ネプチューンの発射処理
execute if entity @s[scores={counter_1=6,useTrident=1..}] unless score @s damageDealt matches 1.. run function project-c:jobaction/110/weapons/6/0

#加護
execute if entity @s[scores={counter_9=2}] run function project-c:jobaction/110/bless/2
execute if entity @s[scores={counter_9=4}] run function project-c:jobaction/110/bless/4
execute if entity @s[scores={counter_9=5}] run function project-c:jobaction/110/bless/5
execute if entity @s[scores={counter_9=7}] run function project-c:jobaction/110/bless/7
execute if entity @s[scores={counter_9=9}] run effect give @s minecraft:jump_boost 3 1 true

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/110/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/110/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/110/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{110weapon:1b,110weaponID:3b}}}] if score @s stockcounter matches 1.. run function project-c:jobaction/110/weapons/3/highlight
execute if entity @s[nbt={SelectedItem:{tag:{110weapon:1b,110weaponID:5b}},Inventory:[{tag:{110ArrowItem:1b}}]},scores={sneak=1..}] unless score @s counter matches 1.. run function project-c:jobaction/110/weapons/5/p_charge
execute if score @s sneak matches 1.. unless entity @s[nbt={SelectedItem:{tag:{110weapon:1b,110weaponID:5b}},Inventory:[{tag:{110ArrowItem:1b}}]}] run scoreboard players reset @s sneak
execute if entity @s[scores={useCarrotStick=1..}] run function project-c:jobaction/110/use_rod
execute if entity @s[scores={useLinger=1..}] run function project-c:jobaction/110/use_linger
execute if entity @s[scores={sneak=1..,counter=1..}] run scoreboard players reset @s sneak
execute if entity @s[scores={sneak=1..},predicate=!project-c:wnkm_job/is_sneaking] if entity @s[nbt={SelectedItem:{tag:{110weapon:1b,110weaponID:5b}}}] run function project-c:jobaction/110/weapons/5/p_cancel
execute if entity @s[scores={sneak=1..},predicate=!project-c:wnkm_job/is_sneaking] run scoreboard players reset @s sneak
execute if entity @s[tag=110aqua_gun_using] if data entity @s {SelectedItem:{tag:{110skillID:16b}}} run function project-c:jobaction/110/skills/16/check
execute if entity @s[scores={crossbow=1..}] run scoreboard players set @s crossbow 0
execute if entity @s[scores={bow=1..}] run scoreboard players set @s bow 0
execute if entity @s[scores={useTrident=1..}] run scoreboard players reset @s useTrident
execute if entity @s[scores={damageDealt=1..}] run scoreboard players reset @s damageDealt
execute if entity @s[scores={drop2=1..}] run scoreboard players reset @s drop
