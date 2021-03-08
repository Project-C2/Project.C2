#実行者     -> jobNumber = 57
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

scoreboard players remove @s[scores={counter_1=1..}] counter_1 1

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/057/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run weather clear
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/057/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/057/replaceitem/3

execute if entity @s[scores={useTrident=1..,damageDealt=0},gamemode=!spectator] run clear @s minecraft:trident
execute if entity @s[scores={counter_4=0,useTrident=1..,damageDealt=0},gamemode=!spectator] run scoreboard players set @s counter_4 10
execute if entity @s[scores={counter_4=1},gamemode=!spectator] run function project-c:jobaction/057/replaceitem/0
execute if entity @s[scores={counter_4=1..},gamemode=!spectator] run scoreboard players remove @s counter_4 1

execute if entity @s[tag=SkillReady1,scores={CT1=1200..,useTrident=1..,damageDealt=0},gamemode=!spectator] run function project-c:jobaction/057/replaceitem/1

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"リップタイド","color":"dark_blue","italic":"false","underlined":"true"}'}}}},scores={CT1=1200..,useTrident=1..,damageDealt=0},tag=SkillReady1,gamemode=!spectator] unless entity @e[type=trident,distance=..6,limit=1] run function project-c:jobaction/057/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"雨乞い","color":"dark_aqua","italic":"false","underlined":"true"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/057/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"召雷","color":"yellow","italic":"false","underlined":"true","bold":"true"}'}}}},scores={CT3=1200..},tag=SkillReady3,gamemode=!spectator] run particle end_rod ^ ^1 ^12 0.1 1 0.1 0 10 force @s
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"召雷","color":"yellow","italic":"false","underlined":"true","bold":"true"}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/057/skill/3/0

execute if entity @s[scores={counter_1=19}] run replaceitem entity @s hotbar.1 minecraft:trident{display:{Name:'{"text":"リップタイド","color":"dark_blue","italic":"false","underlined":"true"}',Lore:["§e発動:水場もしくは雨の当たる場所で右クリック","§f自身が前方へ飛び出し体当たりを行う。","§aCT:5"]},HideFlags:0,Unbreakable:1b,Enchantments:[{id:"minecraft:riptide",lvl:3}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-1929567738,-833074848,-1901992816,1177278058],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-2.4,Operation:0,UUID:[I;-1929567738,-833074848,-1901992816,1177278058],Slot:"mainhand"}]} 1



scoreboard players reset @s sneak
scoreboard players set @s damageDealt 0
scoreboard players reset @s useTrident