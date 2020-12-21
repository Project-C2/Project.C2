#実行者     -> jobNumber = 102
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> チェストを出しているかどうか検知
#counter_2    -> スケルトンのHP保持用
#counter_3    -> 第三スキルのチャージ検知
#counter_4    -> 第三スキル
#counter_5    -> 第三スキル
#subcounter   -> スケルトンのHP保持用


scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/102/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/102/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/102/replaceitem/3

execute if entity @s[scores={counter_4=1020..}] run function project-c:jobaction/102/skill/3/1
tag @s add user
execute if entity @e[tag=102skeleton,limit=1] as @e[tag=102skeleton] if score @s playerNumber = @a[tag=user,limit=1,sort=nearest] playerNumber run tag @s add 102skeleton_mine
tag @s remove user

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"スケルポン","color":"gold","bold":true,"italic":false}'}}},OnGround:1b},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/102/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"エンダースワップ","color":"dark_purple","italic":false}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/102/skill/2/0
execute if entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:'{"text":"1002J","color":"dark_red","bold":true,"underlined":true,"italic":false}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/102/skill/3/0

execute if entity @e[tag=102skeleton_mine,limit=1] store result score @s counter_2 run data get entity @e[tag=102skeleton_mine,limit=1] Health 10
execute if entity @e[tag=102skeleton_mine,limit=1] run scoreboard players operation @s subcounter = @s counter_2
execute if entity @e[tag=102skeleton_mine,limit=1] run scoreboard players operation @s counter_2 /= #10 counter
execute if entity @e[tag=102skeleton_mine,limit=1] run scoreboard players operation @s subcounter %= #10 counter
#execute if entity @e[tag=102skeleton_mine,limit=1] run title @s actionbar [{"text":"≪スケルトンHP: ","color":"#bbbbbb","underlined":true,"bold":true},{"entity":"@e[tag=102skeleton_mine,limit=1]","nbt":"Health"},{"text":"≫"}]
execute if entity @e[tag=102skeleton_mine,limit=1] run title @s actionbar [{"text":"≪スケルトンHP: ","color":"#bbbbbb","underlined":true,"bold":true},{"score":{"name":"@s","objective":"counter_2"}},{"text":"."},{"score":{"name":"@s","objective":"subcounter"}},{"text":"≫"}]
execute if entity @e[tag=102skeleton_mine,limit=1] run tag @e[tag=102skeleton_mine] remove 102skeleton_mine

execute if entity @s[scores={useCarrotStick=1..}] run function project-c:jobaction/102/skill/c/0
scoreboard players reset @s[scores={sneak=1..}] sneak

execute unless score @s[tag=Battle] counter_3 matches 1801.. run scoreboard players add @s counter_3 1
execute if entity @s[scores={counter_3=1800}] run function project-c:jobaction/102/skill/3/useable