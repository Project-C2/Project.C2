#実行者     -> jobNumber = 099
#実行地点   -> 実行者
#counter      -> 武器特殊効果クールダウン用
#Mana         -> 
#counter_1    -> phase2 skill1用
#counter_2    -> phase4 武器用
#counter_3    -> phase用
#counter_4    -> フォームチェンジ用
#counter_5    -> phase進行用
#stockcounter -> 

#追加スコア
#099-S2-APN   -> パンドラボックス判定用

scoreboard players reset @s usedSkill

execute if score @s counter matches 0.. run scoreboard players remove @s counter 1

execute if score @s counter_3 matches 5.. run scoreboard players set @s counter_3 4
execute unless score @s counter_4 matches 1.. run scoreboard players set @s counter_4 1


execute if entity @s[scores={OutCombat=..239}] run scoreboard players add @s counter_5 100
execute if entity @s[scores={OutCombat=..239},tag=099-S2-in-area-own] run scoreboard players add @s counter_5 20
execute if entity @s[scores={OutCombat=240..,counter_5=1..}] run scoreboard players remove @s counter_5 500
execute if entity @s[scores={playerKills=1..}] run function project-c:jobaction/099/player_kill
function project-c:jobaction/099/xp_bar/execution

execute if entity @s[scores={counter_3=..3}] if score @s counter_5 > #job99_phase_shift counter run function project-c:jobaction/099/phase_shift
execute if entity @s[scores={counter_3=4..,counter_5=1..}] run scoreboard players reset @s counter_5
execute if entity @s[scores={counter_5=..-1}] run scoreboard players set @s counter_5 0


execute if entity @s[tag=099-S1-P3-tp] run function project-c:jobaction/099/skill/1/phase3/1


execute if entity @e[tag=099-S2-P-outside-F2,limit=1] as @e[tag=099-S2-P-outside-F2] run effect clear @s levitation
execute if entity @e[tag=099-S2-P-outside-F2,limit=1] as @e[tag=099-S2-P-outside-F2] run effect clear @s slow_falling
execute if entity @e[tag=099-S2-P-outside-F2,limit=1] as @e[tag=099-S2-P-outside-F2] run tag @s remove 099-S2-P-outside-F2
execute if entity @e[tag=099-S2-P-outside-F,limit=1] as @e[tag=099-S2-P-outside-F] run tag @s add 099-S2-P-outside-F2
execute if entity @e[tag=099-S2-P-outside-F,limit=1] as @e[tag=099-S2-P-outside-F] run tag @s remove 099-S2-P-outside-F

execute if entity @e[tag=099-W-P2-A-resistance,limit=1] as @e[tag=099-W-P2-A-resistance] run effect clear @s resistance
execute if entity @e[tag=099-W-P2-A-resistance,limit=1] as @e[tag=099-W-P2-A-resistance] run tag @s remove 099-W-P2-A-resistance


execute if entity @s[scores={counter=60,counter_4=1}] run function project-c:jobaction/099/replaceitem/0-1


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/099/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/099/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/099/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{job99sp:1b}}},scores={CT1=1200..,counter_4=1,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/099/skill/1/phase1/0

execute if entity @s[nbt={SelectedItem:{tag:{job99sp:2b}}},scores={CT1=1200..,counter_4=2,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/099/skill/1/phase2/0
execute if score @s counter_1 matches 1.. run function project-c:jobaction/099/skill/1/phase2/1

execute if entity @s[nbt={SelectedItem:{tag:{job99sp:3b}}},scores={CT1=1200..,counter_4=3,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/099/skill/1/phase3/0

execute if entity @s[nbt={SelectedItem:{tag:{job99sp:4b}}},scores={CT1=1200..,counter_4=4..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/099/skill/1/phase4/0



execute if entity @s[scores={counter=0}] run function project-c:jobaction/099/replaceitem/0-1

execute if entity @s[nbt={SelectedItem:{tag:{099weapon:1b}}},scores={counter=..0,counter_4=1,useSnowball=1..},gamemode=!spectator] run function project-c:jobaction/099/skill/0/phase1/0

execute if entity @s[nbt={SelectedItem:{tag:{099weapon:1b}}},scores={counter=..0,counter_4=2,damageDealt=1..},gamemode=!spectator] run function project-c:jobaction/099/skill/0/phase2/0

execute if entity @s[nbt={SelectedItem:{tag:{099weapon:1b}}},scores={counter=..0,counter_4=3,damageDealt=1..},gamemode=!spectator] run function project-c:jobaction/099/skill/0/phase3/0

execute if entity @s[nbt={SelectedItem:{tag:{099weapon:1b}}},scores={counter=..0,counter_4=4,useSnowball=1..},tag=Battle,gamemode=!spectator] run function project-c:jobaction/099/skill/0/phase4/0
execute if score @s counter_2 matches 1.. run function project-c:jobaction/099/skill/0/phase4/1




execute if entity @s[nbt={SelectedItem:{tag:{job99_skill:2b}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/099/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{job99_skill:3b}}},scores={CT3=1200..,useSnowball=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/099/skill/3/0





execute if entity @s[scores={counter_3=4..}] run effect give @s speed 1 0 true

execute if entity @s[scores={useSnowball=1..}] run kill @e[type=snowball,distance=..5,limit=1,sort=nearest]
execute if entity @s[scores={useSnowball=1..}] run item replace entity @s weapon.offhand with minecraft:snowball 1
scoreboard players reset @s[scores={useSnowball=1..}] useSnowball
scoreboard players reset @s[scores={playerKills=1..}] playerKills
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
scoreboard players reset @s[scores={sneak=1..}] sneak
#execute if entity @s[tag=099-S2-in-area-own] run say a
execute if entity @s[tag=099-S2-in-area-own] run tag @s remove 099-S2-in-area-own
execute if entity @s[tag=099_death] run scoreboard players set @s OutCombat 500
execute if entity @s[tag=099_death] run tag @s remove 099_death