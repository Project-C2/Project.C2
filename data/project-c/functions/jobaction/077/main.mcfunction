#実行者     -> jobNumber = 074
#実行地点   -> 実行者
#counter      -> 
#Mana         -> 
#counter_1    -> 
#counter_2    -> 
#counter_3    -> 
#subcounter   -> 
#stockcounter -> 

scoreboard players reset @s usedSkill

effect give @s minecraft:jump_boost 20 0 true
effect give @s minecraft:haste 20 0 true

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/077/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/077/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/077/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Drill Charge\",\"color\":\"yellow\",\"italic\":false}"}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/077/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"Drill Charge-release\",\"color\":\"yellow\",\"italic\":false}"}}}},scores={useCarrotStick=1..,counter_1=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/077/skill/1/1
execute if entity @s[scores={counter_1=41..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/077/skill/1/1


execute if entity @s[scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/077/skill/2/0

execute if entity @s[scores={CT3=1200..,useSnowball=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/077/skill/3/0

scoreboard players add @s[scores={counter_1=1..}] counter_1 1
#execute if entity @s[scores={counter_1=1..},gamemode=!spectator] run teleport @s @s

scoreboard players add @s[scores={counter_3=1..}] counter_3 1
execute if entity @s[scores={counter_3=11..},gamemode=!spectator] run function project-c:jobaction/077/skill/3/1


execute if entity @s[scores={subcounter=1..},team=Red] run effect give @e[team=Blue,distance=..2.6] instant_damage 1 0
execute if entity @s[scores={subcounter=1..},team=Blue] run effect give @e[team=Red,distance=..2.6] instant_damage 1 0
scoreboard players remove @s[scores={Mana=1..}] Mana 1
scoreboard players remove @s[scores={subcounter=1..}] subcounter 1
execute if entity @s[scores={Mana=1..}] run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 3 force @a
execute if entity @s[scores={Mana=1..}] run particle minecraft:block gold_block ~ ~1 ~ 1 1 1 10 10
execute if entity @s[scores={Mana=1..}] run particle end_rod ~ ~1 ~ 0 0 0 1 3
execute if entity @s[scores={Mana=1..}] run execute as @e[tag=077fire,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=77,Mana=1..},limit=1,sort=nearest] ~ ~ ~

execute if entity @s[scores={counter_2=1..,sneak=1..}] if block ^ ^ ^-1 minecraft:air run tp ^ ^ ^-1
scoreboard players remove @s[scores={counter_2=1..}] counter_2 1


scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={useSnowball=1..}] useSnowball