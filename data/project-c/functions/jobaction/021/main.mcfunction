#実行者     -> jobNumber = 021
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

function project-c:jobaction/021/reloadactbar

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/021/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/021/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/021/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"レッドナイン","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..,counter_1=..5},gamemode=!spectator] run function project-c:jobaction/021/skill/0/0

execute if score @s usingItem matches 1.. run scoreboard players add @s counter_5 1

execute if score @s counter_5 matches 1 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 0.5
execute if score @s counter_5 matches 20 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 0.75
execute if score @s counter_5 matches 40 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 2 1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"バルカンショットガン","color":"white","italic":"false","underlined":"false"}'}}}},scores={counter_5=1..,usingItem=0},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/021/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"コック","color":"white","italic":"false","underlined":"false"}'}}}},scores={sneak=1..,CT2=1210..},tag=Battle,gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/021/skill/2/0

execute if entity @s[scores={CT3=1200..,sneak=1..},gamemode=!spectator] unless score @s counter_3 matches 1.. if data entity @s {OnGround:1b} run tag @s add use
execute if entity @s[scores={sneak=1..},gamemode=!spectator] run scoreboard players reset @s sneak
execute if entity @s[tag=use] run function project-c:jobaction/021/skill/3/1

execute if entity @s[tag=sliding_boots_use] if score @s counter_3 matches 19 run function project-c:jobaction/021/skill/3/2
execute if entity @s[tag=sliding_boots_use] if score @s counter_3 matches 13..18 run tag @s add now
execute if entity @s[tag=now] if score @s counter_3 matches 13..18 as @e[tag=sliding_boots_AEC] if score @s playerNumber = @e[tag=now,limit=1] playerNumber facing entity @s feet rotated ~ 0 positioned ^ ^ ^0.01 run summon area_effect_cloud ~ ~0.2 ~ {Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:17,NoAI:1b,Health:0f}]}
execute if entity @s[tag=now] run tag @s remove now
execute if entity @s[tag=sliding_boots_use] if score @s counter_3 matches 13.. if entity @s[scores={jump=1..}] run tp @s @s
execute if entity @s[tag=sliding_boots_use] if score @s counter_3 matches 13 run scoreboard players set @s CT3 1140
execute if score @s counter_3 matches 3 run playsound minecraft:block.shulker_box.close master @s ~ ~ ~ 0.6 2
execute if score @s counter_3 matches 1.. run scoreboard players remove @s counter_3 1
execute if score @s counter_3 matches ..0 run scoreboard players reset @s counter_3

execute if score @s counter_6 matches 1 run scoreboard players set @s counter_1 0

execute if score @s counter_6 matches 1 run particle minecraft:crit ~ ~1 ~ 0.4 0.4 0.4 1 10
execute if score @s counter_6 matches 1 run playsound minecraft:block.iron_door.close master @a ~ ~ ~ 2 1
execute if score @s counter_6 matches 1.. run scoreboard players remove @s counter_6 1



scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={useSnowball=1..}] useSnowball
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={jump=1..}] jump
scoreboard players reset @s[scores={adDealt=1..}] adDealt
scoreboard players set @s[scores={usingItem=1..}] usingItem 0