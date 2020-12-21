#実行者     -> jobNumber = 093
#実行地点   -> 実行者
#counter      -> メイン武器のCT用
#Mana         -> 
#counter_1    -> 金床/ピッケルの切り替え用
#counter_2    -> スキル1の金床のジャンプ→着地用
#counter_3    -> スキル1のピッケルのスペクテイター用
#counter_4    -> スキル1のピッケルのスペクテイターのy座標保存用
#counter_5    -> トークンの増加用スコア
#stockcounter -> トークンの個数保存用

scoreboard players reset @s usedSkill
effect give @s minecraft:dolphins_grace 11 0

execute if entity @s[scores={counter=2..}] run scoreboard players remove @s counter 1
execute if entity @s[scores={counter=1}] unless entity @s[scores={drop=1..}] run function project-c:jobaction/093/replaceitem/0
execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/093/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/093/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/093/replaceitem/3

execute if entity @s[scores={useLinger=1..}] anchored eyes positioned ^ ^ ^ if entity @e[type=potion,limit=1,sort=nearest,distance=..4,nbt={Item:{id:"minecraft:lingering_potion",tag:{CustomPotionEffects:[{Id:13b,Amplifier:93b}]}}}] run function project-c:jobaction/093/skill/0/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"トライデントスプリンクラー","color":"aqua","bold":true,"italic":false}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/093/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"トロピカルスクランブル","color":"red","bold":true,"italic":false}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/093/skill/2/0
execute if entity @s[scores={CT3=1200..,sneak=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/093/skill/3/0

execute if entity @s[scores={counter_3=1..}] unless score @s sneak matches 1.. run scoreboard players reset @s counter_3
scoreboard players reset @s[scores={useLinger=1..}] useLinger
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
