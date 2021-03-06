execute if entity @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]},limit=1] run scoreboard players add @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] CT1 20
execute if entity @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]},limit=1] run scoreboard players add @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] CT2 20
execute if entity @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]},limit=1] run scoreboard players add @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] CT3 20
execute if entity @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]},limit=1] run scoreboard players add @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] Mana 10

execute if entity @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]},limit=1] run scoreboard players add @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] CT1 20
execute if entity @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]},limit=1] run scoreboard players add @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] CT2 20
execute if entity @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]},limit=1] run scoreboard players add @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] CT3 20
execute if entity @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]},limit=1] run scoreboard players add @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] Mana 10

execute if entity @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:103b}]},limit=1] run tag @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:103b}]}] add GoumonSpecial
execute if entity @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:102b}]},limit=1] run tag @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:102b}]}] add GoumonSpecial

execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:slowness 5 10
execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:weakness 5 1
execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:wither 5 2
execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:hunger 5 0
execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:instant_damage 1 0
execute if entity @e[tag=GoumonSpecial,limit=1] run tag @e[tag=GoumonSpecial] remove GoumonSpecial


execute if entity @a[nbt={ActiveEffects:[{Id:26b,Amplifier:108b}]},limit=1] run tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:108b}]}] add HatenaPotionR
execute if entity @a[tag=HatenaPotionR,limit=1] as @a[tag=HatenaPotionR] at @s run particle dust 255 255 255 1 ~ ~0.3 ~ 3 0 3 1 200 normal @a
execute if entity @a[tag=HatenaPotionR,limit=1] as @a[tag=HatenaPotionR] at @s run playsound minecraft:entity.witch.ambient master @a ~ ~ ~ 2 1.2
execute if entity @a[tag=HatenaPotionR,limit=1] as @a[tag=HatenaPotionR] at @s run function project-c:general/item/hatenapotion/hatenacheck

execute if entity @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:105b}]},limit=1] run tag @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:105b}]}] add ShinenSkill
execute if entity @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:104b}]},limit=1] run tag @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:104b}]}] add ShinenSkill
execute if entity @e[team=Shinen,nbt={ActiveEffects:[{Id:26b,Amplifier:107b}]},limit=1] run tag @e[team=Shinen,nbt={ActiveEffects:[{Id:26b,Amplifier:107b}]}] add ShinenSkill

execute if entity @e[tag=ShinenSkill,limit=1] run effect give @e[tag=ShinenSkill] minecraft:nausea 4 10
execute if entity @e[tag=ShinenSkill,limit=1] run effect give @e[tag=ShinenSkill] minecraft:poison 4 2
execute if entity @e[tag=ShinenSkill,limit=1] run tag @e[tag=ShinenSkill] remove ShinenSkill


#execute @a[score_DeathMagic_min=1] ~ ~ ~ function project-c:jobaction/030/deathmagic
#execute @a[score_DeathMagic_min=1] ~ ~ ~ execute @a[score_DeathMagicCount_min=1] ~ ~ ~ scoreboard players reset @a[score_DeathMagicCount_min=1] DeathMagicCount


execute if entity @a[nbt={ActiveEffects:[{Id:26b,Amplifier:106b}]},limit=1] run tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:106b}]}] add luck_106b
execute if entity @a[tag=luck_106b,limit=1] run scoreboard players add @a[tag=luck_106b] CT1 20
execute if entity @a[tag=luck_106b,limit=1] run scoreboard players add @a[tag=luck_106b] CT2 20
execute if entity @a[tag=luck_106b,limit=1] run scoreboard players add @a[tag=luck_106b] CT3 20
execute if entity @a[tag=luck_106b,limit=1] run scoreboard players add @a[tag=luck_106b] Mana 10
execute if entity @a[tag=luck_106b,limit=1] run tag @a[tag=luck_106b] remove luck_106b

#エクスエリクサー
execute if entity @a[nbt={ActiveEffects:[{Id:26b,Amplifier:110b}]},limit=1] run tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:110b}]}] add Elixir
execute if entity @a[tag=Elixir,limit=1] run scoreboard players set @a[tag=Elixir] CT1 1200
execute if entity @a[tag=Elixir,limit=1] run scoreboard players set @a[tag=Elixir] CT2 1200
execute if entity @a[tag=Elixir,limit=1] run scoreboard players set @a[tag=Elixir] CT3 1200
execute if entity @a[tag=Elixir,limit=1] run scoreboard players set @a[tag=Elixir] Mana 300
execute if entity @a[tag=Elixir,limit=1] run effect give @a[tag=Elixir] minecraft:instant_health 1 100
execute if entity @a[tag=Elixir,limit=1] as @a[tag=Elixir] at @s run particle firework ~ ~1.2 ~ 0 0 0 0.5 160
execute if entity @a[tag=Elixir,limit=1] as @a[tag=Elixir] at @s run playsound minecraft:block.portal.trigger master @a ~ ~ ~ 3 2
execute if entity @a[tag=Elixir,limit=1] run tag @a[tag=Elixir] remove Elixir

#extraSkill
execute if entity @a[tag=!extra,nbt={ActiveEffects:[{Id:26b,Amplifier:120b}]},limit=1] run tag @a[tag=!extra,nbt={ActiveEffects:[{Id:26b,Amplifier:120b}]}] add extraready

execute if entity @a[tag=extraready,limit=1] as @a[tag=extraready] at @s run function project-c:general/0-extrapoint


effect clear @e minecraft:luck