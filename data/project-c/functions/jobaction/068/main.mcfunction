#実行者     -> jobNumber = 68
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/068/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/068/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/068/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ビーコンガン\",\"color\":\"gray\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={counter_1=0,useSnowball=1..},gamemode=!spectator] run function project-c:jobaction/068/skill/0/0


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"戦闘爆撃機KM6 プランX9\",\"color\":\"gray\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,useSnowball=1..},gamemode=!spectator] run function project-c:jobaction/068/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"バルジレーザー照射モードZ\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/068/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"重爆撃機フォボスZ プラン4\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,useSnowball=1..,counter_4=100..},tag=SkillReady3,gamemode=!spectator,tag=Battle] run function project-c:jobaction/068/skill/3/0

replaceitem entity @s[scores={useSnowball=1..,counter_1=0}] weapon.offhand minecraft:snowball
replaceitem entity @s[scores={counter_1=1}] weapon.offhand minecraft:snowball
scoreboard players remove @s[scores={counter_1=1..}] counter_1 1

scoreboard players add @s[scores={counter_4=..99},tag=Battle] counter_4 1

execute as @e[tag=068-beong] at @s run scoreboard players add @s counter 1
execute as @e[tag=068-beong,scores={counter=20..}] at @s run kill @s

scoreboard players set @s sneak 0
scoreboard players reset @s crossbow
scoreboard players reset @s useSnowball