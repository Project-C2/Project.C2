#実行者     -> jobNumber = 067
#実行地点   -> 実行者
#subcounter   -> 前tickのsprintスコア保存
#counter_1    -> ステップ後着地までの状態管理
#counter_2    -> 盾耐久管理スコア
#counter_3    -> 盾耐久回復用スコア
#

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/067/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/067/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/067/replaceitem/3

execute if entity @s[scores={shieldBlock=1..},gamemode=!spectator] run function project-c:jobaction/067/shieldblock
execute if entity @s[scores={sprint=1..}] run scoreboard players operation @s subcounter = @s sprint

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ステップ&デストロイ\",\"color\":\"white\",\"italic\":false}"},destroyMode:0b}}},scores={CT1=1200..,subcounter=1..,jump=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/067/skill/1/0
execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:"{\"text\":\"ステップ&デストロイ\",\"color\":\"white\",\"italic\":false}"},destroyMode:1b}}},scores={damageDealt=1..},gamemode=!spectator] run function project-c:jobaction/067/skill/1/2
execute if entity @s[scores={CT2=1200..,useLinger=1..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/067/skill/2/check
execute if entity @s[scores={CT3=1200..,sneak=..0,shieldBlock=1..},tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/067/skill/3/0

execute if score @s counter_1 matches 1.. run function project-c:jobaction/067/skill/1/1

execute if score @s counter_3 matches 1.. run particle minecraft:block minecraft:iron_block ~ ~ ~ 1 1 1 1 3 normal @a
execute if score @s counter_3 matches 1.. if data entity @s {HurtTime:9s} run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2
execute if score @s counter_3 matches 1.. if data entity @s {HurtTime:9s} run scoreboard players reset @s counter_3
execute if score @s counter_3 matches 80.. run function project-c:jobaction/067/repair

scoreboard players reset @s[scores={shieldBlock=1..}] shieldBlock
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt
execute if entity @s[scores={subcounter=1..}] unless entity @s[scores={sprint=1..}] run scoreboard players reset @s subcounter
scoreboard players reset @s[scores={sprint=1..}] sprint
scoreboard players reset @s[scores={jump=1..}] jump
execute if entity @s[scores={counter_3=1..}] unless entity @s[scores={sneak=1..}] run scoreboard players reset @s counter_3
execute if entity @s[scores={sneak=1..,counter_2=1..}] run scoreboard players add @s counter_3 1
scoreboard players set @s[scores={sneak=1..}] sneak 0
scoreboard players set @s[scores={useLinger=1..}] useLinger 0
