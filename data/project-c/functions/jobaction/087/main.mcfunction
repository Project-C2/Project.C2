#実行者     -> jobNumber = 87
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/087/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/087/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/087/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"タレット","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/087/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"コネクティング","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/087/skill/2/1

execute if entity @s[scores={CT2=1200..,counter_2=0,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/087/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"クラックブラスト","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,useCarrotStick=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/087/skill/3/0


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"タレット","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..},tag=SkillReady1,gamemode=!spectator] run scoreboard players add @s counter_1 1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"タレット","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,counter_1=11..},tag=SkillReady1,gamemode=!spectator] run summon armor_stand ~ ~1 ~ {Invisible:1b,Tags:["087-line"],NoGravity:1b,Marker:1b}

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"タレット","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,counter_1=11..},tag=SkillReady1,gamemode=!spectator] run teleport @e[tag=087-line,limit=1,sort=nearest] ^ ^1 ^ ~ 0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"タレット","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,counter_1=11..},tag=SkillReady1,gamemode=!spectator] run execute as @e[tag=087-line] at @s run function project-c:jobaction/087/line

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"タレット","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,counter_1=11..},tag=SkillReady1,gamemode=!spectator] run scoreboard players set @s counter_1 0


execute if entity @s[scores={crossbow=1..},gamemode=!spectator] run replaceitem entity @s hotbar.4 minecraft:arrow

execute if entity @e[type=fireball,tag=087-Bullet] run data merge block -63 5 89 {auto:1b}

scoreboard players reset @s sneak
scoreboard players reset @s crossbow
scoreboard players set @s counter_2 0
scoreboard players reset @s useCarrotStick
scoreboard players set @s[scores={useLinger=1..}] useLinger 0