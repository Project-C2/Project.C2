#実行者     -> jobNumber = 62
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/062/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/062/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/062/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"人符「現世斬」\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,counter_3=140..,sneak=0},gamemode=!spectator] run particle firework ^ ^1 ^10 0.3 0.3 0.3 0.1 2 force @s

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"人符「現世斬」\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=0,counter_3=140..,sneak=0},gamemode=!spectator] run function project-c:jobaction/062/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"断命剣「冥想斬」\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,useCarrotStick=1..,sneak=0},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/062/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"人鬼「未来永劫斬」\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,useCarrotStick=1..,counter_3=280..,counter_2=30..},tag=SkillReady3,gamemode=!spectator,tag=Battle] run function project-c:jobaction/062/skill/3/0

execute if entity @s[scores={counter_1=..0,useCarrotStick=1..,counter_2=..29},gamemode=!spectator] run function project-c:jobaction/062/skill/0/0
execute if entity @s[scores={counter_1=..0,useCarrotStick=1..,counter_2=30},gamemode=!spectator] run function project-c:jobaction/062/skill/0/2

execute as @s[scores={sneak=1..},gamemode=!spectator] at @s run effect give @s slowness 1 0 true
execute as @s[scores={sneak=1..,counter_2=29},gamemode=!spectator] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 1 2
execute as @s[scores={sneak=1..,counter_2=29},gamemode=!spectator] at @s run particle firework ~ ~1 ~ 0 0 0 0.6 50 force @a
execute as @s[scores={sneak=1..,counter_2=..29},gamemode=!spectator] at @s run particle firework ~ ~1 ~ 0.3 0.3 0.3 0 1 force @a

scoreboard players remove @s[scores={counter_1=1..},gamemode=!spectator] counter_1 1
scoreboard players add @s[scores={sneak=1..,counter_1=..0,counter_2=..29},gamemode=!spectator] counter_2 1

execute as @s[scores={sneak=1..,counter_2=30..},gamemode=!spectator] at @s run title @s actionbar ["",{"text":"≪ チャージ完了 ≫","bold":true,"color":"yellow"}]

scoreboard players set @s[scores={sneak=0},gamemode=!spectator] counter_2 0

execute if entity @s[scores={Mana=..0}] run function project-c:jobaction/062/skill/4/0

scoreboard players add @s[scores={counter_3=..419},gamemode=!spectator] counter_3 1

replaceitem entity @s[scores={jobNumber=62,counter_3=..139}] hotbar.1 minecraft:compass

replaceitem entity @s[scores={jobNumber=62,counter_3=140..279}] hotbar.1 minecraft:lily_of_the_valley{display:{Name:"{\"text\":\"人符「現世斬」\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"§e発動:右クリック\"}","{\"text\":\"§f効果:前方に踏み込み相手を切り抜ける。\"}","{\"text\":\"§aCT:7/ストック:3\"}"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 1

replaceitem entity @s[scores={jobNumber=62,counter_3=280..419}] hotbar.1 minecraft:lily_of_the_valley{display:{Name:"{\"text\":\"人符「現世斬」\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"§e発動:右クリック\"}","{\"text\":\"§f効果:前方に踏み込み相手を切り抜ける。\"}","{\"text\":\"§aCT:7/ストック:3\"}"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 2

replaceitem entity @s[scores={jobNumber=62,counter_3=420}] hotbar.1 minecraft:lily_of_the_valley{display:{Name:"{\"text\":\"人符「現世斬」\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"§e発動:右クリック\"}","{\"text\":\"§f効果:前方に踏み込み相手を切り抜ける。\"}","{\"text\":\"§aCT:7/ストック:3\"}"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 3

execute if entity @s[scores={subcounter=1..}] run execute as @e[tag=062fire,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=62,subcounter=1..},limit=1,sort=nearest] ~ ~ ~


scoreboard players set @s sneak 0
scoreboard players reset @s useCarrotStick