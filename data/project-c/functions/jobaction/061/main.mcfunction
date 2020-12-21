#実行者     -> jobNumber = 61
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/061/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/061/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/061/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"火の矢\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={stockcounter=40..,useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/061/skill/0/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"チャージ済みのナノ爆弾\",\"color\":\"blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/061/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"氷の壁\",\"color\":\"light_blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/061/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"火炎放射\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/061/skill/3/0


scoreboard players add @s[scores={stockcounter=..159},gamemode=!spectator] stockcounter 1

replaceitem entity @s[scores={stockcounter=..39}] hotbar.0 minecraft:compass

replaceitem entity @s[scores={stockcounter=40..79}] hotbar.0 minecraft:blaze_powder{display:{Name:"{\"text\":\"火の矢\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"§e発動:右クリック\"}","{\"text\":\"§f効果:前方に火の矢を放つ。\"}","{\"text\":\"§aCT:2/ストック:4\"}"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 1
replaceitem entity @s[scores={stockcounter=80..119}] hotbar.0 minecraft:blaze_powder{display:{Name:"{\"text\":\"火の矢\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"§e発動:右クリック\"}","{\"text\":\"§f効果:前方に火の矢を放つ。\"}","{\"text\":\"§aCT:2/ストック:4\"}"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 2
replaceitem entity @s[scores={stockcounter=120..159}] hotbar.0 minecraft:blaze_powder{display:{Name:"{\"text\":\"火の矢\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"§e発動:右クリック\"}","{\"text\":\"§f効果:前方に火の矢を放つ。\"}","{\"text\":\"§aCT:2/ストック:4\"}"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 3
replaceitem entity @s[scores={stockcounter=160}] hotbar.0 minecraft:blaze_powder{display:{Name:"{\"text\":\"火の矢\",\"color\":\"red\",\"italic\":\"false\",\"underlined\":\"false\"}",Lore:["{\"text\":\"§e発動:右クリック\"}","{\"text\":\"§f効果:前方に火の矢を放つ。\"}","{\"text\":\"§aCT:2/ストック:4\"}"]},Enchantments:[{id:"minecraft:sharpness",lvl:0}],HideFlags:63b} 4


execute as @s[scores={counter_3=1..}] at @s run scoreboard players remove @s counter_3 1

execute as @s[scores={counter_3=1..41}] at @s anchored eyes if score #Clock counter matches 1 run summon arrow ^ ^ ^1 {damage:0.5d,Tags:["061-Bullet","061-hassummoned"],CustomName:"{\"text\":\"火炎放射\",\"color\":\"gold\"}",Color:-1,NoGravity:1b,crit:1,Fire:10s}

execute as @s[scores={counter_3=1..41}] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0


execute as @e[tag=061-hassummoned] store result score @s CT1 run data get entity @s Pos[0] 100
execute as @e[tag=061-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=61,counter_3=1..},limit=1,sort=nearest,distance=..3] Pos[0] 100
execute as @e[tag=061-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=061-hassummoned] store result entity @s Motion[0] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=061-hassummoned] store result score @s CT1 run data get entity @s Pos[1] 100
execute as @e[tag=061-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=61,counter_3=1..},limit=1,sort=nearest,distance=..3] Pos[1] 100
scoreboard players add @e[tag=061-hassummoned] counter_1 160
execute as @e[tag=061-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=061-hassummoned] store result entity @s Motion[1] double 0.05 run scoreboard players get @s CT1
execute as @e[tag=061-hassummoned] store result score @s CT1 run data get entity @s Pos[2] 100
execute as @e[tag=061-hassummoned] at @s store result score @s counter_1 run data get entity @a[scores={jobNumber=61,counter_3=1..},limit=1,sort=nearest,distance=..3] Pos[2] 100
execute as @e[tag=061-hassummoned] run scoreboard players operation @s CT1 -= @s counter_1
execute as @e[tag=061-hassummoned] store result entity @s Motion[2] double 0.05 run scoreboard players get @s CT1
tag @e[tag=061-Bullet,tag=061-hassummoned] remove 061-hassummoned
scoreboard players add @e[tag=061-Bullet] counter_2 1
execute as @e[tag=061-Bullet] at @s run particle flame ~ ~ ~ 0 0 0 0.1 5 force @a
kill @e[tag=061-Bullet,scores={counter_2=4..}]

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ENV-スーツ\",\"color\":\"blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={useCarrotStick=1..},gamemode=!spectator] run scoreboard players add @s Mana 1
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ENV-スーツ\",\"color\":\"blue\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={useCarrotStick=1..},gamemode=!spectator] run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~ 1 1
effect give @s[scores={Mana=1..}] slow_falling 1 0
effect give @s[scores={Mana=1..}] jump_boost 1 1
scoreboard players set @s[scores={Mana=2..}] Mana 0

scoreboard players reset @s sneak
scoreboard players reset @s useCarrotStick