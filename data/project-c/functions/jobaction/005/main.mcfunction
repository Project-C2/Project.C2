#実行者     -> jobNumber = 5
#実行地点   -> 実行者

scoreboard players reset @s usedSkill


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/005/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/005/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/005/replaceitem/3

#tag @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"手榴弾\"}"}}}}] add hasBomb

execute if entity @s[scores={CT1=1200..,useLinger=1..},tag=SkillReady1] if entity @e[limit=1,type=minecraft:potion,nbt={Item:{id:"minecraft:lingering_potion",tag:{CustomPotionEffects:[{Id:27b,Amplifier:0b,Duration:0,ShowParticles:0b}],Potion:"minecraft:leaping"}}}] run function project-c:jobaction/005/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"爆弾設置"}'}}}},scores={CT2=1200..,sneak=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/005/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"スーパーボム"}'}}}},scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/005/skill/3/0

tag @s[nbt=!{SelectedItem:{tag:{display:{Name:'{"text":"手榴弾"}'}}}}] remove hasBomb

execute if entity @s[scores={useCarrotStick=1..,counter_1=0}] run function project-c:jobaction/005/bombexplosion

scoreboard players remove @s[scores={counter_1=1..}] counter_1 1
scoreboard players reset @s sneak
scoreboard players reset @s useLinger
scoreboard players reset @s useCarrotStick