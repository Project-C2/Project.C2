playsound minecraft:entity.evoker.prepare_summon master @a ~ ~1 ~ 1 1
particle witch ~ ~ ~ 0 0 0 1 30

execute if entity @s[team=Red] run summon vex ~ ~1 ~ {LifeTicks:0,HandItems:[{id:iron_sword,Count:1b,Unbreakable:1b,tag:{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:639243,UUIDMost:523251,Slot:"mainhand"}]}},{}],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.attackDamage,Base:6}],Health:20.0f,Team:"Red"}
execute if entity @s[team=Blue] run summon vex ~ ~1 ~ {LifeTicks:0,HandItems:[{id:iron_sword,Count:1b,Unbreakable:1b,tag:{AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0,Operation:0,UUIDLeast:639243,UUIDMost:523251,Slot:"mainhand"}]}},{}],HandDropChances:[0.0F,0.0F],Attributes:[{Name:generic.maxHealth,Base:10},{Name:generic.attackDamage,Base:6}],Health:20.0f,Team:"Blue"}


scoreboard players set @s usedSkill 1