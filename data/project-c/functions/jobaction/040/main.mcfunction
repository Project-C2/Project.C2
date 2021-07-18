#実行者     -> jobNumber = 040
#実行地点   -> 実行者
#counter_1  -> 第二の発動中検知

scoreboard players reset @s usedSkill

execute if entity @s[tag=Battle] run scoreboard players add @s counter_2 1
execute as @a[scores={jobNumber=40,CT3=1200..,counter_2=3600}] at @s run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 3 1
execute as @a[scores={jobNumber=40,CT3=1200..,counter_2=3600}] at @s run tellraw @s [{"text":"[システム] ","color":"gold"},{"text":"天地乖離す開闢の星が使用可能になりました。","color":"yellow"}]
execute as @a[scores={jobNumber=40,CT3=1200..,counter_2=3600}] at @s run tag @s remove SkillReady3

execute if entity @s[scores={counter_1=1..}] run function project-c:jobaction/040/skill/2/1
execute if entity @s[scores={counter_4=1..}] run function project-c:jobaction/040/skill/3/1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/040/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/040/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/040/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"王律鍵バヴ＝イル"}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/040/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"天の鎖"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/040/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"天地乖離す開闢の星"}'}}}},scores={CT3=1200..,sneak=1..,counter_2=3600..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/040/skill/3/0

scoreboard players reset @s sneak