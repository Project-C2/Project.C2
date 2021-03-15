summon arrow 0 0 0 {xTile:2000,yTile:0,zTile:3000,NoGravity:1b,Tags:["Loader","Stable"]}
data merge block -113 47 -121 {Command:"/function project-c:stage/selectstageclock/37"}
data merge block -123 32 -120 {Command:"/function project-c:stage/selectstagestart/37"}
data merge block -115 20 -118 {Command:"/tp @a[scores={gameNumber=-1}] 2987 78 3000 270 0"}
data merge block -115 23 -121 {Command:"/tp @a[tag=!Joined] 2987 78 3000 270 0"}