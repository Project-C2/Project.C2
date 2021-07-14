#実行者     -> jobNumber = 132
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 第三スキル用のあれこれ
#counter_2    -> 
#counter_3    -> 
#subcounter   -> 
#stockcounter -> 

execute if entity @s[tag=132-1-flag] run effect clear @s levitation
execute if entity @s[tag=132-1-flag] run tag @s remove 132-1-flag
scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/132/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/132/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/132/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ワイルドセンス","color":"green","italic":false}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/132/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ハウリングストーム","color":"green","italic":false}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/132/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"守護者の岩拳","color":"dark_green","bold":false,"italic":false}'}}}},scores={counter_3=0,counter_4=0,useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/132/skill/3/0

execute if entity @s[scores={counter_1=1..}] run particle dust 0 1 0 1 ~ ~1 ~ 0.3 0.5 0.3 1 20 force @a
execute if entity @s[scores={counter_1=1..}] run scoreboard players remove @s counter_1 1

execute if score @s HP >= @s HarfHP run effect give @s minecraft:resistance 1 0 true
execute if score @s HP >= @s HarfHP run particle dust 0 1 0 1 ~ ~1 ~ 0.3 0.5 0.3 1 1 force @a

execute if entity @s[scores={counter_3=1..}] run scoreboard players add @s counter_3 1
execute if entity @s[scores={counter_3=21..}] run function project-c:jobaction/132/skill/3/1

item replace entity @s[scores={counter_4=1}] hotbar.0 with minecraft:lily_pad{display:{Name:'{"text":"守護者の岩拳","color":"dark_green","bold":false,"italic":false}',Lore:['{"text":"バーストナックル/発動:右クリック","color":"yellow","italic":false}','{"text":"前方に強力なダメージを与える。","color":"white","italic":false}','{"text":"CT:7","color":"yellow","italic":false}']},Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"132",Amount:2d,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"132",Amount:2.0,Operation:0,UUID:[I;299986444,-83341408,-1118315636,-202831998],Slot:"mainhand"}],HideFlags:1b,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1
execute if entity @s[scores={counter_4=1..}] run scoreboard players remove @s counter_4 1

scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick