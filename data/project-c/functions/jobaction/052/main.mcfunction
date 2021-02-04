# counter → 奥義ゲージ
# counter_1 → 第一による五輪剣強化
# counter_2 → 奥義待機
# counter_3 → 欠番
# counter_4 → 心空雲耀スタック
# counter_5,6,9 → 奥義ゲージ計算用
# counter_7 → 奥義終了カウント
# counter_8 → 第四奥義補正反映

#基本処理
scoreboard players reset @s usedSkill
execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/052/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/052/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/052/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"烈刀一閃","color":"white","italic":false}'}}}},scores={CT1=1200..,jump=1},tag=SkillReady1,gamemode=!spectator] unless entity @s[scores={sneak=1..}] run function project-c:jobaction/052/skill/1/0a
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"烈刀一閃","color":"white","italic":false}'}}}},scores={CT1=1200..,jump=1,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/052/skill/1/0b

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"無明斬","color":"white","italic":false}'}}}},scores={CT2=1200..,damageDealt=1..},tag=SkillReady2,gamemode=!spectator] unless entity @s[scores={sneak=1..}] run function project-c:jobaction/052/skill/2/0a
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"無明斬","color":"white","italic":false}'}}}},scores={CT2=1200..,damageDealt=1..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/052/skill/2/0b

execute if entity @s[scores={CT3=1200..,damageTaken=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/052/skill/3/0

execute if entity @s[scores={counter=100..,useEnderPearl=1..},gamemode=!spectator] run function project-c:jobaction/052/skill/4/0

#奥義計算
##3倍
scoreboard players set @s counter_9 3
##2倍
scoreboard players set @s counter_6 5
##等倍
scoreboard players set @s counter_5 10

##計算
scoreboard players operation @s[scores={damageDealt=1..,counter_4=0..1}] damageDealt /= @s[scores={damageDealt=1..}] counter_9
scoreboard players operation @s[scores={damageDealt=1..,counter_4=2..3}] damageDealt /= @s[scores={damageDealt=1..}] counter_6
scoreboard players operation @s[scores={damageDealt=1..,counter_4=4..}] damageDealt /= @s[scores={damageDealt=1..}] counter_5
scoreboard players operation @s[scores={damageTaken=1..}] damageTaken /= @s[scores={damageTaken=1..}] counter_5
scoreboard players operation @s[scores={damageDealt=1..}] counter += @s[scores={damageDealt=1..}] damageDealt
scoreboard players operation @s[scores={damageTaken=1..}] counter += @s[scores={damageTaken=1..}] damageTaken
scoreboard players set @s[scores={counter=..-1}] counter 0
scoreboard players set @s[scores={counter=201..}] counter 200

#奥義処理
replaceitem entity @s[scores={counter=100..}] weapon.offhand ender_pearl{display:{Name:'{"text":"奥義 -五輪剣-","color":"white","bold":true,"italic":false}',Lore:['{"text":"発動:メイン武器を持って右クリック ","color":"yellow","italic":false}','{"text":"力をため、前方に飛ぶ斬撃を放つ","color":"white","italic":false}','{"text":"発動すると奥義ゲージを100%する","color":"white","italic":false}','{"text":"奥義ゲージが200%の時に発動すると","color":"white","italic":false}','{"text":"全消費してさらにもう一撃放つ","color":"white","italic":false}']},HideFlags:1,Enchantments:[{id:"minecraft:efficiency",lvl:1s}]} 1
tag @s[scores={counter=100..},tag=!052-EX-1] add 052-EX-1
clear @s[scores={counter=..99}] ender_pearl{display:{Name:'{"text":"奥義 -五輪剣-","color":"white","bold":true,"italic":false}',Lore:['{"text":"発動:メイン武器を持って右クリック ","color":"yellow","italic":false}','{"text":"力をため、前方に飛ぶ斬撃を放つ","color":"white","italic":false}','{"text":"発動すると奥義ゲージを100%する","color":"white","italic":false}','{"text":"奥義ゲージが200%の時に発動すると","color":"white","italic":false}','{"text":"全消費してさらにもう一撃放つ","color":"white","italic":false}']}} 1
tag @s[tag=052-EX-1,scores={counter=..99}] remove 052-EX-1

#烈刀一閃の跳躍
execute as @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"烈刀一閃","color":"white","italic":false}'}}}}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:dust,Duration:2,Age:-1,WaitTime:-1,Effects:[{Id:8b,Amplifier:4b,Duration:2,ShowParticles:0b}]}
execute as @a[tag=052-1,nbt={OnGround:0b}] at @s run summon area_effect_cloud ~ ~ ~ {Particle:dust,Duration:2,Age:-1,WaitTime:-1,Effects:[{Id:8b,Amplifier:4b,Duration:2,ShowParticles:0b}]}

#奥義ゲージ表示
title @s[scores={counter=..99}] actionbar ["",{"text":"\u5965\u7fa9:","bold":true,"underlined":true,"color":"gray"},{"score":{"name":"@s","objective":"counter"},"bold":true,"underlined":true,"color":"gray"},{"text":"%","bold":true,"underlined":true,"color":"gray"}]
title @s[scores={counter=100..199}] actionbar ["",{"text":"\u5965\u7fa9:","bold":true,"underlined":true,"color":"yellow"},{"score":{"name":"@s","objective":"counter"},"bold":true,"underlined":true,"color":"yellow"},{"text":"%","bold":true,"underlined":true,"color":"yellow"}]
title @s[scores={counter=200}] actionbar ["",{"text":"\u5965\u7fa9:","bold":true,"underlined":true,"color":"dark_red"},{"score":{"name":"@s","objective":"counter"},"bold":true,"underlined":true,"color":"dark_red"},{"text":"%","bold":true,"underlined":true,"color":"dark_red"}]

#秒数カウント減算処理
scoreboard players remove @s[scores={counter_1=1..}] counter_1 1

#剣禅一如効果
execute if entity @a[scores={CT3=1200..}] as @s run effect give @s minecraft:strength 1 1 false
execute if entity @a[scores={CT3=1200..}] as @s run effect give @s minecraft:speed 1 0 false
function project-c:general/effect/strengtheffection

#心空雲耀効果


#リセット
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={fall=1..}] fall
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
scoreboard players reset @s[scores={damageTaken=1..}] damageTaken
scoreboard players reset @s[scores={jump=1..}] jump
scoreboard players reset @s[scores={useEnderPearl=1..}] useEnderPearl