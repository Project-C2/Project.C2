execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:1}}]}] run effect give @s instant_health 1 1

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{ItemID:2}}]}] run effect give @a[team=Red,distance=..7] instant_damage 1 0
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{ItemID:2}}]}] run effect give @a[team=Blue,distance=..7] instant_damage 1 0

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:3}}]}] run effect give @s strength 25 0

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{ItemID:4}}]}] run effect give @a[team=Red,distance=..7] mining_fatigue 15 2
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{ItemID:4}}]}] run effect give @a[team=Blue,distance=..7] mining_fatigue 15 2

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:5}}]}] run effect give @s regeneration 10 2
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:5}}]}] run effect give @s absorption 30 2

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:6}}]}] run effect give @s speed 15 4

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:7}}]}] run effect give @s night_vision 30 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:7}}]}] run effect give @s jump_boost 30 1
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:7}}]}] run effect give @s haste 30 1
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:7}}]}] run effect give @s fire_resistance 30 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:7}}]}] run effect give @s slow_falling 30 0

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:8}}]}] run effect give @s minecraft:conduit_power 30 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:8}}]}] run effect give @s minecraft:water_breathing 30 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:8}}]}] run effect give @s minecraft:dolphins_grace 30 0

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:9}}]}] run effect give @s minecraft:absorption 120 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:9}}]}] run effect give @s minecraft:regeneration 5 1

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{ItemID:10}}]}] run effect give @a[team=Red,distance=..7] unluck 30 0
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{ItemID:10}}]}] run effect give @a[team=Blue,distance=..7] unluck 30 0

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{ItemID:11}}]}] run effect give @a[team=Red,distance=..7] instant_damage 1 1
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{ItemID:11}}]}] run effect give @a[team=Blue,distance=..7] instant_damage 1 1

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{ItemID:12}}]}] run effect give @a[team=Red,distance=..7] glowing 30 0
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{ItemID:12}}]}] run effect give @a[team=Blue,distance=..7] glowing 30 0

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:13}}]}] run effect give @s minecraft:jump_boost 1 12

execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{ItemID:14}}]}] run scoreboard players add @a[team=Blue,distance=..7] CT1 200
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{ItemID:14}}]}] run scoreboard players add @a[team=Blue,distance=..7] CT2 200
execute if entity @s[team=Blue,nbt={Inventory:[{Slot:7b,tag:{ItemID:14}}]}] run scoreboard players add @a[team=Blue,distance=..7] CT3 200

execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{ItemID:14}}]}] run scoreboard players add @a[team=Red,distance=..7] CT1 200
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{ItemID:14}}]}] run scoreboard players add @a[team=Red,distance=..7] CT2 200
execute if entity @s[team=Red,nbt={Inventory:[{Slot:7b,tag:{ItemID:14}}]}] run scoreboard players add @a[team=Red,distance=..7] CT3 200

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:15}}]}] run effect clear @s minecraft:unluck
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:15}}]}] run effect clear @s minecraft:poison
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:15}}]}] run effect clear @s minecraft:wither
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:15}}]}] run effect clear @s minecraft:levitation
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:15}}]}] run effect clear @s minecraft:slowness
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:15}}]}] run effect clear @s minecraft:weakness
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:15}}]}] run effect clear @s minecraft:mining_fatigue
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:15}}]}] run effect clear @s minecraft:nausea

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:16}}]}] run effect give @s minecraft:luck 1 108

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:17}}]}] run tag @s add 063-sword

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:18}}]}] run tag @s add 063-shield

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:19}}]}] run tag @s add 063-wing

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^ ^1 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.maxHealth",Base:20d},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^1 ^1 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.maxHealth",Base:20d},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^-1 ^1 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.maxHealth",Base:20d},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^1 ^2 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.maxHealth",Base:20d},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^ ^2 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.maxHealth",Base:20d},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^-1 ^2 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.maxHealth",Base:20d},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^1 ^3 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.maxHealth",Base:20d},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^ ^3 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.maxHealth",Base:20d},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:20}}]}] run summon minecraft:shulker ^-1 ^3 ^4 {PersistenceRequired:1b,NoAI:1b,NoGravity:1b,DeathLootTable:"empty",Health:20f,Color:16b,Attributes:[{Name:"generic.maxHealth",Base:20d},{Name:"generic.movementSpeed",Base:0d},{Name:"generic.attackDamage",Base:0d},{Name:"generic.knockbackResistance",Base:1d},{Name:"generic.followRange",Base:0d}],ActiveEffects:[{Id:13b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:12b,Amplifier:2b,Duration:2147483647,ShowParticles:0b},{Id:20b,Amplifier:3b,Duration:2147483647,ShowParticles:0b}]}

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:24}}]}] run effect give @s minecraft:luck 1 110

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:25}}]}] run effect give @s minecraft:absorption 120 3
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:25}}]}] run effect give @s minecraft:regeneration 20 1
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:25}}]}] run effect give @s minecraft:fire_resistance 300 0
execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:25}}]}] run effect give @s minecraft:resistance 300 0

execute if entity @s[nbt={Inventory:[{Slot:7b,tag:{ItemID:26}}]}] run effect give @s minecraft:luck 1 120

replaceitem entity @s hotbar.7 minecraft:air
function project-c:general/0-luckeffection