#実行者     -> jobNumber = 054
#実行地点   -> 実行者
#counter      -> スキル0のチャージ時間管理
#Mana         -> スキル0のCT管理
#counter_1    -> 
#counter_2    -> スキル2の管理
#counter_3    -> スキル3の残り時間管理
#subcounter   -> スキル3の着地前CT制御用
#stockcounter -> スキル3の残数管理

scoreboard players reset @s usedSkill
execute if entity @s[tag=JobChanged] if entity @s[scores={aviate=1..}] run scoreboard players reset @s aviate
execute if entity @s[scores={relic=2}] if entity @s[scores={CT3=1201..1280}] run scoreboard players add @s CT3 1

execute if data entity @s {OnGround:0b} run scoreboard players operation @s CT3 = @s subcounter
execute if entity @s[tag=054slow_falling] if data entity @s {OnGround:1b} run effect clear @s minecraft:slow_falling
execute if entity @s[tag=054slow_falling] if data entity @s {OnGround:1b} run tag @s remove 054slow_falling
scoreboard players operation @s subcounter = @s CT3
execute if entity @s[scores={CT3=1280..}] unless score @s stockcounter matches 3.. run function project-c:jobaction/054/charge
execute unless score @s stockcounter matches 1.. if entity @s[scores={CT3=1200..}] run function project-c:jobaction/054/charge

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/054/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/054/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/054/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"エアブラスター","color":"green","italic":false}'}}}},scores={counter=0,useCarrotStick=1..},tag=!SkillnotReady0,gamemode=!spectator] run function project-c:jobaction/054/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"エアブラスター","color":"green","italic":false}'}}}},scores={counter=1..,useCarrotStick=1..},tag=!SkillnotReady0,gamemode=!spectator] run function project-c:jobaction/054/skill/0/2
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"トルネードショック","color":"white","italic":false}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/054/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ミステリアスウィンド","color":"white","bold":true,"italic":false}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/054/skill/2/0
execute if entity @s[scores={CT3=1200..,aviate=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/054/skill/3/0

execute if score @s counter matches -2 run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.2 1
execute if score @s counter matches -2 run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.2 1
execute if score @s counter matches -2 run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.2 1
execute if score @s counter matches -2 run playsound minecraft:item.crossbow.loading_end master @s ~ ~ ~ 1.2 1
execute if score @s counter matches -2 run function project-c:jobaction/054/replaceitem/0
execute unless score @s counter matches 0.. run scoreboard players add @s counter 1
execute if entity @s[scores={counter=1..}] run function project-c:jobaction/054/skill/0/1
execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/054/skill/2/tick
execute if entity @s[scores={counter_3=1..}] run function project-c:jobaction/054/skill/3/1

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={aviate=1..}] aviate
execute if entity @s[tag=SkillnotReady0] run tag @s remove SkillnotReady0
