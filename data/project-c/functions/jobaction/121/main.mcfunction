#実行者     -> jobNumber = 121
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/121/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/121/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/121/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"クリーンアップ\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/121/skill/1/0

execute if entity @s[scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/121/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"フードデリバリー\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/121/skill/3/0



execute if entity @s[scores={counter_3=1..},team=Red] run effect give @e[team=Blue,distance=..2.6] instant_damage 1 0
execute if entity @s[scores={counter_3=1..},team=Blue] run effect give @e[team=Red,distance=..2.6] instant_damage 1 0
execute if entity @s[scores={counter_3=1..},team=Red] run effect give @e[team=Red,distance=1..2.6] instant_health 1 0
execute if entity @s[scores={counter_3=1..},team=Blue] run effect give @e[team=Blue,distance=1..2.6] instant_health 1 0
scoreboard players remove @s[scores={counter_3=1..}] counter_3 1
execute if entity @s[scores={counter_3=1..}] run particle minecraft:block cake ~ ~1 ~ 1 1 1 10 30
execute if entity @s[scores={counter_3=1..}] run execute as @e[tag=121fire,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=121,counter_3=1..},limit=1,sort=nearest] ~ ~ ~



execute as @s[tag=121clean,scores={aviate=1..}] at @s run tag @s remove 121clean

execute if entity @e[tag=121-S1-AEC,distance=..10] run tag @s add 121clean
execute if entity @e[tag=121-S1-AEC,distance=..10] run item replace entity @s armor.chest with minecraft:elytra{display:{Name:'{"text":"Celestial Feather","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Passive: Fall Resist,Jump Boost]","color":"white","italic":false}','{"text":"[Jump: Double Jump]","color":"white","italic":false}','{"text":" "}','{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"white","italic":false}']},HideFlags:5,RepairCost:-1000,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:-0.3,Operation:1,UUIDLeast:605430,UUIDMost:320978,Slot:"chest"}],Unbreakable:1b,ItemName:Celestial_Feather,Enchantments:[{id:"minecraft:unbreaking",lvl:1s},{id:"minecraft:binding_curse",lvl:1}],CustomModelData:1} 1


execute as @s[tag=121clean,scores={aviate=1..}] at @s run execute unless entity @e[tag=121-S1-AEC,distance=..10] run item replace entity @s armor.chest with minecraft:air

scoreboard players add @s[scores={stockcounter=..2,CT2=1300..}] stockcounter 1
execute if entity @s[scores={stockcounter=..3,CT2=1300..}] run function project-c:jobaction/121/replaceitem/2
scoreboard players set @s[scores={stockcounter=..3,CT2=1300..}] CT2 1200
scoreboard players add @s[scores={CT1=..1200},nbt={OnGround:1b}] CT1 1

scoreboard players add @s[scores={counter_2=1..}] counter_2 1
execute if entity @s[scores={counter_2=1..}] anchored eyes run particle firework ^ ^ ^2 0 0 0 0 3
execute if entity @s[scores={counter_2=6..}] run function project-c:jobaction/121/skill/2/1

scoreboard players set @s sneak 0
scoreboard players reset @s damageDealt
scoreboard players reset @s jump
scoreboard players reset @s aviate
scoreboard players reset @s useCarrotStick