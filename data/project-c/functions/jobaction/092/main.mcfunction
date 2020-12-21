#実行者     -> jobNumber = 092
#実行地点   -> 実行者
#counter      -> スキル3の効果時間保存用
#Mana         -> 
#counter_1    -> 金床/ピッケルの切り替え用
#counter_2    -> スキル1の金床のジャンプ→着地用
#counter_3    -> スキル1のピッケルのスペクテイター用
#counter_4    -> スキル1のピッケルのスペクテイターのy座標保存用
#counter_5    -> トークンの増加用スコア
#stockcounter -> トークンの個数保存用

scoreboard players reset @s usedSkill

execute if entity @s[scores={sneak=1..},gamemode=!spectator] unless score @s stockcounter matches 15.. run scoreboard players add @s counter_5 10
execute if entity @s[scores={stockcounter=0..,counter_5=1..}] unless score @s sneak matches 1.. run scoreboard players remove @s counter_5 2
execute if entity @s[scores={stockcounter=1..,counter_5=..0}] run function project-c:jobaction/092/skill/4/remove
execute if entity @s[scores={counter_5=88..}] run function project-c:jobaction/092/skill/4/add

execute if entity @s[scores={counter_2=1..}] run function project-c:jobaction/092/skill/1/anvil/1
execute if entity @s[scores={counter_3=1..}] run function project-c:jobaction/092/skill/1/pickaxe/1
execute if entity @s[scores={counter_3=..-1}] run function project-c:jobaction/092/skill/1/pickaxe/4
execute if entity @s[scores={CT3=1200..},tag=Battle,gamemode=!spectator] run effect give @s minecraft:resistance 1 0 true
execute if entity @s[scores={counter=1..}] run function project-c:jobaction/092/skill/3/1


execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/092/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/092/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/092/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ジオクラッシュ","color":"gold","italic":false}'}}}},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/092/skill/1/anvil/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"アースストライク","color":"gold","italic":false}'}}},OnGround:1b},scores={CT1=1200..,useCarrotStick=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/092/skill/1/pickaxe/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"タワー・オブ・ストーンヘブン","color":"gold","bold":true,"italic":false}'}}}},scores={CT2=1200..,useCarrotStick=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/092/skill/2/0
execute if entity @s[nbt={SelectedItem:{tag:{092weapon:1b}}},scores={CT3=1200..,useCarrotStick=1..,stockcounter=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/092/skill/3/0
scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
