#実行者     -> jobNumber = 048
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

function project-c:jobaction/048/actbar

scoreboard players add @s[scores={Mana=..1000}] Mana 1

execute if entity @s[scores={counter_6=1..}] run scoreboard players add @s[scores={Mana=..1000}] Mana 1
execute if entity @s[scores={counter_6=1..}] run scoreboard players remove @s counter_6 1

execute if entity @s[scores={counter_5=1..}] run function project-c:jobaction/048/skill/3/p

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/048/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/048/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/048/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"フェアリークリスタル","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/048/skill/0/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"エレメンタルエクスチェンジ","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..,CT1=1200..},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/048/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"スプレッドフェザー","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..,CT2=1200..},gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/048/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"エーテルブラスト","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..,CT3=1200..},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/048/skill/3/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"アストラルハーツ","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..},gamemode=!spectator] run function project-c:jobaction/048/skill/4/0


execute if entity @s[scores={subcounter=1,sneak=0}] unless block ~ ~-1 ~ #project-c:wancomatter/like_air run effect give @s minecraft:levitation 1 0 true
execute if entity @s[scores={subcounter=1,sneak=0}] if block ~ ~-1 ~ #project-c:wancomatter/like_air run effect clear @s minecraft:levitation
execute if entity @s[scores={subcounter=1,sneak=0}] if block ~ ~-1 ~ #project-c:wancomatter/like_air run effect give @s minecraft:slow_falling 1 0 true

execute if entity @s[scores={subcounter=1,sneak=0}] unless block ~ ~-1.5 ~ #project-c:wancomatter/like_air run effect give @s minecraft:levitation 1 0 true
execute if entity @s[scores={subcounter=1,sneak=0}] if block ~ ~-1.5 ~ #project-c:wancomatter/like_air run effect clear @s minecraft:levitation
execute if entity @s[scores={subcounter=1,sneak=0}] if block ~ ~-1.5 ~ #project-c:wancomatter/like_air run effect give @s minecraft:slow_falling 1 0 true

execute if entity @s[scores={subcounter=1,sneak=1..}] run effect clear @s minecraft:levitation

execute if entity @s[scores={counter_7=0}] run scoreboard players set @s Mana 1000
execute if entity @s[scores={counter_7=0}] run scoreboard players set @s counter_7 1

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players set @s[scores={sneak=1..}] sneak 0
scoreboard players reset @s[scores={adDealt=1..}] adDealt