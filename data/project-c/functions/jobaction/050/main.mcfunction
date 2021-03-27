#実行者     -> jobNumber = 50
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/050/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/050/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/050/replaceitem/3

execute if entity @s[scores={CT1=1200..,useFishing=1..,H.Hook_Use=0..},tag=!H.Hook_NoUse,tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/050/skill/1/0
execute if entity @s[scores={CT2=1200..,sneak=0},tag=SkillReady2,tag=050-sneaking,gamemode=!spectator] run function project-c:jobaction/050/skill/2/0

effect give @s[scores={counter_2=0},gamemode=!spectator] slowness 1 0 true
effect give @s[scores={counter_2=1},gamemode=!spectator] slowness 1 1 true
effect give @s[scores={counter_2=2},gamemode=!spectator] slowness 1 2 true
effect give @s[scores={counter_2=3..},gamemode=!spectator] slowness 1 3 true
effect give @s[scores={damageDealt=1..},gamemode=!spectator] absorption 5 0 true
execute as @s[scores={damageDealt=1..},gamemode=!spectator] at @s run particle end_rod ~ ~ ~ 0 0 0 0.3 10
execute as @s[scores={damageDealt=1..},gamemode=!spectator] at @s run playsound minecraft:entity.wither.hurt master @a ~ ~ ~ 1 1.25

scoreboard players add @s[scores={sneak=1..,counter_2=..2,CT2=1200..},gamemode=!spectator] counter_3 1
scoreboard players add @s[scores={sneak=1..,counter_2=..2,CT2=1200..},gamemode=!spectator] Mana 1
scoreboard players add @s[scores={counter_3=25..}] counter_2 1
execute if entity @s[scores={counter_3=25..}] run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~ 1 2
execute if entity @s[scores={counter_3=25..}] run particle enchant ~ ~1.5 ~ 0 0 0 2 50
execute if entity @s[scores={counter_3=25..}] run give @s[scores={CT2=1200..}] minecraft:cyan_dye{display:{Name:'{"text":"チャージドガントレット","color":"gray","italic":"false"}',Lore:['{"text":"§e発動:スニーク長押し"}','{"text":"§f前方に放たれ、通りかかった敵に大ダメージを与える。"}','{"text":"§fチャージした時間に応じて威力と距離が増す。"}','{"text":"§aCT:8"}']}} 1
execute if entity @s[scores={counter_3=25..}] run scoreboard players reset @s counter_3

execute if entity @s[scores={sneak=..0}] run scoreboard players set @s counter_3 0
execute if entity @s[scores={sneak=..0}] run scoreboard players set @s counter_2 0
execute if entity @s[scores={sneak=..0}] run scoreboard players set @s Mana 0
tag @s[scores={sneak=..0}] remove 050-sneaking
execute if entity @s[scores={sneak=..0}] run replaceitem entity @s[scores={CT2=1200..}] hotbar.2 minecraft:cyan_dye{display:{Name:'{"text":"チャージドガントレット","color":"gray","italic":"false"}',Lore:['{"text":"§e発動:スニーク長押し"}','{"text":"§f前方に放たれ、通りかかった敵に大ダメージを与える。"}','{"text":"§fチャージした時間に応じて威力と距離が増す。"}','{"text":"§aCT:8"}']}} 1

tag @s[scores={sneak=1..}] add 050-sneaking

function project-c:jobaction/050/skill/hook/tick

execute if entity @s[scores={subcounter=0},tag=Battle] run function project-c:jobaction/050/skill/hook/load
execute if entity @s[scores={subcounter=0},tag=Battle] run scoreboard players set @s subcounter 1


# スコアボードリセット、タグ消去(最後の行)
    scoreboard players reset @a[scores={FloatUse=1..}] FloatUse
    scoreboard players reset @a[scores={H.Hook_Use=1..}] H.Hook_Use
    scoreboard players set @a[nbt={OnGround:1b}] FloatFuel 0
    tag @e[tag=NeoHookFacing] remove NeoHookFacing
    tag @a[tag=Hold_NeoHook] remove Hold_NeoHook

scoreboard players set @s[scores={sneak=1..}] sneak 0
scoreboard players reset @s[scores={useFishing=1..}] useFishing
scoreboard players reset @s[scores={damageDealt=1..}] damageDealt