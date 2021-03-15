summon arrow 0 0 0 {xTile:5000,yTile:0,zTile:5000,NoGravity:1b,Tags:["Loader","Stable"]}
data merge block -113 47 -121 {Command:"/function project-c:stage/selectstageclock/29"}
data merge block -123 32 -120 {Command:"/function project-c:stage/selectstagestart/29"}
data merge block -115 20 -118 {Command:"/tp @a[scores={gameNumber=-1}] 5010 100 5008 90 0"}
data merge block -115 23 -121 {Command:"/tp @a[tag=!Joined] 5010 100 5008 90 0"}