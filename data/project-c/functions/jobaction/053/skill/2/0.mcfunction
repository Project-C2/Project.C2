#CT
scoreboard players set @s CT2 0
#スキル効果
#共通
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 2 0.75
#Red
execute as @s[team=Red] run summon armor_stand ~1 ~ ~1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["053-2","053-2R"],Rotation:[-45F,-50F]}
execute as @s[team=Red] run summon armor_stand ~1 ~ ~-1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["053-2","053-2R"],Rotation:[-135F,-50F]}
execute as @s[team=Red] run summon armor_stand ~-1 ~ ~1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["053-2","053-2R"],Rotation:[45F,-50F]}
execute as @s[team=Red] run summon armor_stand ~-1 ~ ~-1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["053-2","053-2R"],Rotation:[135F,-50F]}
#Blue
execute as @s[team=Blue] run summon armor_stand ~1 ~ ~1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["053-2","053-2B"],Rotation:[-45F,-50F]}
execute as @s[team=Blue] run summon armor_stand ~1 ~ ~-1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["053-2","053-2B"],Rotation:[-135F,-50F]}
execute as @s[team=Blue] run summon armor_stand ~-1 ~ ~1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["053-2","053-2B"],Rotation:[45F,-50F]}
execute as @s[team=Blue] run summon armor_stand ~-1 ~ ~-1 {NoGravity:1b,Marker:1b,Invisible:1b,Tags:["053-2","053-2B"],Rotation:[135F,-50F]}
#リセット
tag @s remove SkillReady2
scoreboard players set @s usedSkill 2
data merge block 37 2 -20 {auto:1b}
scoreboard players add @s counter_2 1
item replace entity @s[scores={counter_2=10}] armor.chest with minecraft:elytra{display:{Name:'{"text":"傲慢＝ルシファー","color":"dark_gray","italic":"false","underline":"true"}'},Unbreakable:1b,HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],053:1b,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.maxHealth",Amount:-16,Operation:0,UUIDLeast:303941,UUIDMost:460565,Slot:"chest"}]} 1
tellraw @s[scores={counter_2=10}] ["",{"text":"\u8cb4\u65b9\u306f","color":"dark_red"},{"text":"\u5fcd\u8010","bold":true,"underlined":true,"color":"dark_red"},{"text":"\u306e\u5fc3\u3092\u5931\u3063\u305f\u3002","color":"dark_red"},{"text":" "}]