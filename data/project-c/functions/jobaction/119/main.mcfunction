#実行者     -> jobNumber = 119
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> スキル1の処理用に使用
#counter_2    -> 雪玉のCT
#counter_3    -> 第二スキルの魔力弾を飛ばしている時に1
#counter_4    -> 第三スキルのチャージ用スコア
#counter_5    -> 
#counter_6    -> 
#counter_7    -> 
#counter_8    -> 
#counter_9    -> 
#stockcounter -> 

scoreboard players reset @s usedSkill

execute if entity @s[tag=Battle,scores={OutCombat=240}] run function project-c:jobaction/119/replaceitem/0
execute if entity @s[tag=119_OutCombat] unless entity @s[tag=Battle,scores={OutCombat=240..}] run function project-c:jobaction/119/replaceitem/0
execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/119/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/119/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/119/replaceitem/3

execute if entity @s[scores={counter_4=1..}] run function project-c:jobaction/119/skill/3/1

execute if entity @s[nbt={SelectedItem:{tag:{119skillID:0b}}},scores={useSnowball=1..},gamemode=!spectator] run function project-c:jobaction/119/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{119skillID:1b}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/119/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{119skillID:2b}}},scores={CT2=1200..,useSnowball=1..,counter_3=0},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/119/skill/2/0-1
execute if entity @s[nbt={SelectedItem:{tag:{119skillID:2b}}},scores={useSnowball=1..,counter_3=1},gamemode=!spectator] run function project-c:jobaction/119/skill/2/0-2
execute if entity @s[nbt={SelectedItem:{tag:{119skillID:3b}}},scores={CT3=1200..,useSnowball=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/119/skill/3/0

execute if entity @s[tag=SkillDelay2] unless score @s counter_3 matches 1 run tag @s remove SkillDelay2
execute if score @s counter_2 matches 0.. run scoreboard players remove @s counter_2 1
execute if score @s counter_2 matches 0 run scoreboard players set @s useSnowball 1
execute if entity @s[scores={useSnowball=1..}] run function project-c:jobaction/119/snowball
scoreboard players reset @s[scores={sneak=1..}] sneak
