effect give @a[scores={jobNumber=89},distance=..6] resistance 1 4 true
summon creeper 0 0 0 {CustomName:'"忘却の彼方より訪れし王"',ignited:1b,ExplosionRadius:3b,powered:0b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["this"]}
tp @e[tag=this,x=0,y=0,z=0,limit=1,sort=nearest] ~ ~ ~
tag @e[tag=this] remove this
kill @s