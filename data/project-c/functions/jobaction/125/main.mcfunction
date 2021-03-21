#実行者     -> jobNumber = 125
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={counter_5=1..}] run function project-c:jobaction/125/rainactbar
execute if entity @s[scores={counter_5=1..}] run effect give @s slowness 1 1 true

execute if entity @s[scores={counter_5=1..}] run particle minecraft:end_rod ~ ~1 ~ 1 1 1 0 1

execute if entity @s[scores={counter_5=1..9}] run scoreboard players add @s counter_4 1


execute if entity @s[scores={counter_4=8..}] run scoreboard players add @s counter_5 1
execute if entity @s[scores={counter_4=8..}] run scoreboard players set @s counter_4 1

execute if entity @s[scores={counter=1}] run playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 2 2
execute if entity @s[scores={counter=1..}] run scoreboard players remove @s counter 1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/125/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/125/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/125/replaceitem/3

scoreboard players add @e[tag=125bulletStand] counter 1

execute if entity @e[tag=125bulletStand,scores={counter=2..}] as @e[tag=125bulletStand,scores={counter=2..}] positioned as @s run effect clear @e[distance=..3,tag=Battle] levitation

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"フィンガーキャノン","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,counter=0,counter_5=0},gamemode=!spectator,nbt={OnGround:1b}] run function project-c:jobaction/125/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"フィンガーキャノン","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,counter=0,counter_5=0,sneak=1..},gamemode=!spectator,nbt={OnGround:0b}] run function project-c:jobaction/125/skill/0/2

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"レインボーブラスト","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT1=1200..,counter_5=0},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/125/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"レインボーブラスト","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT1=1200..,counter_5=1..},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/125/skill/1/1

replaceitem entity @s[scores={counter_2=1..}] hotbar.2 minecraft:light_weighted_pressure_plate{display:{Name:'{"text":"スターソーサー","color":"white","italic":false}',Lore:['{"text":"発動: 右クリック","color":"yellow","italic":false}','{"text":"壁反射する弾を放ち、もう一度右クリックで起動。","color":"white","italic":false}','{"text":"真芯で当てると威力が上昇する。","color":"white","italic":false}','{"text":"CT:8","color":"green","italic":false}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"スターソーサー","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT2=1200..,counter_2=0,counter_5=0},gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/125/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"スターソーサー","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT2=1200..,counter_2=1..,counter_5=0},gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/125/skill/2/2

execute if entity @s[scores={aviate=1..,CT3=1200..},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/125/skill/3/0

effect give @s jump_boost 1 0 true

execute if entity @s[scores={subcounter=1}] run effect clear @s levitation
scoreboard players remove @s[scores={subcounter=1..}] subcounter 1
execute if entity @s[scores={subcounter=1..}] run execute as @e[tag=125back,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=125,subcounter=1..},limit=1,sort=nearest] ~ ~ ~

execute if entity @s[scores={counter_3=0},tag=Battle] run attribute @s minecraft:generic.max_health base set 28
execute if entity @s[scores={counter_3=0},tag=Battle] run scoreboard players set @s counter_3 1

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={aviate=1..}] aviate
scoreboard players reset @s[scores={adDealt=1..}] adDealt