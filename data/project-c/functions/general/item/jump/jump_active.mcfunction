particle minecraft:poof ~ ~ ~ 0 0 0 0.1 5
playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
playsound minecraft:entity.iron_golem.attack player @a ~ ~ ~ 1.5 1.5
tp @s @s
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:6,Age:4,Effects:[{Id:25b,Amplifier:16b,Duration:6,ShowParticles:0b}]}
execute rotated ~ 0 run summon area_effect_cloud ^ ^ ^-0.35 {Tags:[Re_D.Jump_Slime],Passengers:[{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]},{id:"minecraft:slime",Silent:1b,Invulnerable:1b,DeathTime:19,NoAI:1b,Tags:[Re_D.Jump_Slime]}]}
item replace entity @s armor.chest with minecraft:elytra{Damage:431,display:{Name:'{"text":"Celestial Feather","color":"aqua","italic":false}',Lore:['{"text":" "}','{"text":"[Recharging!]","color":"white","italic":false}','{"text":" "}','{"text":"\\"大丈夫、きっとやりとげられる\\"","color":"white","italic":false}']},HideFlags:5,Unbreakable:1b,ItemName:Celestial_Feather,ItemMode:Re_D.Jump_Used,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}],CustomModelData:1b} 1