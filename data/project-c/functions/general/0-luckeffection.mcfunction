#CT加速
tag @a[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:100b}]}] add ct_haste
tag @a[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:101b}]}] add ct_haste
tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:106b}]}] add ct_haste
tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:117b}]}] add ct_haste_high

scoreboard players add @a[tag=ct_haste] CT1 20
scoreboard players add @a[tag=ct_haste] CT2 20
scoreboard players add @a[tag=ct_haste] CT3 20
scoreboard players add @a[tag=ct_haste] Mana 10
scoreboard players add @a[tag=ct_haste_high] CT1 40
scoreboard players add @a[tag=ct_haste_high] CT2 40
scoreboard players add @a[tag=ct_haste_high] CT3 40
scoreboard players add @a[tag=ct_haste_high] Mana 20
execute if entity @a[tag=ct_haste,limit=1] as @a[tag=ct_haste] at @s run playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 0.5 2
execute if entity @a[tag=ct_haste_high,limit=1] as @a[tag=ct_haste_high] at @s run playsound minecraft:block.brewing_stand.brew master @a ~ ~ ~ 0.125 2
tag @a remove ct_haste
tag @a remove ct_haste_high


#究極拷問安眠スペシャル
execute if entity @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:103b}]},limit=1] run tag @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:103b}]}] add GoumonSpecial
execute if entity @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:102b}]},limit=1] run tag @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:102b}]}] add GoumonSpecial
execute if entity @e[nbt={ActiveEffects:[{Id:26b,Amplifier:114b}]},limit=1] run tag @e[nbt={ActiveEffects:[{Id:26b,Amplifier:114b}]}] add GoumonSpecial

execute if entity @e[tag=GoumonSpecial,limit=1] as @e[tag=GoumonSpecial] at @s run playsound minecraft:entity.ghast.hurt master @a ~ ~ ~ 1 0.75
execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:slowness 5 10
execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:weakness 5 4
execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:wither 5 2
execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:nausea 5 0
execute if entity @e[tag=GoumonSpecial,limit=1] run effect give @e[tag=GoumonSpecial] minecraft:instant_damage 1 0
execute if entity @e[tag=GoumonSpecial,limit=1,scores={CT1=1201..}] run scoreboard players set @e[tag=GoumonSpecial] CT1 1200
execute if entity @e[tag=GoumonSpecial,limit=1,scores={CT2=1201..}] run scoreboard players set @e[tag=GoumonSpecial] CT2 1200
execute if entity @e[tag=GoumonSpecial,limit=1,scores={CT3=1201..}] run scoreboard players set @e[tag=GoumonSpecial] CT3 1200
execute if entity @e[tag=GoumonSpecial,limit=1] run scoreboard players remove @e[tag=GoumonSpecial] CT1 100
execute if entity @e[tag=GoumonSpecial,limit=1] run scoreboard players remove @e[tag=GoumonSpecial] CT2 100
execute if entity @e[tag=GoumonSpecial,limit=1] run scoreboard players remove @e[tag=GoumonSpecial] CT3 100
execute if entity @e[tag=GoumonSpecial,limit=1] run replaceitem entity @e[tag=GoumonSpecial] inventory.1 compass{display:{Name:'{"text":"CoolTime"}'}} 5
execute if entity @e[tag=GoumonSpecial,limit=1] run replaceitem entity @e[tag=GoumonSpecial] inventory.2 compass{display:{Name:'{"text":"CoolTime"}'}} 5
execute if entity @e[tag=GoumonSpecial,limit=1] run replaceitem entity @e[tag=GoumonSpecial] inventory.3 compass{display:{Name:'{"text":"CoolTime"}'}} 5
execute if entity @e[tag=GoumonSpecial,limit=1] run tag @e[tag=GoumonSpecial] remove SkillReady1
execute if entity @e[tag=GoumonSpecial,limit=1] run tag @e[tag=GoumonSpecial] remove SkillReady2
execute if entity @e[tag=GoumonSpecial,limit=1] run tag @e[tag=GoumonSpecial] remove SkillReady3
execute if entity @e[tag=GoumonSpecial,limit=1] run tag @e[tag=GoumonSpecial] remove GoumonSpecial


#はてなポーション
execute if entity @a[nbt={ActiveEffects:[{Id:26b,Amplifier:108b}]},limit=1] run tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:108b}]}] add HatenaPotionR
execute if entity @a[tag=HatenaPotionR,limit=1] as @a[tag=HatenaPotionR] at @s run particle dust 255 255 255 1 ~ ~0.3 ~ 3 0 3 1 200 normal @a
execute if entity @a[tag=HatenaPotionR,limit=1] as @a[tag=HatenaPotionR] at @s run playsound minecraft:entity.witch.ambient master @a ~ ~ ~ 2 1.2
execute if entity @a[tag=HatenaPotionR,limit=1] as @a[tag=HatenaPotionR] at @s run function project-c:general/item/hatenapotion/hatenacheck


