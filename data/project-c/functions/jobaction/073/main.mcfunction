#実行者     -> jobNumber = 73
#実行地点   -> 実行者

scoreboard players reset @s usedSkill

execute if entity @s[scores={CT1=1200..},tag=!SkillReady1] run function project-c:jobaction/073/replaceitem/1
execute if entity @s[scores={CT2=1200..},tag=!SkillReady2] run function project-c:jobaction/073/replaceitem/2
execute if entity @s[scores={CT3=1200..},tag=!SkillReady3] run function project-c:jobaction/073/replaceitem/3

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"§5§lMaking Magic§r","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/073/skill/1/0


execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"§b§lEthereum Purification§r","color":"light_blue","italic":"false","underlined":"false"}'}}}},scores={CT2=1200..,sneak=1..,Mana=300..},tag=SkillReady2,gamemode=!spectator] run function project-c:jobaction/073/skill/2/0

execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"§e§lBinding§r","color":"light_blue","italic":"false","underlined":"false"}'}}}},scores={CT3=1200..,sneak=1..,Mana=100..},tag=!useBinding,tag=SkillReady3,gamemode=!spectator] run function project-c:jobaction/073/skill/3/0



execute if entity @s[nbt={SelectedItem:{tag:{display:{Name:'{"text":"§5§lMaking Magic§r","color":"white","italic":"false","underlined":"false"}'}}}},scores={CT1=1200..,sneak=1..},tag=SkillReady1,gamemode=!spectator] run function project-c:jobaction/073/skill/1/0

execute if entity @s[scores={useCarrotStick=1..,MagicFatigue=..300},gamemode=!spectator] run function project-c:jobaction/073/magic/usemagiccarrot


execute if entity @s[scores={useSnowball=1..,MagicFatigue=..300},gamemode=!spectator] run function project-c:jobaction/073/magic/usemagicsnowball

execute if entity @s[tag=useBinding,gamemode=!spectator] run function project-c:jobaction/073/skill/3/1

scoreboard players add @s[scores={Mana=..999,walk=0,sprint=0}] Mana 1
scoreboard players remove @s[scores={MagicFatigue=1..,walk=0,sprint=0}] MagicFatigue 1

scoreboard players add @s[scores={Mana=..999,MagicFatigue=0}] Mana 1
scoreboard players add @s[scores={Mana=..999,MagicFatigue=0}] Mana 1
scoreboard players add @s[scores={Mana=..999,MagicFatigue=0}] Mana 1
scoreboard players add @s[scores={Mana=..999,MagicFatigue=0}] Mana 1
scoreboard players add @s[scores={Mana=..999,MagicFatigue=1..299}] Mana 2
scoreboard players add @s[scores={Mana=..999,MagicFatigue=300..}] Mana 1

scoreboard players remove @s[scores={MagicFatigue=1..}] MagicFatigue 1


effect give @s[scores={MagicFatigue=200..300}] slowness 1 0
effect give @s[scores={MagicFatigue=250..}] weakness 1 0
effect give @s[scores={MagicFatigue=300..}] slowness 1 1

scoreboard players set @s[scores={Mana=1000..}] Mana 1000
scoreboard players set @s[scores={MagicFatigue=400..}] MagicFatigue 400

execute as @s[tag=Battle,scores={OutCombat=241..}] at @s run scoreboard players remove @s[scores={MagicFatigue=1..}] MagicFatigue 1
function project-c:jobaction/073/actbar

scoreboard players set @s sneak 0
scoreboard players set @s useCarrotStick 0
scoreboard players set @s useSnowball 0
scoreboard players reset @s damageDealt
scoreboard players reset @s jump
scoreboard players set @s walk 0
scoreboard players set @s sprint 0