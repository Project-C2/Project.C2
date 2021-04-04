#実行者     -> jobNumber = 128
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/128/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/128/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/128/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Whirlwind","color":"white","italic":false}'}}}},scores={useCarrotStick=1..,CT1=1200..},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/128/skill/1/0

execute if entity @s[scores={sneak=1..,CT2=1200..},gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/128/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"Eviscerate","color":"blue","italic":false}'}}}},scores={CT3=1200..,useCarrotStick=1..},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/128/skill/3/0

scoreboard players add @s[scores={counter_1=1..}] counter_1 1
execute if entity @s[scores={counter_1=7..},gamemode=!spectator] run function project-c:jobaction/128/skill/1/1

scoreboard players remove @s[scores={counter_3=1..}] counter_3 1
execute as @s[scores={jump=1..,counter_3=0},nbt={OnGround:0b}] at @s run tag @s add 128useElytra

execute as @s[scores={counter_3=0},tag=128useElytra,nbt={OnGround:1b}] at @s run replaceitem entity @s armor.chest minecraft:elytra{display:{Name:'{"text":"Celestial Feather","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}','{"text":"[Jump: Double Jump]","color":"white","italic":false}','{"text":" "}','{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"white","italic":false}']},HideFlags:5,RepairCost:-1000,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.maxHealth",Amount:-0.3,Operation:1,UUIDLeast:605430,UUIDMost:320978,Slot:"chest"}],Unbreakable:1b,ItemName:Celestial_Feather,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:binding_curse",lvl:1}],CustomModelData:1} 1

execute as @s[tag=128useElytra,nbt={OnGround:1b}] at @s run tag @s remove 128useElytra

execute if entity @s[scores={counter_5=1},gamemode=!spectator] run scoreboard players set @s CT2 900
scoreboard players remove @s[scores={counter_5=1..}] counter_5 1

scoreboard players remove @s[scores={counter_6=1..}] counter_6 1
execute if entity @s[scores={counter_6=1..},gamemode=!spectator] unless block ~ ~ ~ minecraft:air run effect give @s minecraft:levitation 1 1 true
execute if entity @s[scores={counter_6=1},gamemode=!spectator] run tag @s remove SkillReady2
execute if entity @s[scores={counter_6=1},gamemode=!spectator] run scoreboard players set @s counter_4 0
execute if entity @s[scores={counter_6=1},gamemode=!spectator] run scoreboard players set @s counter_5 0
execute if entity @s[scores={counter_6=1},gamemode=!spectator] run scoreboard players set @s counter_6 0

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players set @s[scores={sneak=1..}] sneak 0
scoreboard players reset @s[scores={adDealt=1..}] adDealt