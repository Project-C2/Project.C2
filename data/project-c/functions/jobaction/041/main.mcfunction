#実行者     -> jobNumber = 041
#実行地点   -> 実行者
#counter     -> 人参棒耐久回復間隔用
#subcounter  -> 人参棒耐久保存用
#counter_1   -> スニーク時間計測用
#counter_2   -> 人参棒耐久表示用
##041-dummyS -> 作成アイテム保存用

scoreboard players reset @s usedSkill

execute if entity @s[scores={subcounter=2..}] run scoreboard players add @s counter 1
execute if entity @s[scores={subcounter=2..}] if entity @s[scores={counter=30..}] run scoreboard players remove @s subcounter 1
execute if entity @s[scores={counter=30..}] run function project-c:jobaction/041/replaceitem/0
execute if entity @s[scores={counter=30..}] run scoreboard players set @s counter 0

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/041/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/041/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/041/replaceitem/3

execute if entity @s[scores={bow=1..}] run function project-c:jobaction/041/shot

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"cardinal bow\"}"}}}},scores={CT1=1200..,bow=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/041/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"blaze bow\"}"}}}},scores={CT2=1200..,bow=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/041/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"viper\"}"}}}},scores={CT3=1200..,bow=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/041/skill/3/0

execute if entity @s[scores={sneak=1..}] unless entity @s[scores={counter_1=100..}] run scoreboard players add @s counter_1 1
execute if entity @s[scores={sneak=1..}] unless entity @s[scores={counter_1=100..}] run particle dust 1 0 0 1 ~ ~1 ~ 1.3 1.0 1.3 0 10 normal
execute if entity @s[scores={sneak=1..}] unless entity @s[scores={counter_1=100..}] run summon area_effect_cloud ~ ~1 ~ {Age:4,Duration:5,WaitTime:1,Radius:0.01,Particle:"",Effects:[{Id:2,Amplifier:3,Duration:2,ShowParticles:0b,ShowIcon:1b,Ambient:1b}]}
execute unless entity @s[scores={sneak=1..}] unless entity @s[scores={counter_1=..0}] run scoreboard players remove @s counter_1 1
execute if entity @s[scores={useCarrotStick=1..}] if entity @s[scores={counter_1=0,subcounter=..20}] run function project-c:jobaction/041/replaceitem/4
execute if entity @s[scores={useCarrotStick=1..}] if entity @s[scores={counter_1=1..49,subcounter=..19}] run function project-c:jobaction/041/replaceitem/4
execute if entity @s[scores={useCarrotStick=1..}] if entity @s[scores={counter_1=50..99,subcounter=..16}] run function project-c:jobaction/041/replaceitem/4
execute if entity @s[scores={useCarrotStick=1..}] if entity @s[scores={counter_1=100,subcounter=..12}] run function project-c:jobaction/041/replaceitem/4
execute if entity @s[scores={useCarrotStick=1..}] unless entity @s[tag=041-success] run function project-c:jobaction/041/replaceitem/4fail
execute if entity @s[tag=041-success] run tag @s remove 041-success

scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={bow=1..}] bow
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick


execute if entity @s[scores={counter_1=0}] run title @s actionbar ["",{"text":"チャージ:","bold":true,"color":"red"},{"score":{"name":"@s","objective":"counter_1"},"bold":true,"underlined":true,"color":"dark_aqua"},{"text":"   耐久値:","color":"red","bold":"true"},{"score":{"name":"@s","objective":"counter_2"},"bold":true,"underlined":true,"color":"white"},{"text":"/5","bold":"true","color":"white","underlined":"true"}]
execute if entity @s[scores={counter_1=1..49}] run title @s actionbar ["",{"text":"チャージ:","bold":true,"color":"red"},{"score":{"name":"@s","objective":"counter_1"},"bold":true,"underlined":true,"color":"red"},{"text":"   耐久値:","color":"red","bold":"true"},{"score":{"name":"@s","objective":"counter_2"},"bold":true,"underlined":true,"color":"white"},{"text":"/6","bold":"true","color":"white","underlined":"true"}]
execute if entity @s[scores={counter_1=50..99}] run title @s actionbar ["",{"text":"チャージ:","bold":true,"color":"red"},{"score":{"name":"@s","objective":"counter_1"},"bold":true,"underlined":true,"color":"dark_purple"},{"text":"   耐久値:","color":"red","bold":"true"},{"score":{"name":"@s","objective":"counter_2"},"bold":true,"underlined":true,"color":"white"},{"text":"/9","bold":"true","color":"white","underlined":"true"}]
execute if entity @s[scores={counter_1=100..}] run title @s actionbar ["",{"text":"チャージ:","bold":true,"color":"red"},{"score":{"name":"@s","objective":"counter_1"},"bold":true,"underlined":true,"color":"dark_red"},{"text":"  耐久値:","color":"red","bold":"true"},{"score":{"name":"@s","objective":"counter_2"},"bold":true,"underlined":true,"color":"white"},{"text":"/13","bold":"true","color":"white","underlined":"true"}]