##深淵様スキル
execute if entity @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:105b}]},limit=1] run tag @e[team=Red,nbt={ActiveEffects:[{Id:26b,Amplifier:105b}]}] add ShinenSkill
execute if entity @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:104b}]},limit=1] run tag @e[team=Blue,nbt={ActiveEffects:[{Id:26b,Amplifier:104b}]}] add ShinenSkill
execute if entity @e[team=Shinen,nbt={ActiveEffects:[{Id:26b,Amplifier:107b}]},limit=1] run tag @e[team=Shinen,nbt={ActiveEffects:[{Id:26b,Amplifier:107b}]}] add ShinenSkill

execute if entity @e[tag=ShinenSkill,limit=1] run effect give @e[tag=ShinenSkill] minecraft:nausea 4 10
execute if entity @e[tag=ShinenSkill,limit=1] run effect give @e[tag=ShinenSkill] minecraft:poison 4 2
execute if entity @e[tag=ShinenSkill,limit=1] run tag @e[tag=ShinenSkill] remove ShinenSkill

#execute @a[score_DeathMagic_min=1] ~ ~ ~ function project-c:jobaction/030/deathmagic
#execute @a[score_DeathMagic_min=1] ~ ~ ~ execute @a[score_DeathMagicCount_min=1] ~ ~ ~ scoreboard players reset @a[score_DeathMagicCount_min=1] DeathMagicCount


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


#メルク
execute if entity @a[tag=!extra,nbt={ActiveEffects:[{Id:26b,Amplifier:120b}]},limit=1] run tag @a[tag=!extra,nbt={ActiveEffects:[{Id:26b,Amplifier:120b}]}] add extraready

execute if entity @a[tag=extraready,limit=1] as @a[tag=extraready] at @s run function project-c:general/0-extrapoint

#鋼鉄のポーション
execute if entity @a[nbt={ActiveEffects:[{Id:26b,Amplifier:111b}]},limit=1] run tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:111b}]}] add KoutetuPotionF

execute if entity @a[tag=KoutetuPotionF,limit=1] as @a[tag=KoutetuPotionF] at @s run function project-c:general/item/ironskin


#オーバードーズ
execute if entity @a[nbt={ActiveEffects:[{Id:26b,Amplifier:112b}]},limit=1] run tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:112b}]}] add OverPotionF

execute if entity @a[tag=OverPotionF,limit=1] as @a[tag=OverPotionF] at @s run function project-c:general/item/overdoze


#デバフ消去
tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:109b}]}] add cleardebuffEffect

effect clear @a[tag=cleardebuffEffect] minecraft:bad_omen
effect clear @a[tag=cleardebuffEffect] minecraft:blindness
effect clear @a[tag=cleardebuffEffect] minecraft:glowing
effect clear @a[tag=cleardebuffEffect] minecraft:hunger
effect clear @a[tag=cleardebuffEffect] minecraft:instant_damage
effect clear @a[tag=cleardebuffEffect] minecraft:levitation
effect clear @a[tag=cleardebuffEffect] minecraft:mining_fatigue
effect clear @a[tag=cleardebuffEffect] minecraft:nausea
effect clear @a[tag=cleardebuffEffect] minecraft:poison
effect clear @a[tag=cleardebuffEffect] minecraft:slowness
effect clear @a[tag=cleardebuffEffect] minecraft:unluck
effect clear @a[tag=cleardebuffEffect] minecraft:weakness
effect clear @a[tag=cleardebuffEffect] minecraft:wither
scoreboard players set @a[tag=cleardebuffEffect] 078-oil 0
scoreboard players set @a[tag=cleardebuffEffect] 094-void 0
scoreboard players set @a[tag=cleardebuffEffect] stanTime 0

execute if entity @a[tag=cleardebuffEffect,limit=1] as @a[tag=cleardebuffEffect] at @s run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 0.5 2

tag @a[tag=cleardebuffEffect] remove cleardebuffEffect

#手榴弾
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:26b,Amplifier:113b}]},limit=1] as @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:26b,Amplifier:113b}]}] positioned as @s run summon creeper ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0s,ignited:1b,CustomName:'[{"text":"クリーピー","color":"dark_green","bold":true},{"text":"グレネード","color":"#FF0000"}]'}
execute if entity @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:26b,Amplifier:113b}]},limit=1] as @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:26b,Amplifier:113b}]}] positioned as @s run kill @s

