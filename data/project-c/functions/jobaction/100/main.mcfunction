#実行者     -> jobNumber = 100
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/100/replaceitem/1

execute if entity @s[scores={counter=1..,sneak=1..,useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/100/skill/0/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"薙ギ裂ク狂爪","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=1},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"薙ギ裂ク狂爪","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=2},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/1/2
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"薙ギ裂ク狂爪","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_1=3},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/1/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"灼キ噴ク楼焔","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_2=1},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"灼キ噴ク楼焔","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_2=2},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/2/1
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"灼キ噴ク楼焔","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_2=3},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/2/2

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"散リ殺グ礫厳","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_3=1},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/3/1
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"散リ殺グ礫厳","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_3=2},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/3/2
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"散リ殺グ礫厳","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_3=3},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/3/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"狩リ絶ツ襲牙","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_4=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/4/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"這イ舞ウ双脚","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_5=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/5/0

execute if entity @s[nbt={OnGround:1b,SelectedItem:{tag:{display:{Name:'{"text":"圧シ焼ク惨禍","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_6=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/6/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"圧シ焼ク惨禍","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_6=1..,stockcounter=1},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/6/0

execute if entity @s[scores={Mana=1..}] run function project-c:jobaction/100/skill/4/1


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"衝キ刺ス絶掌","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_7=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/7/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"断チ斬ル閃刃","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_8=1},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/8/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"断チ斬ル閃刃","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..,counter_8=2},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/100/skill/8/1

function project-c:jobaction/100/actbar

execute if entity @s[scores={adDealt=1..}] run scoreboard players add @s counter 1
execute if entity @s[scores={adDealt=1..}] run playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 2 1
execute if entity @s[scores={adDealt=1..}] run scoreboard players add @s CT1 60
execute if entity @s[scores={adDealt=1..}] run particle minecraft:dust 0 1 0 1 ~ ~1 ~ 0.3 0.3 0.3 1 10
execute if entity @s[scores={adDealt=1..,counter=9}] run scoreboard players set @s counter 1

scoreboard players remove @s[scores={subcounter=1..}] subcounter 1
execute if entity @s[scores={subcounter=1..}] run execute as @e[tag=100fire,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=100,subcounter=1..},limit=1,sort=nearest] ~ ~ ~

scoreboard players remove @s[scores={MagicFatigue=1..}] MagicFatigue 1
execute if block ^ ^ ^0.5 #project-c:wancomatter/like_air run teleport @s[scores={MagicFatigue=1..,counter_5=1}] ^ ^ ^0.5
execute if block ^ ^ ^0.7 #project-c:wancomatter/like_air run teleport @s[scores={MagicFatigue=1..,counter_5=2}] ^ ^ ^0.7
execute if block ^ ^ ^1.2 #project-c:wancomatter/like_air run teleport @s[scores={MagicFatigue=1..,counter_5=3}] ^ ^ ^1.2
execute if entity @s[scores={MagicFatigue=1..}] run particle explosion ~ ~ ~ 0 0 0 1 0 force @a
execute if entity @s[scores={MagicFatigue=1..}] run particle dust 0 0 0 2 ~ ~ ~ 1 1 1 1 4 force @a
execute if entity @s[scores={MagicFatigue=1..}] run particle dust 0 0 0 3 ~ ~ ~ 0 0 0 1 2 force @a

execute if entity @s[scores={MagicFatigue=1..,counter_5=1},team=Red] run effect give @e[team=Blue,tag=Battle,distance=..2] wither 2 3
execute if entity @s[scores={MagicFatigue=1..,counter_5=1},team=Blue] run effect give @e[team=Red,tag=Battle,distance=..2] wither 2 3
execute if entity @s[scores={MagicFatigue=1..,counter_5=2},team=Red] run effect give @e[team=Blue,tag=Battle,distance=..3] wither 3 3
execute if entity @s[scores={MagicFatigue=1..,counter_5=2},team=Blue] run effect give @e[team=Red,tag=Battle,distance=..3] wither 3 3
execute if entity @s[scores={MagicFatigue=1..,counter_5=3},team=Red] run effect give @e[team=Blue,tag=Battle,distance=..3] wither 4 3
execute if entity @s[scores={MagicFatigue=1..,counter_5=3},team=Blue] run effect give @e[team=Red,tag=Battle,distance=..3] wither 4 3

execute if entity @s[scores={stockcounter=1..}] run function project-c:jobaction/100/skill/6/1

scoreboard players set @s sneak 0
scoreboard players reset @s adDealt
scoreboard players reset @s useCarrotStick
