#実行者     -> jobNumber = 6
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/006/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/006/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/006/replaceitem/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"帰還のパール"}'}}}},scores={CT1=1200..,jump=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/006/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"帰還のゲート"}'}}}},scores={CT2=1200..,jump=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/006/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ビーコン"}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/006/skill/3/0

execute if entity @s[scores={useEnderPearl=1..}] run effect give @s minecraft:absorption 10 0 true
execute if entity @s[scores={useEnderPearl=1..}] run scoreboard players set @s[scores={counter_1=1..}] counter_1 0
execute if entity @s[scores={useEnderPearl=1..,counter_2=1..}] run scoreboard players remove @s counter_2 1
execute if entity @s[scores={useEnderPearl=1..,counter_2=1}] run item replace entity @s weapon.offhand with minecraft:ender_pearl 1
execute if entity @s[scores={useEnderPearl=1..,counter_2=2}] run item replace entity @s weapon.offhand with minecraft:ender_pearl 2

scoreboard players add @s[scores={counter_2=..2}] counter_1 1

scoreboard players add @s[scores={counter_1=120..}] counter_2 1
execute if entity @s[scores={counter_1=120..,counter_2=1}] run item replace entity @s weapon.offhand with minecraft:ender_pearl 1
execute if entity @s[scores={counter_1=120..,counter_2=2}] run item replace entity @s weapon.offhand with minecraft:ender_pearl 2
execute if entity @s[scores={counter_1=120..,counter_2=3}] run item replace entity @s weapon.offhand with minecraft:ender_pearl 3



scoreboard players set @s[scores={counter_1=120..}] counter_1 0


scoreboard players reset @s jump
scoreboard players reset @s sneak
scoreboard players reset @s useEnderPearl