#急浮上
tag @e[nbt={ActiveEffects:[{Id:26b,Amplifier:115b}]}] add frostpot
execute if entity @e[tag=frostpot,limit=1] as @e[tag=frostpot] at @s run summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:2,Radius:1,Age:-1,WaitTime:-1,Effects:[{Id:25b,Amplifier:80b,Duration:3}]}
execute if entity @e[tag=frostpot,limit=1] as @e[tag=frostpot] at @s run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 2
tag @e[tag=frostpot] remove frostpot

#バフ消去
tag @a[nbt={ActiveEffects:[{Id:26b,Amplifier:116b}]}] add clearbuffEffect

effect clear @a[tag=clearbuffEffect] speed
effect clear @a[tag=clearbuffEffect] haste
effect clear @a[tag=clearbuffEffect] strength
effect clear @a[tag=clearbuffEffect] jump_boost
effect clear @a[tag=clearbuffEffect] regeneration
effect clear @a[tag=clearbuffEffect] fire_resistance
effect clear @a[tag=clearbuffEffect] water_breathing
effect clear @a[tag=clearbuffEffect] invisibility
effect clear @a[tag=clearbuffEffect] night_vision
effect clear @a[tag=clearbuffEffect] health_boost
effect clear @a[tag=clearbuffEffect] absorption
effect clear @a[tag=clearbuffEffect] conduit_power
effect clear @a[tag=clearbuffEffect] dolphins_grace
effect clear @a[tag=clearbuffEffect] hero_of_the_village
tag @a[tag=clearbuffEffect] remove KoutetuPotion
tag @a[tag=clearbuffEffect] remove OverPotion

execute if entity @a[tag=clearbuffEffect,limit=1] as @a[tag=clearbuffEffect] at @s run playsound minecraft:enchant.thorns.hit master @a ~ ~ ~ 0.5 1

tag @a[tag=clearbuffEffect] remove clearbuffEffect

#####

#CT回復停止
tag @a[nbt={ActiveEffects:[{Id:27b,Amplifier:100b}]}] add ct_stop

scoreboard players remove @a[tag=ct_stop] CT1 1
scoreboard players remove @a[tag=ct_stop] CT2 1
scoreboard players remove @a[tag=ct_stop] CT3 1

tag @a[tag=ct_stop] remove ct_stop

#スタンポーション
scoreboard players set @e[nbt={ActiveEffects:[{Id:27b,Amplifier:101b}]}] stanTime 21
execute if entity @e[nbt={ActiveEffects:[{Id:27b,Amplifier:101b}]},limit=1] as @e[nbt={ActiveEffects:[{Id:27b,Amplifier:101b}]}] run data merge block -113 2 -122 {auto:1b}

#被弾時追撃
execute if entity @e[nbt={ActiveEffects:[{Id:27b,Amplifier:102b}]},limit=1,tag=!pursuit-ready] as @e[nbt={ActiveEffects:[{Id:27b,Amplifier:102b}]},tag=!pursuit-ready] at @s run playsound minecraft:entity.item.break master @a ~ ~ ~ 1 0.5
execute if entity @e[nbt={ActiveEffects:[{Id:27b,Amplifier:102b}]},limit=1,tag=!pursuit-ready] as @e[nbt={ActiveEffects:[{Id:27b,Amplifier:102b}]},tag=!pursuit-ready] at @s run tag @s add pursuit-ready
execute if entity @e[nbt=!{ActiveEffects:[{Id:27b,Amplifier:102b}]},tag=pursuit-ready,limit=1] as @e[nbt=!{ActiveEffects:[{Id:27b,Amplifier:102b}]},tag=pursuit-ready] at @s run tag @s remove pursuit-ready

execute if entity @e[nbt={HurtTime:9s,ActiveEffects:[{Id:27b,Amplifier:102b}]},limit=1] as @e[nbt={HurtTime:9s,ActiveEffects:[{Id:27b,Amplifier:102b}]}] run tag @s add pursuit

execute if entity @e[tag=pursuit,limit=1] as @e[tag=pursuit] at @s run playsound minecraft:entity.player.hurt_on_fire master @a ~ ~ ~ 1 0.75
execute if entity @e[tag=pursuit,limit=1] as @e[tag=pursuit] at @s run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 5 force
execute if entity @e[tag=pursuit,limit=1] as @e[tag=pursuit] at @s run effect give @s minecraft:instant_damage 1 0

tag @e[tag=pursuit] remove pursuit

#回復停止
tag @a[nbt={ActiveEffects:[{Id:27b,Amplifier:103b}]}] add heal_stop
effect clear @a[tag=heal_stop] regeneration
tag @a[nbt={ActiveEffects:[{Id:27b,Amplifier:103b}]}] remove heal_stop


#リセット
effect clear @e minecraft:luck