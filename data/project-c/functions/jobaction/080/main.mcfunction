#実行者     -> jobNumber = 80
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/080/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/080/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/080/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"機甲部隊の防衛圏","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/080/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"機甲部隊の超臨界","color":"yellow","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,tag=Battle,gamemode=!spectator] run function project-c:jobaction/080/skill/2/0

replaceitem entity @s[scores={crossbow=1..}] hotbar.4 minecraft:arrow

scoreboard players add @s[scores={counter_2=1..}] counter_2 1
execute if entity @s[scores={counter_2=1..}] run tp @s @s
execute if entity @s[scores={counter_2=21}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2
execute if entity @s[scores={counter_2=41}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2
execute if entity @s[scores={counter_2=61}] run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 3 2
execute if entity @s[scores={counter_2=81..}] run function project-c:jobaction/080/skill/2/1
execute if entity @s[scores={counter_2=1..}] run particle end_rod ~ ~1 ~ 0 0 0 1 10 force @a
execute if entity @s[scores={counter_2=1..},gamemode=spectator] run scoreboard players set @s counter_2 0

execute if entity @s[scores={counter_2=1..,deathCountExt=1..}] run scoreboard players set @s counter_2 0

execute if entity @s[team=Red,scores={CT3=1200..},tag=SkillReady3,gamemode=!spectator] run execute if entity @a[scores={deathCountExt=1..},team=Red,distance=1..] run function project-c:jobaction/080/skill/3/0
execute if entity @s[team=Blue,scores={CT3=1200..},tag=SkillReady3,gamemode=!spectator] run execute if entity @a[scores={deathCountExt=1..},team=Blue,distance=1..] run function project-c:jobaction/080/skill/3/0

scoreboard players add @s[scores={counter_3=1..}] counter_3 1
execute if entity @s[scores={counter_3=1..}] run particle minecraft:angry_villager ~ ~1 ~ 1 1 1 1 1 normal @a
execute if entity @s[scores={counter_3=141}] run effect give @s resistance 1 4
execute if entity @s[scores={counter_3=141}] run summon creeper ~ ~ ~ {CustomName:'{"text":"機甲部隊の最前線"}',ignited:1b,ExplosionRadius:1b,Fuse:0s,Invulnerable:0b,NoAI:1b,Silent:1b,powered:1b}
execute if entity @s[scores={counter_3=1..},gamemode=spectator] run scoreboard players set @s counter_3 0
execute if entity @s[scores={counter_3=141..}] run scoreboard players set @s counter_3 0

scoreboard players set @s sneak 0
scoreboard players reset @s damageDealt
scoreboard players reset @s useLinger
scoreboard players reset @s crossbow
scoreboard players reset @s jump
scoreboard players reset @s useSnowball