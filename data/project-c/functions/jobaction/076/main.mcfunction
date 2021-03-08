#実行者     -> jobNumber = 76
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/076/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/076/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/076/replaceitem/3

execute if entity @s[scores={counter_2=0,CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/076/skill/1/0

execute if entity @s[scores={subcounter=0,counter_2=1,CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/076/skill/1/2
execute if entity @s[scores={subcounter=1..,counter_2=1,sneak=0},gamemode=!spectator] run function project-c:jobaction/076/skill/1/3


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ホーリースタンス","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,jump=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/076/skill/2/0


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ジャッジメントロア","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,jump=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/076/skill/3/0

execute if entity @s[scores={counter_1=1}] at @s run attribute @s minecraft:generic.knockback_resistance base set 0
execute if entity @s[scores={counter_1=1}] at @s run effect clear @a minecraft:resistance
execute if entity @s[scores={counter_1=1..},nbt={HurtTime:9s}] at @s run function project-c:jobaction/076/skill/1/1
execute if entity @s[scores={counter_1=1..}] at @s run scoreboard players remove @s counter_1 1
execute if entity @s[scores={counter_1=1..}] at @s run particle minecraft:sweep_attack ~ ~1 ~ 0 0 0 0.4 1 force @a

execute if entity @s[scores={subcounter=1..,counter_2=1,sneak=1..},gamemode=!spectator] run particle minecraft:totem_of_undying ~ ~1 ~ 8 3 8 0 3
execute if entity @s[scores={subcounter=1..,counter_2=1,sneak=1..},gamemode=!spectator] run effect give @s resistance 1 2

execute if entity @s[scores={subcounter=1..,counter_2=1,sneak=1..},gamemode=!spectator] run execute if entity @s[team=Red,gamemode=!spectator] run effect give @a[team=Red,distance=1..16] absorption 1 0
execute if entity @s[scores={subcounter=1..,counter_2=1,sneak=1..},gamemode=!spectator] run execute if entity @s[team=Blue,gamemode=!spectator] run effect give @a[team=Blue,distance=1..16] absorption 1 0

execute if entity @s[scores={subcounter=1..,counter_2=1,sneak=1..},gamemode=!spectator,team=Red] run execute as @a[team=Red,distance=1..12] at @s run particle minecraft:firework ~ ~1 ~ 0.5 1 0.5 0 1

execute if entity @s[scores={subcounter=1..,counter_2=1,sneak=1..},gamemode=!spectator,team=Blue] run execute as @a[team=Blue,distance=1..12] at @s run particle minecraft:firework ~ ~1 ~ 0.5 1 0.5 0 1

execute if entity @s[scores={subcounter=1..,counter_2=1,sneak=1..},gamemode=!spectator,team=Red] run execute if entity @s[team=Red,gamemode=!spectator,nbt={HurtTime:9s},distance=1..16] run effect give @s instant_damage 1 0
execute if entity @s[scores={subcounter=1..,counter_2=1,sneak=1..},gamemode=!spectator,team=Blue] run execute if entity @s[team=Blue,gamemode=!spectator,nbt={HurtTime:9s},distance=1..16] run effect give @s instant_damage 1 0


scoreboard players add @s[scores={subcounter=1..}] subcounter 1
execute if entity @s[scores={subcounter=21..,counter_2=1,sneak=1..},gamemode=!spectator] run execute if entity @s[team=Red,gamemode=!spectator] run effect give @a[team=Red,distance=..16] regeneration 1 2
execute if entity @s[scores={subcounter=21..,counter_2=1,sneak=1..},gamemode=!spectator] run execute if entity @s[team=Blue,gamemode=!spectator] run effect give @a[team=Blue,distance=..16] regeneration 1 2
scoreboard players set @s[scores={subcounter=21..}] subcounter 1

execute if entity @s[scores={counter_3=1..}] at @s run scoreboard players remove @s counter_3 1
execute if entity @s[scores={counter_3=1..}] at @s run particle minecraft:crit ~ ~1 ~ 1 1 1 1 1
execute if entity @s[scores={counter_3=1..}] at @s run effect give @s absorption 1 0

execute if entity @s[scores={counter_3=1..},gamemode=!spectator,team=Red] run execute as @a[team=Blue,gamemode=!spectator,tag=Battle,distance=..10] at @s run tp @s ^ ^ ^ facing entity @a[scores={jobNumber=76,counter_3=1..},team=Red,limit=1]

execute if entity @s[scores={counter_3=1..},gamemode=!spectator,team=Blue] run execute as @a[team=Red,gamemode=!spectator,tag=Battle,distance=..10] at @s run tp @s ^ ^ ^ facing entity @a[scores={jobNumber=76,counter_3=1..},team=Blue,limit=1]

scoreboard players set @s sneak 0
scoreboard players reset @s damageDealt
scoreboard players reset @s useLinger
scoreboard players reset @s crossbow
scoreboard players reset @s jump
scoreboard players reset @s useCarrotStick
