#実行者     -> jobNumber = 031
#実行地点   -> 実行者
#counter    -> メイン武器のスキルCT
#subcounter -> 吸血ゲージ
#counter_1  -> 第一の浮遊用
#counter_2  -> 第三スキル用
#counter_3  -> メイン武器スキルのキル判定用
scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/031/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/031/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/031/replaceitem/3

execute if entity @a[tag=031-0tDeath] as @a[tag=031-0tDeath,nbt={Health:0.0f}] run function project-c:jobaction/031/skill/0/2
execute if entity @a[tag=031-0tDeath1] run tag @a[tag=031-0tDeath1] remove 031-0tDeath
execute if entity @a[tag=031-0tDeath1] run tag @a[tag=031-0tDeath1] remove 031-0tDeath1
execute if entity @a[tag=031-0tDeath] run tag @a[tag=031-0tDeath] add 031-0tDeath1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Short Flight\",\"italic\":false,\"color\":\"aqua\"}"}}}},scores={CT1=1200..,useCarrotStick=1..,subcounter=2..},tag=SkillReady1,gamemode=!spectator] at @s anchored feet if block ^ ^ ^1 air anchored eyes if block ^ ^ ^1 air anchored feet run function project-c:jobaction/031/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Short Flight\",\"italic\":false,\"color\":\"aqua\"}"}}}},scores={CT1=1200..,subcounter=2..},tag=SkillReady1,gamemode=!spectator] at @s anchored eyes run particle minecraft:dust 0.33 0 0 0.4 ^ ^ ^2 0.01 0.01 0.01 1 8 normal @s
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Necro Bat\",\"italic\":false,\"color\":\"light_purple\"}"}}}},scores={CT2=1200..,useCarrotStick=1..,subcounter=18..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/031/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Blood Moon\",\"italic\":false,\"color\":\"light_purple\"}"}}}},scores={CT2=1200..,useCarrotStick=1..,subcounter=10..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/031/skill/2/4


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Bloody Bandage\",\"color\":\"dark_red\",\"bold\":true}"}}}},scores={CT3=1200..,useCarrotStick=1..,subcounter=35..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/031/skill/3/01
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Bloody Force\",\"color\":\"dark_red\",\"bold\":true}"}}}},scores={CT3=1200..,useCarrotStick=1..,subcounter=45..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/031/skill/3/02


execute if entity @s[nbt={SelectedItem:{tag:{031S3:1b}}},scores={drop2=1..},gamemode=!spectator] unless entity @s[tag=!SkillReady2,tag=!SkillReady3] run function project-c:jobaction/031/skill/3/-

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Blood Blade\",\"color\":\"dark_red\",\"underlined\":true}"}}}},scores={counter=..0,useCarrotStick=1..,subcounter=5..},gamemode=!spectator] run function project-c:jobaction/031/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Blood Blade\",\"color\":\"dark_red\",\"underlined\":true}"}}}},scores={counter=..0,damageDealt=1..},gamemode=!spectator] run scoreboard players operation @s damageDealt /= #031-15 counter
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Blood Blade\",\"color\":\"dark_red\",\"underlined\":true}"}}}},scores={counter=..0,damageDealt=1..},gamemode=!spectator] run scoreboard players operation @s subcounter += @s damageDealt
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Blood Blade\",\"color\":\"dark_red\",\"underlined\":true}"}}}},scores={counter=..0,damageDealt=1..},gamemode=!spectator] run scoreboard players reset @s damageDealt
execute if entity @s[scores={subcounter=101..}] run scoreboard players set @s subcounter 100
execute if entity @s[scores={counter=0..}] run function project-c:jobaction/031/replaceitem/0b

execute if entity @s[scores={counter_1=1}] run effect clear @s minecraft:levitation
execute if entity @s[scores={counter_1=1..}] run scoreboard players remove @s counter_1 1
execute if entity @s[scores={damageTaken=1..},team=Red,nbt=!{ActiveEffects:[{Id:20b}]}] if entity @a[distance=..6,tag=Battle,gamemode=!spectator,team=Blue,nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:smite"}]}}}] run effect give @s wither 2 2
execute if entity @s[scores={damageTaken=1..},team=Blue,nbt=!{ActiveEffects:[{Id:20b}]}] if entity @a[distance=..6,tag=Battle,gamemode=!spectator,team=Red,nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:smite"}]}}}] run effect give @s wither 2 2

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
scoreboard players reset @s[scores={damageTaken=1..}] damageTaken
effect clear @s[scores={sneak=..0}] slow_falling
scoreboard players reset @s[scores={sneak=..0}] sneak
effect give @s[scores={sneak=1..}] minecraft:slow_falling 1 0 true
scoreboard players set @s[scores={sneak=1..}] sneak 0
title @s actionbar [{"text":"吸血ゲージ","color":"red","underlined":true,"bold":true},{"text":":","color":"gold","underlined":false},{"score":{"name":"@s","objective":"subcounter"},"color":"dark_red"}]

scoreboard players reset @s[scores={drop2=1..}] drop2
