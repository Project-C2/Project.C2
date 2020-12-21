#実行者     -> jobNumber = 94
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/094/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/094/replaceitem/2
execute if entity @s[scores={CT3=1200..}] run function project-c:jobaction/094/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ベクトルマニピュレーション\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,useCarrotStick=1..,sneak=0},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/094/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ベクトルマニピュレーション\",\"color\":\"white\",\"italic\":\"false\",\"underlined\":\"false\"}"}}}},scores={CT1=1200..,useCarrotStick=1..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/094/skill/1/2

execute if entity @s[scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/094/skill/2/0

execute if entity @s[scores={stockcounter=1..,aviate=1..,Mana=0},gamemode=!spectator] run function project-c:jobaction/094/skill/3/0

execute if entity @s[scores={crossbow=1..}] run replaceitem entity @s hotbar.4 minecraft:arrow 1


execute if entity @s[nbt={OnGround:1b},scores={stockcounter=..2,counter_3=..79}] run scoreboard players add @s counter_3 1
execute if entity @s[scores={stockcounter=..2,counter_3=80..}] run scoreboard players add @s stockcounter 1
execute if entity @s[scores={counter_3=80..}] run function project-c:jobaction/094/replaceitem/3
execute if entity @s[scores={counter_3=80..}] run scoreboard players set @s counter_3 0

execute if entity @s[scores={useSnowball=1..},gamemode=!spectator] run kill @e[type=snowball,distance=..7]


execute if entity @s[scores={Mana=1..}] run execute as @e[tag=094fire,distance=..5,limit=1] at @s run teleport @a[scores={jobNumber=94,Mana=1..},limit=1,sort=nearest] ~ ~ ~

execute if entity @s[scores={Mana=1..}] run scoreboard players remove @s Mana 1


execute if entity @s[scores={sneak=1..}] run scoreboard players set @s Mana 0
execute if entity @s[scores={sneak=1..}] run kill @e[tag=094fire,distance=..5,limit=1]
execute if entity @s[scores={sneak=1..}] run effect give @s minecraft:slow_falling 1 0 true
execute if entity @s[scores={sneak=1..}] run effect clear @s minecraft:levitation

scoreboard players set @s sneak 0
scoreboard players reset @s useSnowball
scoreboard players reset @s useCarrotStick
scoreboard players reset @s crossbow
scoreboard players reset @s aviate