summon creeper 0 0 0 {CustomName:'"焼き尽くす叛逆の雷"',ExplosionRadius:3b,Fuse:0s,Invulnerable:1b,NoAI:1b,Silent:1b,Tags:["this"]}
tp @e[tag=this,x=0,y=0,z=0,limit=1,sort=nearest] ~ ~2 ~
tag @e[tag=this] remove this
kill @s