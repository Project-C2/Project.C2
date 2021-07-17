#実行者     -> jobNumber = 017
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/017/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/017/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/017/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"セットサークル","color":"white","italic":"false","underlined":"false"}'}}}},scores={sneak=1..,CT1=1200..},gamemode=!spectator,tag=SkillReady1] run function project-c:jobaction/017/skill/1/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..,CT2=1200..},gamemode=!spectator,tag=SkillReady2] run function project-c:jobaction/017/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"ウェイクアップ","color":"white","italic":"false","underlined":"false"}'}}}},scores={useCarrotStick=1..,CT3=1200..},gamemode=!spectator,tag=SkillReady3] run function project-c:jobaction/017/skill/3/0

execute if entity @s[scores={CT2=1280..,counter_2=0}] run item replace entity @s hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4/ストック4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 1

execute if entity @s[scores={CT2=1280..,counter_2=1}] run item replace entity @s hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4/ストック4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 2

execute if entity @s[scores={CT2=1280..,counter_2=2}] run item replace entity @s hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4/ストック4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 3

execute if entity @s[scores={CT2=1280..,counter_2=3}] run item replace entity @s hotbar.2 with minecraft:fire_coral_fan{display:{Name:'{"text":"イノセントインフェルノ","color":"white","italic":"false","underlined":"false"}',Lore:['{"text":"§e発動:右クリック"}','{"text":"§f数秒後に発射される火炎弾を打ち出す。"}','{"text":"§aCT:4/ストック4"}']},HideFlags:63,Enchantments:[{id:"minecraft:infinity",lvl:1}]} 4

scoreboard players add @s[scores={CT2=1280..,counter_2=..3},gamemode=!spectator] counter_2 1
scoreboard players set @s[scores={CT2=1280..,counter_2=..3},gamemode=!spectator] CT2 1200

execute if entity @e[tag=017-Infelno] as @e[tag=017-Infelno] at @s if score @s playerNumber = @a[limit=1,sort=nearest,scores={jobNumber=17,counter_1=1}] playerNumber run tag @e[tag=017-Infelno] add 017-InfelnoActive

scoreboard players remove @s[scores={counter_1=1..},gamemode=!spectator] counter_1 1

scoreboard players reset @s[scores={useCarrotStick=1..}] useCarrotStick
scoreboard players reset @s[scores={sneak=1..}] sneak
scoreboard players reset @s[scores={adDealt=1..}] adDealt