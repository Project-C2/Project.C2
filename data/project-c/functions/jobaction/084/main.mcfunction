#実行者     -> jobNumber = 84
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/084/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/084/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/084/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ホーミングアミュレット","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,useSnowball=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/084/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"陰陽玉","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,useSnowball=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/084/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"霊符「夢想封印」","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,useSnowball=1..,counter_4=..2},tag=SkillReady3,gamemode=!spectator,tag=Battle] run function project-c:jobaction/084/skill/3/0

execute if entity @s[scores={useSnowball=1..}] run item replace entity @s weapon.offhand with minecraft:snowball
execute if entity @s[scores={useSnowball=1..}] run kill @e[type=snowball,limit=1,sort=nearest]


scoreboard players set @s sneak 0
scoreboard players reset @s useCarrotStick
scoreboard players reset @s useSnowball