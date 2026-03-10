Settings =3D Settings or {}

local Players =3D game:GetService("Players")
local ReplicatedStorage =3D game:GetService("ReplicatedStorage")
local HttpService =3D game:GetService("HttpService")

local Plr =3D Players.LocalPlayer

if Settings.Translator =3D=3D true then
    pcall(function()
        =5FG.RedzTranslator =3D HttpService:JSONDecode(game:HttpGet("https=
://raw.githubusercontent.com/PlockScripts/newredz/refs/heads/main/NewTrans=
lator/NewBloxFruits/NewPortuguese.json"))
    end)
end

local function JoinTeam()
    local targetTeam =3D "Marines"
    if Settings.JoinTeam =3D=3D "Pirates" then
        targetTeam =3D "Pirates"
    end

    if not Plr.Team or (Plr.Team.Name ~=3D "Marines" and Plr.Team.Name ~=
=3D "Pirates") then
        pcall(function()
            ReplicatedStorage
                :WaitForChild("Remotes")
                :WaitForChild("CommF=5F")
                :InvokeServer("SetTeam", targetTeam)
        end)
    end
end

JoinTeam()

hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container=
.Death), function()
    -- empty block
end)
hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container=
.Respawn), function()
    -- empty block
end)
if game.PlaceId =3D=3D 2753915549 or game.PlaceId =3D=3D 85211729168715 th=
en
    World1 =3D true
elseif game.PlaceId =3D=3D 4442272183 or game.PlaceId =3D=3D 7909170326565=
7 then
    World2 =3D true
elseif game.PlaceId =3D=3D 7449423635 or game.PlaceId =3D=3D 1001173311230=
89 then
    World3 =3D true
end
function MaterialMon()
    if =5FG.SelectMaterial ~=3D "Radiactive Material" then
        if =5FG.SelectMaterial ~=3D "Leather + Scrap Metal" then
            if =5FG.SelectMaterial ~=3D "Magma Ore" then
                if =5FG.SelectMaterial ~=3D "Fish Tail" then
                    if =5FG.SelectMaterial =3D=3D "Angel Wings" then
                        MMon =3D "Royal Soldier"
                        MPos =3D CFrame.new(-7759.45898, 5606.93652, -1862=
.70276, -0.866007447, 0, -0.500031412, 0, 1, 0, 0.500031412, 0, -0.8660074=
47)
                        SP =3D "SkyArea2"
                    elseif =5FG.SelectMaterial =3D=3D "Mystic Droplet" the=
n
                        MMon =3D "Water Fighter"
                        MPos =3D CFrame.new(-3331.70459, 239.138336, -1055=
3.3564, -0.29242146, 0, 0.95628953, 0, 1, 0, -0.95628953, 0, -0.29242146)
                        SP =3D "ForgottenIsland"
                    elseif =5FG.SelectMaterial =3D=3D "Vampire Fang" then
                        MMon =3D "Vampire"
                        MPos =3D CFrame.new(-6132.39453, 9.00769424, -1466=
.16919, -0.927179813, 0, -0.374617696, 0, 1, 0, 0.374617696, 0, -0.9271798=
13)
                        SP =3D "Graveyard"
                    elseif =5FG.SelectMaterial =3D=3D "Gunpowder" then
                        MMon =3D "Pistol Billionaire"
                        MPos =3D CFrame.new(-185.693283, 84.7088699, 6103.=
62744, 0.90629667, 0, -0.422642082, 0, 1, 0, 0.422642082, 0, 0.90629667)
                        SP =3D "Mansion"
                    elseif =5FG.SelectMaterial ~=3D "Mini Tusk" then
                        if =5FG.SelectMaterial =3D=3D "Conjured Cocoa" the=
n
                            MMon =3D "Chocolate Bar Battler"
                            MPos =3D CFrame.new(582.828674, 25.5824986, -1=
2550.7041, -0.766061664, 0, -0.642767608, 0, 1, 0, 0.642767608, 0, -0.7660=
61664)
                            SP =3D "Chocolate"
                        end
                    else
                        MMon =3D "Mythological Pirate"
                        MPos =3D CFrame.new(-13456.0498, 469.433228, -7039=
.96436, 0, 0, 1, 0, 1, 0, -1, 0, 0)
                        SP =3D "BigMansion"
                    end
                elseif game.PlaceId =3D=3D 2753915549 then
                    MMon =3D "Fishman Warrior"
                    MPos =3D CFrame.new(60943.9023, 17.9492188, 1744.11133=
, 0.826706648, 0, -0.562633216, 0, 1, 0, 0.562633216, 0, 0.826706648)
                    SP =3D "Underwater City"
                    MMon =3D "Fishman Commando"
                    MPos =3D CFrame.new(61760.8984, 18.0800781, 1460.11133=
, -0.632549644, 0, -0.774520278, 0, 1, 0, 0.774520278, 0, -0.632549644)
                    SP =3D "Underwater City"
                elseif game.PlaceId =3D=3D 7449423635 then
                    MMon =3D "Fishman Captain"
                    MPos =3D CFrame.new(-10828.1064, 331.825989, -9049.146=
48, -0.0912091732, 0, 0.995831788, 0, 1, 0, -0.995831788, 0, -0.0912091732=
)
                    SP =3D "PineappleTown"
                end
            elseif game.PlaceId =3D=3D 2753915549 then
                MMon =3D "Military Soldier"
                MPos =3D CFrame.new(-5565.60156, 9.10001755, 8327.56934, -=
0.838688731, 0, -0.544611216, 0, 1, 0, 0.544611216, 0, -0.838688731)
                SP =3D "Magma"
                MMon =3D "Military Spy"
                MPos =3D CFrame.new(-5806.70068, 78.5000458, 8904.46973, 0=
.707134247, 0, 0.707079291, 0, 1, 0, -0.707079291, 0, 0.707134247)
                SP =3D "Magma"
            elseif game.PlaceId =3D=3D 4442272183 then
                MMon =3D "Lava Pirate"
                MPos =3D CFrame.new(-5158.77051, 14.4791956, -4654.2627, -=
0.848060489, 0, -0.529899538, 0, 1, 0, 0.529899538, 0, -0.848060489)
                SP =3D "CircleIslandFire"
            end
        elseif game.PlaceId =3D=3D 2753915549 then
            MMon =3D "Pirate"
            MPos =3D CFrame.new(-967.433105, 13.5999937, 4034.24707, -0.25=
8864403, 0, -0.965913713, 0, 1, 0, 0.965913713, 0, -0.258864403)
            SP =3D "Pirate"
            MMon =3D "Brute"
            MPos =3D CFrame.new(-1191.41235, 15.5999985, 4235.50928, 0.629=
286051, 0, -0.777173758, 0, 1, 0, 0.777173758, 0, 0.629286051)
            SP =3D "Pirate"
        elseif game.PlaceId ~=3D 4442272183 then
            if game.PlaceId =3D=3D 7449423635 then
                MMon =3D "Pirate Millionaire"
                MPos =3D CFrame.new(-118.809372, 55.4874573, 5649.17041, -=
0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                SP =3D "Default"
            end
        else
            MMon =3D "Mercenary"
            MPos =3D CFrame.new(-986.774475, 72.8755951, 1088.44653, -0.65=
6062722, 0, 0.754706323, 0, 1, 0, -0.754706323, 0, -0.656062722)
            SP =3D "DressTown"
        end
    else
        MMon =3D "Factory Staff"
        MPos =3D CFrame.new(-105.889565, 72.8076935, -670.247986, -0.96592=
9747, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, -0.965929747)
        SP =3D "Bar"
    end
end
function CheckQuest()
    MyLevel =3D game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
        if MyLevel >=3D 1 and MyLevel <=3D 9 or SelectMonster =3D=3D "Band=
it" then
            Mon =3D "Bandit"
            LevelQuest =3D 1
            NameQuest =3D "BanditQuest1"
            NameMon =3D "Bandit"
            CFrameQuest =3D CFrame.new(1059.37195, 15.4495068, 1550.4231, =
0.939700544, -0, -0.341998369, -0, 1, -0, 0.341998369, -0, 0.939700544)
            CFrameMon =3D CFrame.new(1045.962646484375, 27.00250816345215,=
 1560.8203125)
        elseif (MyLevel < 10 or MyLevel > 14) and SelectMonster ~=3D "Monk=
ey" then
            if (MyLevel < 15 or MyLevel > 29) and SelectMonster ~=3D "Gori=
lla" then
                if (MyLevel < 30 or MyLevel > 39) and SelectMonster ~=3D "=
Pirate" then
                    if (MyLevel < 40 or MyLevel > 59) and SelectMonster ~=
=3D "Brute" then
                        if MyLevel >=3D 60 and MyLevel <=3D 74 or SelectMo=
nster =3D=3D "Desert Bandit" then
                            Mon =3D "Desert Bandit"
                            LevelQuest =3D 1
                            NameQuest =3D "DesertQuest"
                            NameMon =3D "Desert Bandit"
                            CFrameQuest =3D CFrame.new(894.488647, 5.14000=
702, 4392.43359, 0.819155693, -0, -0.573571265, -0, 1, -0, 0.573571265, -0=
, 0.819155693)
                            CFrameMon =3D CFrame.new(924.7998046875, 6.448=
67467880249, 4481.5859375)
                        elseif (MyLevel < 75 or MyLevel > 89) and SelectMo=
nster ~=3D "Desert Officer" then
                            if (MyLevel < 90 or MyLevel > 99) and SelectMo=
nster ~=3D "Snow Bandit" then
                                if MyLevel >=3D 100 and MyLevel <=3D 119 o=
r SelectMonster =3D=3D "Snowman" then
                                    Mon =3D "Snowman"
                                    LevelQuest =3D 2
                                    NameQuest =3D "SnowQuest"
                                    NameMon =3D "Snowman"
                                    CFrameQuest =3D CFrame.new(1389.74451,=
 88.1519318, -1298.90796, -0.342042685, -0, 0.939684391, -0, 1, -0, -0.939=
684391, -0, -0.342042685)
                                    CFrameMon =3D CFrame.new(1201.64123535=
15625, 144.57958984375, -1550.0670166015625)
                                elseif (MyLevel < 120 or MyLevel > 149) an=
d SelectMonster ~=3D "Chief Petty Officer" then
                                    if (MyLevel < 150 or MyLevel > 174) an=
d SelectMonster ~=3D "Sky Bandit" then
                                        if (MyLevel < 175 or MyLevel > 189=
) and SelectMonster ~=3D "Dark Master" then
                                            if MyLevel >=3D 190 and MyLeve=
l <=3D 209 or SelectMonster =3D=3D "Prisoner" then
                                                Mon =3D "Prisoner"
                                                LevelQuest =3D 1
                                                NameQuest =3D "PrisonerQue=
st"
                                                NameMon =3D "Prisoner"
                                                CFrameQuest =3D CFrame.new=
(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918E-9, -0.995=
993316, 1.60817859E-9, 1, -5.16744869E-9, 0.995993316, -2.06384709E-9, -0.=
0894274712)
                                                CFrameMon =3D CFrame.new(5=
098.9736328125, -0.3204058110713959, 474.2373352050781)
                                            elseif (MyLevel < 210 or MyLev=
el > 249) and SelectMonster ~=3D "Dangerous Prisone" then
                                                if MyLevel >=3D 250 and My=
Level <=3D 274 or SelectMonster =3D=3D "Toga Warrior" then
                                                    Mon =3D "Toga Warrior"=

                                                    LevelQuest =3D 1
                                                    NameQuest =3D "Colosse=
umQuest"
                                                    NameMon =3D "Toga Warr=
ior"
                                                    CFrameQuest =3D CFrame=
.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, -0, -0.857167721,=
 -0, 1, -0, 0.857167721, -0, -0.515037298)
                                                    CFrameMon =3D CFrame.n=
ew(-1820.21484375, 51.68385696411133, -2740.6650390625)
                                                elseif (MyLevel < 275 or M=
yLevel > 299) and SelectMonster ~=3D "Gladiator" then
                                                    if (MyLevel < 300 or M=
yLevel > 324) and SelectMonster ~=3D "Military Soldier" then
                                                        if (MyLevel < 325 =
or MyLevel > 374) and SelectMonster ~=3D "Military Spy" then
                                                            if (MyLevel < =
375 or MyLevel > 399) and SelectMonster ~=3D "Fishman Warrior" then
                                                                if (MyLeve=
l < 400 or MyLevel > 449) and SelectMonster ~=3D "Fishman Commando" then
                                                                    if MyL=
evel >=3D 450 and MyLevel <=3D 474 or SelectMonster =3D=3D "God's Guard" t=
hen
                                                                        Mo=
n =3D "God's Guard"
                                                                        Le=
velQuest =3D 1
                                                                        Na=
meQuest =3D "SkyExp1Quest"
                                                                        Na=
meMon =3D "God's Guard"
                                                                        CF=
rameQuest =3D CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859=
, -0, -0.0871884301, -0, 1, -0, 0.0871884301, -0, 0.996191859)
                                                                        CF=
rameMon =3D CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984=
375)
                                                                        if=
 =5FG.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Charac=
ter.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                          =
  game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer("requ=
estEntrance", Vector3.new(-4607.82275, 872.54248, -1667.55688))
                                                                        en=
d
                                                                    elseif=
 MyLevel >=3D 475 and MyLevel <=3D 524 or SelectMonster =3D=3D "Shanda" th=
en
                                                                        Mo=
n =3D "Shanda"
                                                                        Le=
velQuest =3D 2
                                                                        Na=
meQuest =3D "SkyExp1Quest"
                                                                        Na=
meMon =3D "Shanda"
                                                                        CF=
rameQuest =3D CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.42259299=
8, -0, 0.906319618, -0, 1, -0, -0.906319618, -0, -0.422592998)
                                                                        CF=
rameMon =3D CFrame.new(-7678.48974609375, 5566.40380859375, -497.215606689=
4531)
                                                                        if=
 =5FG.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Charac=
ter.HumanoidRootPart.Position).Magnitude > 10000 then
                                                                          =
  game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer("requ=
estEntrance", Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873=
047))
                                                                        en=
d
                                                                    elseif=
 MyLevel >=3D 525 and MyLevel <=3D 549 or SelectMonster =3D=3D "Royal Squa=
d" then
                                                                        Mo=
n =3D "Royal Squad"
                                                                        Le=
velQuest =3D 1
                                                                        Na=
meQuest =3D "SkyExp2Quest"
                                                                        Na=
meMon =3D "Royal Squad"
                                                                        CF=
rameQuest =3D CFrame.new(-7906.81592, 5634.6626, -1411.99194, -0, -0, -1, =
-0, 1, -0, 1, -0, -0)
                                                                        CF=
rameMon =3D CFrame.new(-7624.25244140625, 5658.13330078125, -1467.35424804=
6875)
                                                                    elseif=
 (MyLevel < 550 or MyLevel > 624) and SelectMonster ~=3D "Royal Soldier" t=
hen
                                                                        if=
 MyLevel >=3D 625 and MyLevel <=3D 649 or SelectMonster =3D=3D "Galley Pir=
ate" then
                                                                          =
  Mon =3D "Galley Pirate"
                                                                          =
  LevelQuest =3D 1
                                                                          =
  NameQuest =3D "FountainQuest"
                                                                          =
  NameMon =3D "Galley Pirate"
                                                                          =
  CFrameQuest =3D CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.08713138=
1, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, 0.087131381)
                                                                          =
  CFrameMon =3D CFrame.new(5551.02197265625, 78.90135192871094, 3930.41284=
1796875)
                                                                        el=
seif MyLevel >=3D 650 or SelectMonster =3D=3D "Galley Captain" then
                                                                          =
  Mon =3D "Galley Captain"
                                                                          =
  LevelQuest =3D 2
                                                                          =
  NameQuest =3D "FountainQuest"
                                                                          =
  NameMon =3D "Galley Captain"
                                                                          =
  CFrameQuest =3D CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.08713138=
1, -0, 0.996196866, -0, 1, -0, -0.996196866, -0, 0.087131381)
                                                                          =
  CFrameMon =3D CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375=
)
                                                                        en=
d
                                                                    else
                                                                        Mo=
n =3D "Royal Soldier"
                                                                        Le=
velQuest =3D 2
                                                                        Na=
meQuest =3D "SkyExp2Quest"
                                                                        Na=
meMon =3D "Royal Soldier"
                                                                        CF=
rameQuest =3D CFrame.new(-7906.81592, 5634.6626, -1411.99194, -0, -0, -1, =
-0, 1, -0, 1, -0, -0)
                                                                        CF=
rameMon =3D CFrame.new(-7836.75341796875, 5645.6640625, -1790.623657226562=
5)
                                                                    end
                                                                else
                                                                    Mon =
=3D "Fishman Commando"
                                                                    LevelQ=
uest =3D 2
                                                                    NameQu=
est =3D "FishmanQuest"
                                                                    NameMo=
n =3D "Fishman Commando"
                                                                    CFrame=
Quest =3D CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                    CFrame=
Mon =3D CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                                                                    if =5F=
G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.=
HumanoidRootPart.Position).Magnitude > 10000 then
                                                                        ga=
me:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer("requestE=
ntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                    end
                                                                end
                                                            else
                                                                Mon =3D "F=
ishman Warrior"
                                                                LevelQuest=
 =3D 1
                                                                NameQuest =
=3D "FishmanQuest"
                                                                NameMon =
=3D "Fishman Warrior"
                                                                CFrameQues=
t =3D CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                                                                CFrameMon =
=3D CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
                                                                if =5FG.Au=
toFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.Huma=
noidRootPart.Position).Magnitude > 10000 then
                                                                    game:G=
etService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer("requestEntra=
nce", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                                                                end
                                                            end
                                                        else
                                                            Mon =3D "Milit=
ary Spy"
                                                            LevelQuest =3D=
 2
                                                            NameQuest =3D =
"MagmaQuest"
                                                            NameMon =3D "M=
ilitary Spy"
                                                            CFrameQuest =
=3D CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, -0, 0.86=
6048813, -0, 1, -0, -0.866048813, -0, -0.499959469)
                                                            CFrameMon =3D =
CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
                                                        end
                                                    else
                                                        Mon =3D "Military =
Soldier"
                                                        LevelQuest =3D 1
                                                        NameQuest =3D "Mag=
maQuest"
                                                        NameMon =3D "Milit=
ary Soldier"
                                                        CFrameQuest =3D CF=
rame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, -0, 0.86604881=
3, -0, 1, -0, -0.866048813, -0, -0.499959469)
                                                        CFrameMon =3D CFra=
me.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
                                                    end
                                                else
                                                    Mon =3D "Gladiator"
                                                    LevelQuest =3D 2
                                                    NameQuest =3D "Colosse=
umQuest"
                                                    NameMon =3D "Gladiator=
"
                                                    CFrameQuest =3D CFrame=
.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, -0, -0.857167721,=
 -0, 1, -0, 0.857167721, -0, -0.515037298)
                                                    CFrameMon =3D CFrame.n=
ew(-1292.838134765625, 56.380882263183594, -3339.031494140625)
                                                end
                                            else
                                                Mon =3D "Dangerous Prisone=
r"
                                                LevelQuest =3D 2
                                                NameQuest =3D "PrisonerQue=
st"
                                                NameMon =3D "Dangerous Pri=
soner"
                                                CFrameQuest =3D CFrame.new=
(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918E-9, -0.995=
993316, 1.60817859E-9, 1, -5.16744869E-9, 0.995993316, -2.06384709E-9, -0.=
0894274712)
                                                CFrameMon =3D CFrame.new(5=
654.5634765625, 15.633401870727539, 866.2991943359375)
                                            end
                                        else
                                            Mon =3D "Dark Master"
                                            LevelQuest =3D 2
                                            NameQuest =3D "SkyQuest"
                                            NameMon =3D "Dark Master"
                                            CFrameQuest =3D CFrame.new(-48=
39.53027, 716.368591, -2619.44165, 0.866007268, -0, 0.500031412, -0, 1, -0=
, -0.500031412, -0, 0.866007268)
                                            CFrameMon =3D CFrame.new(-5259=
.8447265625, 391.3976745605469, -2229.035400390625)
                                        end
                                    else
                                        Mon =3D "Sky Bandit"
                                        LevelQuest =3D 1
                                        NameQuest =3D "SkyQuest"
                                        NameMon =3D "Sky Bandit"
                                        CFrameQuest =3D CFrame.new(-4839.5=
3027, 716.368591, -2619.44165, 0.866007268, -0, 0.500031412, -0, 1, -0, -0=
.500031412, -0, 0.866007268)
                                        CFrameMon =3D CFrame.new(-4953.207=
03125, 295.74420166015625, -2899.22900390625)
                                    end
                                else
                                    Mon =3D "Chief Petty Officer"
                                    LevelQuest =3D 1
                                    NameQuest =3D "MarineQuest2"
                                    NameMon =3D "Chief Petty Officer"
                                    CFrameQuest =3D CFrame.new(-5039.58643=
, 27.3500385, 4324.68018, -0, -0, -1, -0, 1, -0, 1, -0, -0)
                                    CFrameMon =3D CFrame.new(-4881.2309570=
3125, 22.65204429626465, 4273.75244140625)
                                end
                            else
                                Mon =3D "Snow Bandit"
                                LevelQuest =3D 1
                                NameQuest =3D "SnowQuest"
                                NameMon =3D "Snow Bandit"
                                CFrameQuest =3D CFrame.new(1389.74451, 88.=
1519318, -1298.90796, -0.342042685, -0, 0.939684391, -0, 1, -0, -0.9396843=
91, -0, -0.342042685)
                                CFrameMon =3D CFrame.new(1354.347900390625=
, 87.27277374267578, -1393.946533203125)
                            end
                        else
                            Mon =3D "Desert Officer"
                            LevelQuest =3D 2
                            NameQuest =3D "DesertQuest"
                            NameMon =3D "Desert Officer"
                            CFrameQuest =3D CFrame.new(894.488647, 5.14000=
702, 4392.43359, 0.819155693, -0, -0.573571265, -0, 1, -0, 0.573571265, -0=
, 0.819155693)
                            CFrameMon =3D CFrame.new(1608.2822265625, 8.61=
4224433898926, 4371.00732421875)
                        end
                    else
                        Mon =3D "Brute"
                        LevelQuest =3D 2
                        NameQuest =3D "BuggyQuest1"
                        NameMon =3D "Brute"
                        CFrameQuest =3D CFrame.new(-1141.07483, 4.10001802=
, 3831.5498, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.=
965929627)
                        CFrameMon =3D CFrame.new(-1140.083740234375, 14.80=
9885025024414, 4322.92138671875)
                    end
                else
                    Mon =3D "Pirate"
                    LevelQuest =3D 1
                    NameQuest =3D "BuggyQuest1"
                    NameMon =3D "Pirate"
                    CFrameQuest =3D CFrame.new(-1141.07483, 4.10001802, 38=
31.5498, 0.965929627, -0, -0.258804798, -0, 1, -0, 0.258804798, -0, 0.9659=
29627)
                    CFrameMon =3D CFrame.new(-1103.513427734375, 13.752052=
307128906, 3896.091064453125)
                end
            else
                Mon =3D "Gorilla"
                LevelQuest =3D 2
                NameQuest =3D "JungleQuest"
                NameMon =3D "Gorilla"
                CFrameQuest =3D CFrame.new(-1598.08911, 35.5501175, 153.37=
7838, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                CFrameMon =3D CFrame.new(-1129.8836669921875, 40.463546752=
92969, -525.4237060546875)
            end
        else
            Mon =3D "Monkey"
            LevelQuest =3D 1
            NameQuest =3D "JungleQuest"
            NameMon =3D "Monkey"
            CFrameQuest =3D CFrame.new(-1598.08911, 35.5501175, 153.377838=
, -0, -0, 1, -0, 1, -0, -1, -0, -0)
            CFrameMon =3D CFrame.new(-1448.51806640625, 67.85301208496094,=
 11.46579647064209)
        end
    elseif not World2 then
        if World3 then
            if MyLevel >=3D 1500 and MyLevel <=3D 1524 or SelectMonster =
=3D=3D "Pirate Millionaire" then
                Mon =3D "Pirate Millionaire"
                LevelQuest =3D 1
                NameQuest =3D "PiratePortQuest"
                NameMon =3D "Pirate Millionaire"
                CFrameQuest =3D CFrame.new(-450.104645, 107.681458, 5950.7=
2607, 0.957107544, -0, -0.289732844, -0, 1, -0, 0.289732844, -0, 0.9571075=
44)
                CFrameMon =3D CFrame.new(-245.9963836669922, 47.3061523437=
5, 5584.1005859375)
            elseif (MyLevel < 1525 or MyLevel > 1574) and SelectMonster ~=
=3D "Pistol Billionaire" then
                if MyLevel >=3D 1575 and MyLevel <=3D 1599 or SelectMonste=
r =3D=3D "Dragon Crew Warrior" then
                    Mon =3D "Dragon Crew Warrior"
                    LevelQuest =3D 1
                    NameQuest =3D "DragonCrewQuest"
                    NameMon =3D "Dragon Crew Warrior"
                    CFrameQuest =3D CFrame.new(6750.4931640625, 127.449165=
34423828, -711.0308837890625)
                    CFrameMon =3D CFrame.new(6709.76367, 52.3442993, -1139=
.02966, -0.763515472, -0, 0.645789504, -0, 1, -0, -0.645789504, -0, -0.763=
515472)
                elseif MyLevel >=3D 1600 and MyLevel <=3D 1624 or SelectMo=
nster =3D=3D "Dragon Crew Archer" then
                    Mon =3D "Dragon Crew Archer"
                    NameQuest =3D "DragonCrewQuest"
                    LevelQuest =3D 2
                    NameMon =3D "Dragon Crew Archer"
                    CFrameQuest =3D CFrame.new(6750.4931640625, 127.449165=
34423828, -711.0308837890625)
                    CFrameMon =3D CFrame.new(6668.76172, 481.376923, 329.1=
2207, -0.121787429, -0, -0.992556155, -0, 1, -0, 0.992556155, -0, -0.12178=
7429)
                elseif (MyLevel < 1625 or MyLevel > 1649) and SelectMonste=
r ~=3D "Hydra Enforcer" then
                    if (MyLevel < 1650 or MyLevel > 1699) and SelectMonste=
r ~=3D "Venomous Assailant" then
                        if (MyLevel < 1700 or MyLevel > 1724) and SelectMo=
nster ~=3D "Marine Commodore" then
                            if (MyLevel < 1725 or MyLevel > 1774) and Sele=
ctMonster ~=3D "Marine Rear Admiral" then
                                if (MyLevel < 1775 or MyLevel > 1799) and =
SelectMonster ~=3D "Fishman Raider" then
                                    if MyLevel >=3D 1800 and MyLevel <=3D =
1824 or SelectMonster =3D=3D "Fishman Captain" then
                                        Mon =3D "Fishman Captain"
                                        LevelQuest =3D 2
                                        NameQuest =3D "DeepForestIsland3"
                                        NameMon =3D "Fishman Captain"
                                        CFrameQuest =3D CFrame.new(-10581.=
6563, 330.872955, -8761.18652, -0.882952213, -0, 0.469463557, -0, 1, -0, -=
0.469463557, -0, -0.882952213)
                                        CFrameMon =3D CFrame.new(-10994.70=
1171875, 352.38140869140625, -9002.1103515625)
                                    elseif (MyLevel < 1825 or MyLevel > 18=
49) and SelectMonster ~=3D "Forest Pirate" then
                                        if (MyLevel < 1850 or MyLevel > 18=
99) and SelectMonster ~=3D "Mythological Pirate" then
                                            if MyLevel >=3D 1900 and MyLev=
el <=3D 1924 or SelectMonster =3D=3D "Jungle Pirate" then
                                                Mon =3D "Jungle Pirate"
                                                LevelQuest =3D 1
                                                NameQuest =3D "DeepForestI=
sland2"
                                                NameMon =3D "Jungle Pirate=
"
                                                CFrameQuest =3D CFrame.new=
(-12680.3818, 389.971039, -9902.01953, -0.0871315002, -0, 0.996196866, -0,=
 1, -0, -0.996196866, -0, -0.0871315002)
                                                CFrameMon =3D CFrame.new(-=
12256.16015625, 331.73828125, -10485.8369140625)
                                            elseif MyLevel >=3D 1925 and M=
yLevel <=3D 1974 or SelectMonster =3D=3D "Musketeer Pirate" then
                                                Mon =3D "Musketeer Pirate"=

                                                LevelQuest =3D 2
                                                NameQuest =3D "DeepForestI=
sland2"
                                                NameMon =3D "Musketeer Pir=
ate"
                                                CFrameQuest =3D CFrame.new=
(-12680.3818, 389.971039, -9902.01953, -0.0871315002, -0, 0.996196866, -0,=
 1, -0, -0.996196866, -0, -0.0871315002)
                                                CFrameMon =3D CFrame.new(-=
13457.904296875, 391.545654296875, -9859.177734375)
                                            elseif MyLevel >=3D 1975 and M=
yLevel <=3D 1999 or SelectMonster =3D=3D "Reborn Skeleton" then
                                                Mon =3D "Reborn Skeleton"
                                                LevelQuest =3D 1
                                                NameQuest =3D "HauntedQues=
t1"
                                                NameMon =3D "Reborn Skelet=
on"
                                                CFrameQuest =3D CFrame.new=
(-9479.2168, 141.215088, 5566.09277, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                                                CFrameMon =3D CFrame.new(-=
8763.7236328125, 165.72299194335938, 6159.86181640625)
                                            elseif (MyLevel < 2000 or MyLe=
vel > 2024) and SelectMonster ~=3D "Living Zombie" then
                                                if MyLevel >=3D 2025 and M=
yLevel <=3D 2049 or SelectMonster =3D=3D "Demonic Soul" then
                                                    Mon =3D "Demonic Soul"=

                                                    LevelQuest =3D 1
                                                    NameQuest =3D "Haunted=
Quest2"
                                                    NameMon =3D "Demonic S=
oul"
                                                    CFrameQuest =3D CFrame=
.new(-9516.99316, 172.017181, 6078.46533, -0, -0, -1, -0, 1, -0, 1, -0, -0=
)
                                                    CFrameMon =3D CFrame.n=
ew(-9505.8720703125, 172.10482788085938, 6158.9931640625)
                                                elseif MyLevel >=3D 2050 a=
nd MyLevel <=3D 2074 or SelectMonster =3D=3D "Posessed Mummy" then
                                                    Mon =3D "Posessed Mumm=
y"
                                                    LevelQuest =3D 2
                                                    NameQuest =3D "Haunted=
Quest2"
                                                    NameMon =3D "Posessed =
Mummy"
                                                    CFrameQuest =3D CFrame=
.new(-9516.99316, 172.017181, 6078.46533, -0, -0, -1, -0, 1, -0, 1, -0, -0=
)
                                                    CFrameMon =3D CFrame.n=
ew(-9582.0224609375, 6.251527309417725, 6205.478515625)
                                                elseif (MyLevel < 2075 or =
MyLevel > 2099) and SelectMonster ~=3D "Peanut Scout" then
                                                    if MyLevel >=3D 2100 a=
nd MyLevel <=3D 2124 or SelectMonster =3D=3D "Peanut President" then
                                                        Mon =3D "Peanut Pr=
esident"
                                                        LevelQuest =3D 2
                                                        NameQuest =3D "Nut=
sIslandQuest"
                                                        NameMon =3D "Peanu=
t President"
                                                        CFrameQuest =3D CF=
rame.new(-2104.3908691406, 38.104167938232, -10194.21875, -0, -0, -1, -0, =
1, -0, 1, -0, -0)
                                                        CFrameMon =3D CFra=
me.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
                                                    elseif MyLevel >=3D 21=
25 and MyLevel <=3D 2149 or SelectMonster =3D=3D "Ice Cream Chef" then
                                                        Mon =3D "Ice Cream=
 Chef"
                                                        LevelQuest =3D 1
                                                        NameQuest =3D "Ice=
CreamIslandQuest"
                                                        NameMon =3D "Ice C=
ream Chef"
                                                        CFrameQuest =3D CF=
rame.new(-820.64825439453, 65.819526672363, -10965.795898438, -0, -0, -1, =
-0, 1, -0, 1, -0, -0)
                                                        CFrameMon =3D CFra=
me.new(-872.24658203125, 65.81957244873047, -10919.95703125)
                                                    elseif MyLevel >=3D 21=
50 and MyLevel <=3D 2199 or SelectMonster =3D=3D "Ice Cream Commander" the=
n
                                                        Mon =3D "Ice Cream=
 Commander"
                                                        LevelQuest =3D 2
                                                        NameQuest =3D "Ice=
CreamIslandQuest"
                                                        NameMon =3D "Ice C=
ream Commander"
                                                        CFrameQuest =3D CF=
rame.new(-820.64825439453, 65.819526672363, -10965.795898438, -0, -0, -1, =
-0, 1, -0, 1, -0, -0)
                                                        CFrameMon =3D CFra=
me.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
                                                    elseif MyLevel >=3D 22=
00 and MyLevel <=3D 2224 or SelectMonster =3D=3D "Cookie Crafter" then
                                                        Mon =3D "Cookie Cr=
after"
                                                        LevelQuest =3D 1
                                                        NameQuest =3D "Cak=
eQuest1"
                                                        NameMon =3D "Cooki=
e Crafter"
                                                        CFrameQuest =3D CF=
rame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053E-8=
, 0.288177818, 6.9301187E-8, 1, 7.51931211E-8, -0.288177818, -5.2032135E-8=
, 0.957576931)
                                                        CFrameMon =3D CFra=
me.new(-2374.13671875, 37.79826354980469, -12125.30859375)
                                                    elseif (MyLevel < 2225=
 or MyLevel > 2249) and SelectMonster ~=3D "Cake Guard" then
                                                        if MyLevel >=3D 22=
50 and MyLevel <=3D 2274 or SelectMonster =3D=3D "Baking Staff" then
                                                            Mon =3D "Bakin=
g Staff"
                                                            LevelQuest =3D=
 1
                                                            NameQuest =3D =
"CakeQuest2"
                                                            NameMon =3D "B=
aking Staff"
                                                            CFrameQuest =
=3D CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.221421=
43E-8, 0.250778586, 4.74911062E-8, 1, 1.49904711E-8, -0.250778586, 2.64211=
941E-8, -0.96804446)
                                                            CFrameMon =3D =
CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
                                                        elseif MyLevel >=
=3D 2275 and MyLevel <=3D 2299 or SelectMonster =3D=3D "Head Baker" then
                                                            Mon =3D "Head =
Baker"
                                                            LevelQuest =3D=
 2
                                                            NameQuest =3D =
"CakeQuest2"
                                                            NameMon =3D "H=
ead Baker"
                                                            CFrameQuest =
=3D CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.221421=
43E-8, 0.250778586, 4.74911062E-8, 1, 1.49904711E-8, -0.250778586, 2.64211=
941E-8, -0.96804446)
                                                            CFrameMon =3D =
CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
                                                        elseif (MyLevel < =
2300 or MyLevel > 2324) and SelectMonster ~=3D "Cocoa Warrior" then
                                                            if MyLevel >=
=3D 2325 and MyLevel <=3D 2349 or SelectMonster =3D=3D "Chocolate Bar Batt=
ler" then
                                                                Mon =3D "C=
hocolate Bar Battler"
                                                                LevelQuest=
 =3D 2
                                                                NameQuest =
=3D "ChocQuest1"
                                                                NameMon =
=3D "Chocolate Bar Battler"
                                                                CFrameQues=
t =3D CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375=
)
                                                                CFrameMon =
=3D CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
                                                            elseif MyLevel=
 >=3D 2350 and MyLevel <=3D 2374 or SelectMonster =3D=3D "Sweet Thief" the=
n
                                                                Mon =3D "S=
weet Thief"
                                                                LevelQuest=
 =3D 1
                                                                NameQuest =
=3D "ChocQuest2"
                                                                NameMon =
=3D "Sweet Thief"
                                                                CFrameQues=
t =3D CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)=

                                                                CFrameMon =
=3D CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
                                                            elseif MyLevel=
 >=3D 2375 and MyLevel <=3D 2399 or SelectMonster =3D=3D "Candy Rebel" the=
n
                                                                Mon =3D "C=
andy Rebel"
                                                                LevelQuest=
 =3D 2
                                                                NameQuest =
=3D "ChocQuest2"
                                                                NameMon =
=3D "Candy Rebel"
                                                                CFrameQues=
t =3D CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)=

                                                                CFrameMon =
=3D CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
                                                            elseif (MyLeve=
l < 2400 or MyLevel > 2424) and SelectMonster ~=3D "Candy Pirate" then
                                                                if MyLevel=
 >=3D 2425 and MyLevel <=3D 2449 or SelectMonster =3D=3D "Snow Demon" then=

                                                                    Mon =
=3D "Snow Demon"
                                                                    LevelQ=
uest =3D 2
                                                                    NameQu=
est =3D "CandyQuest1"
                                                                    NameMo=
n =3D "Snow Demon"
                                                                    CFrame=
Quest =3D CFrame.new(-1150.0400390625, 20.378934860229492, -14446.33496093=
75)
                                                                    CFrame=
Mon =3D CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
                                                                elseif MyL=
evel >=3D 2450 and MyLevel <=3D 2474 or SelectMonster =3D=3D "Isle Outlaw"=
 then
                                                                    Mon =
=3D "Isle Outlaw"
                                                                    LevelQ=
uest =3D 1
                                                                    NameQu=
est =3D "TikiQuest1"
                                                                    NameMo=
n =3D "Isle Outlaw"
                                                                    CFrame=
Quest =3D CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632=
812)
                                                                    CFrame=
Mon =3D CFrame.new(-16442.814453125, 116.13899993896484, -264.463775634765=
6)
                                                                elseif (My=
Level < 2475 or MyLevel > 2524) and SelectMonster ~=3D "Island Boy" then
                                                                    if MyL=
evel >=3D 2525 and MyLevel <=3D 2550 or SelectMonster =3D=3D "Isle Champio=
n" then
                                                                        Mo=
n =3D "Isle Champion"
                                                                        Le=
velQuest =3D 2
                                                                        Na=
meQuest =3D "TikiQuest2"
                                                                        Na=
meMon =3D "Isle Champion"
                                                                        CF=
rameQuest =3D CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390=
625)
                                                                        CF=
rameMon =3D CFrame.new(-16641.6796875, 235.7825469970703, 1031.28295898437=
5)
                                                                    elseif=
 (MyLevel < 2550 or MyLevel > 2574) and SelectMonster ~=3D "Serpent Hunter=
" then
                                                                        if=
 MyLevel >=3D 2575 or SelectMonster =3D=3D "Skull Slayer" then
                                                                          =
  Mon =3D "Skull Slayer"
                                                                          =
  LevelQuest =3D 2
                                                                          =
  NameQuest =3D "TikiQuest3"
                                                                          =
  NameMon =3D "Skull Slayer"
                                                                          =
  CFrameQuest =3D CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068=
401, -0, -0.308980465, -0, 1, -0, 0.308980465, -0, 0.951068401)
                                                                          =
  CFrameMon =3D CFrame.new(-16855.043, 122.457253, 1478.15308, -0.99939227=
1, -0, -0.0348687991, -0, 1, -0, 0.0348687991, -0, -0.999392271)
                                                                        en=
d
                                                                    else
                                                                        Mo=
n =3D "Serpent Hunter"
                                                                        Le=
velQuest =3D 1
                                                                        Na=
meQuest =3D "TikiQuest3"
                                                                        Na=
meMon =3D "Serpent Hunter"
                                                                        CF=
rameQuest =3D CFrame.new(-16665.1914, 104.596405, 1579.69434, 0.951068401,=
 -0, -0.308980465, -0, 1, -0, 0.308980465, -0, 0.951068401)
                                                                        CF=
rameMon =3D CFrame.new(-16521.0625, 106.09285, 1488.78467, 0.469467044, -0=
, 0.882950008, -0, 1, -0, -0.882950008, -0, 0.469467044)
                                                                    end
                                                                else
                                                                    Mon =
=3D "Island Boy"
                                                                    LevelQ=
uest =3D 2
                                                                    NameQu=
est =3D "TikiQuest1"
                                                                    NameMo=
n =3D "Island Boy"
                                                                    CFrame=
Quest =3D CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632=
812)
                                                                    CFrame=
Mon =3D CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562=
)
                                                                end
                                                            else
                                                                Mon =3D "C=
andy Pirate"
                                                                LevelQuest=
 =3D 1
                                                                NameQuest =
=3D "CandyQuest1"
                                                                NameMon =
=3D "Candy Pirate"
                                                                CFrameQues=
t =3D CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                                                                CFrameMon =
=3D CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
                                                            end
                                                        else
                                                            Mon =3D "Cocoa=
 Warrior"
                                                            LevelQuest =3D=
 1
                                                            NameQuest =3D =
"ChocQuest1"
                                                            NameMon =3D "C=
ocoa Warrior"
                                                            CFrameQuest =
=3D CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                                                            CFrameMon =3D =
CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
                                                        end
                                                    else
                                                        Mon =3D "Cake Guar=
d"
                                                        LevelQuest =3D 2
                                                        NameQuest =3D "Cak=
eQuest1"
                                                        NameMon =3D "Cake =
Guard"
                                                        CFrameQuest =3D CF=
rame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053E-8=
, 0.288177818, 6.9301187E-8, 1, 7.51931211E-8, -0.288177818, -5.2032135E-8=
, 0.957576931)
                                                        CFrameMon =3D CFra=
me.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
                                                    end
                                                else
                                                    Mon =3D "Peanut Scout"=

                                                    LevelQuest =3D 1
                                                    NameQuest =3D "NutsIsl=
andQuest"
                                                    NameMon =3D "Peanut Sc=
out"
                                                    CFrameQuest =3D CFrame=
.new(-2104.3908691406, 38.104167938232, -10194.21875, -0, -0, -1, -0, 1, -=
0, 1, -0, -0)
                                                    CFrameMon =3D CFrame.n=
ew(-2143.241943359375, 47.72198486328125, -10029.9951171875)
                                                end
                                            else
                                                Mon =3D "Living Zombie"
                                                LevelQuest =3D 2
                                                NameQuest =3D "HauntedQues=
t1"
                                                NameMon =3D "Living Zombie=
"
                                                CFrameQuest =3D CFrame.new=
(-9479.2168, 141.215088, 5566.09277, -0, -0, 1, -0, 1, -0, -1, -0, -0)
                                                CFrameMon =3D CFrame.new(-=
10144.1318359375, 138.62667846679688, 5838.0888671875)
                                            end
                                        else
                                            Mon =3D "Mythological Pirate"
                                            LevelQuest =3D 2
                                            NameQuest =3D "DeepForestIslan=
d"
                                            NameMon =3D "Mythological Pira=
te"
                                            CFrameQuest =3D CFrame.new(-13=
234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, -0, 1, -0,=
 0.707079291, -0, 0.707134247)
                                            CFrameMon =3D CFrame.new(-1368=
0.607421875, 501.08154296875, -6991.189453125)
                                        end
                                    else
                                        Mon =3D "Forest Pirate"
                                        LevelQuest =3D 1
                                        NameQuest =3D "DeepForestIsland"
                                        NameMon =3D "Forest Pirate"
                                        CFrameQuest =3D CFrame.new(-13234.=
04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, -0, 1, -0, 0.7=
07079291, -0, 0.707134247)
                                        CFrameMon =3D CFrame.new(-13274.47=
8515625, 332.3781433105469, -7769.58056640625)
                                    end
                                else
                                    Mon =3D "Fishman Raider"
                                    LevelQuest =3D 1
                                    NameQuest =3D "DeepForestIsland3"
                                    NameMon =3D "Fishman Raider"
                                    CFrameQuest =3D CFrame.new(-10581.6563=
, 330.872955, -8761.18652, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.46=
9463557, -0, -0.882952213)
                                    CFrameMon =3D CFrame.new(-10407.526367=
1875, 331.76263427734375, -8368.5166015625)
                                end
                            else
                                Mon =3D "Marine Rear Admiral"
                                LevelQuest =3D 2
                                NameQuest =3D "MarineTreeIsland"
                                NameMon =3D "Marine Rear Admiral"
                                CFrameQuest =3D CFrame.new(2481.0922851562=
5, 74.27049255371094, -6779.640625)
                                CFrameMon =3D CFrame.new(3761.81006, 123.9=
12003, -6823.52197, 0.961273968, -0, 0.275594592, -0, 1, -0, -0.275594592,=
 -0, 0.961273968)
                            end
                        else
                            Mon =3D "Marine Commodore"
                            LevelQuest =3D 1
                            NameQuest =3D "MarineTreeIsland"
                            NameMon =3D "Marine Commodore"
                            CFrameQuest =3D CFrame.new(2481.09228515625, 7=
4.27049255371094, -6779.640625)
                            CFrameMon =3D CFrame.new(2577.25391, 75.610000=
6, -7739.87207, 0.499959469, -0, 0.866048813, -0, 1, -0, -0.866048813, -0,=
 0.499959469)
                        end
                    else
                        Mon =3D "Venomous Assailant"
                        NameQuest =3D "VenomCrewQuest"
                        LevelQuest =3D 2
                        NameMon =3D "Venomous Assailant"
                        CFrameQuest =3D CFrame.new(5206.40185546875, 1004.=
10498046875, 748.3504638671875)
                        CFrameMon =3D CFrame.new(4674.92676, 1134.82654, 9=
96.308838, 0.731321394, -0, -0.682033002, -0, 1, -0, 0.682033002, -0, 0.73=
1321394)
                    end
                else
                    Mon =3D "Hydra Enforcer"
                    NameQuest =3D "VenomCrewQuest"
                    LevelQuest =3D 1
                    NameMon =3D "Hydra Enforcer"
                    CFrameQuest =3D CFrame.new(5206.40185546875, 1004.1049=
8046875, 748.3504638671875)
                    CFrameMon =3D CFrame.new(4547.11523, 1003.10217, 334.1=
94824, 0.388810456, -0, -0.921317935, -0, 1, -0, 0.921317935, -0, 0.388810=
456)
                end
            else
                Mon =3D "Pistol Billionaire"
                LevelQuest =3D 2
                NameQuest =3D "PiratePortQuest"
                NameMon =3D "Pistol Billionaire"
                CFrameQuest =3D CFrame.new(-450.104645, 107.681458, 5950.7=
2607, 0.957107544, -0, -0.289732844, -0, 1, -0, 0.289732844, -0, 0.9571075=
44)
                CFrameMon =3D CFrame.new(-54.8110352, 83.7698746, 5947.840=
82, -0.965929747, -0, 0.258804798, -0, 1, -0, -0.258804798, -0, -0.9659297=
47)
            end
        end
    elseif (MyLevel < 700 or MyLevel > 724) and SelectMonster ~=3D "Raider=
" then
        if MyLevel >=3D 725 and MyLevel <=3D 774 or SelectMonster =3D=3D "=
Mercenary" then
            Mon =3D "Mercenary"
            LevelQuest =3D 2
            NameQuest =3D "Area1Quest"
            NameMon =3D "Mercenary"
            CFrameQuest =3D CFrame.new(-429.543518, 71.7699966, 1836.18188=
, -0.22495985, -0, -0.974368095, -0, 1, -0, 0.974368095, -0, -0.22495985)
            CFrameMon =3D CFrame.new(-1004.3244018554688, 80.1588668823242=
2, 1424.619384765625)
        elseif MyLevel >=3D 775 and MyLevel <=3D 799 or SelectMonster =3D=
=3D "Swan Pirate" then
            Mon =3D "Swan Pirate"
            LevelQuest =3D 1
            NameQuest =3D "Area2Quest"
            NameMon =3D "Swan Pirate"
            CFrameQuest =3D CFrame.new(638.43811, 71.769989, 918.282898, 0=
.139203906, -0, 0.99026376, -0, 1, -0, -0.99026376, -0, 0.139203906)
            CFrameMon =3D CFrame.new(1068.664306640625, 137.61428833007812=
, 1322.1060791015625)
        elseif (MyLevel < 800 or MyLevel > 874) and SelectMonster ~=3D "Fa=
ctory Staff" then
            if MyLevel >=3D 875 and MyLevel <=3D 899 or SelectMonster =3D=
=3D "Marine Lieutenant" then
                Mon =3D "Marine Lieutenant"
                LevelQuest =3D 1
                NameQuest =3D "MarineQuest3"
                NameMon =3D "Marine Lieutenant"
                CFrameQuest =3D CFrame.new(-2440.79639, 71.7140732, -3216.=
06812, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007=
268)
                CFrameMon =3D CFrame.new(-2821.372314453125, 75.8972778320=
3125, -3070.089111328125)
            elseif MyLevel >=3D 900 and MyLevel <=3D 949 or SelectMonster =
=3D=3D "Marine Captain" then
                Mon =3D "Marine Captain"
                LevelQuest =3D 2
                NameQuest =3D "MarineQuest3"
                NameMon =3D "Marine Captain"
                CFrameQuest =3D CFrame.new(-2440.79639, 71.7140732, -3216.=
06812, 0.866007268, -0, 0.500031412, -0, 1, -0, -0.500031412, -0, 0.866007=
268)
                CFrameMon =3D CFrame.new(-1861.2310791015625, 80.176582336=
42578, -3254.697509765625)
            elseif (MyLevel < 950 or MyLevel > 974) and SelectMonster ~=3D=
 "Zombie" then
                if MyLevel >=3D 975 and MyLevel <=3D 999 or SelectMonster =
=3D=3D "Vampire" then
                    Mon =3D "Vampire"
                    LevelQuest =3D 2
                    NameQuest =3D "ZombieQuest"
                    NameMon =3D "Vampire"
                    CFrameQuest =3D CFrame.new(-5497.06152, 47.5923004, -7=
95.237061, -0.29242146, -0, -0.95628953, -0, 1, -0, 0.95628953, -0, -0.292=
42146)
                    CFrameMon =3D CFrame.new(-6037.66796875, 32.1846389770=
5078, -1340.6597900390625)
                elseif (MyLevel < 1000 or MyLevel > 1049) and SelectMonste=
r ~=3D "Snow Trooper" then
                    if MyLevel >=3D 1050 and MyLevel <=3D 1099 or SelectMo=
nster =3D=3D "Winter Warrior" then
                        Mon =3D "Winter Warrior"
                        LevelQuest =3D 2
                        NameQuest =3D "SnowMountainQuest"
                        NameMon =3D "Winter Warrior"
                        CFrameQuest =3D CFrame.new(609.858826, 400.119904,=
 -5372.25928, -0.374604106, -0, 0.92718488, -0, 1, -0, -0.92718488, -0, -0=
.374604106)
                        CFrameMon =3D CFrame.new(1142.7451171875, 475.6398=
010253906, -5199.41650390625)
                    elseif MyLevel >=3D 1100 and MyLevel <=3D 1124 or Sele=
ctMonster =3D=3D "Lab Subordinate" then
                        Mon =3D "Lab Subordinate"
                        LevelQuest =3D 1
                        NameQuest =3D "IceSideQuest"
                        NameMon =3D "Lab Subordinate"
                        CFrameQuest =3D CFrame.new(-6064.06885, 15.2422857=
, -4902.97852, 0.453972578, -0, -0.891015649, -0, 1, -0, 0.891015649, -0, =
0.453972578)
                        CFrameMon =3D CFrame.new(-5707.4716796875, 15.9517=
09747314453, -4513.39208984375)
                    elseif MyLevel >=3D 1125 and MyLevel <=3D 1174 or Sele=
ctMonster =3D=3D "Horned Warrior" then
                        Mon =3D "Horned Warrior"
                        LevelQuest =3D 2
                        NameQuest =3D "IceSideQuest"
                        NameMon =3D "Horned Warrior"
                        CFrameQuest =3D CFrame.new(-6064.06885, 15.2422857=
, -4902.97852, 0.453972578, -0, -0.891015649, -0, 1, -0, 0.891015649, -0, =
0.453972578)
                        CFrameMon =3D CFrame.new(-6341.36669921875, 15.951=
770782470703, -5723.162109375)
                    elseif (MyLevel < 1175 or MyLevel > 1199) and SelectMo=
nster ~=3D "Magma Ninja" then
                        if (MyLevel < 1200 or MyLevel > 1249) and SelectMo=
nster ~=3D "Lava Pirate" then
                            if MyLevel >=3D 1250 and MyLevel <=3D 1274 or =
SelectMonster =3D=3D "Ship Deckhand" then
                                Mon =3D "Ship Deckhand"
                                LevelQuest =3D 1
                                NameQuest =3D "ShipQuest1"
                                NameMon =3D "Ship Deckhand"
                                CFrameQuest =3D CFrame.new(1037.80127, 125=
.092171, 32911.6016)
                                CFrameMon =3D CFrame.new(1212.011108398437=
5, 150.79205322265625, 33059.24609375)
                                if =5FG.AutoFarm and (CFrameQuest.Position=
 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude=
 > 10000 then
                                    game:GetService("ReplicatedStorage").R=
emotes.CommF=5F:InvokeServer("requestEntrance", Vector3.new(923.2125244140=
6, 126.9760055542, 32852.83203125))
                                end
                            elseif (MyLevel < 1275 or MyLevel > 1299) and =
SelectMonster ~=3D "Ship Engineer" then
                                if MyLevel >=3D 1300 and MyLevel <=3D 1324=
 or SelectMonster =3D=3D "Ship Steward" then
                                    Mon =3D "Ship Steward"
                                    LevelQuest =3D 1
                                    NameQuest =3D "ShipQuest2"
                                    NameMon =3D "Ship Steward"
                                    CFrameQuest =3D CFrame.new(968.80957, =
125.092171, 33244.125)
                                    CFrameMon =3D CFrame.new(919.438537597=
6562, 129.55599975585938, 33436.03515625)
                                    if =5FG.AutoFarm and (CFrameQuest.Posi=
tion - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magni=
tude > 10000 then
                                        game:GetService("ReplicatedStorage=
").Remotes.CommF=5F:InvokeServer("requestEntrance", Vector3.new(923.212524=
41406, 126.9760055542, 32852.83203125))
                                    end
                                elseif (MyLevel < 1325 or MyLevel > 1349) =
and SelectMonster ~=3D "Ship Officer" then
                                    if (MyLevel < 1350 or MyLevel > 1374) =
and SelectMonster ~=3D "Arctic Warrior" then
                                        if MyLevel >=3D 1375 and MyLevel <=
=3D 1424 or SelectMonster =3D=3D "Snow Lurker" then
                                            Mon =3D "Snow Lurker"
                                            LevelQuest =3D 2
                                            NameQuest =3D "FrostQuest"
                                            NameMon =3D "Snow Lurker"
                                            CFrameQuest =3D CFrame.new(566=
7.6582, 26.7997818, -6486.08984, -0.933587909, -0, -0.358349502, -0, 1, -0=
, 0.358349502, -0, -0.933587909)
                                            CFrameMon =3D CFrame.new(5407.=
07373046875, 69.19437408447266, -6880.88037109375)
                                        elseif (MyLevel < 1425 or MyLevel =
> 1449) and SelectMonster ~=3D "Sea Soldier" then
                                            if MyLevel >=3D 1450 or Select=
Monster =3D=3D "Water Fighter" then
                                                Mon =3D "Water Fighter"
                                                LevelQuest =3D 2
                                                NameQuest =3D "ForgottenQu=
est"
                                                NameMon =3D "Water Fighter=
"
                                                CFrameQuest =3D CFrame.new=
(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, -0, 1=
, -0, 0.13915664, -0, 0.990270376)
                                                CFrameMon =3D CFrame.new(-=
3352.9013671875, 285.01556396484375, -10534.841796875)
                                            end
                                        else
                                            Mon =3D "Sea Soldier"
                                            LevelQuest =3D 1
                                            NameQuest =3D "ForgottenQuest"=

                                            NameMon =3D "Sea Soldier"
                                            CFrameQuest =3D CFrame.new(-30=
54.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, -0, 1, -0=
, 0.13915664, -0, 0.990270376)
                                            CFrameMon =3D CFrame.new(-3028=
.2236328125, 64.67451477050781, -9775.4267578125)
                                        end
                                    else
                                        Mon =3D "Arctic Warrior"
                                        LevelQuest =3D 1
                                        NameQuest =3D "FrostQuest"
                                        NameMon =3D "Arctic Warrior"
                                        CFrameQuest =3D CFrame.new(5667.65=
82, 26.7997818, -6486.08984, -0.933587909, -0, -0.358349502, -0, 1, -0, 0.=
358349502, -0, -0.933587909)
                                        CFrameMon =3D CFrame.new(5966.2460=
9375, 62.97002029418945, -6179.3828125)
                                        if =5FG.AutoFarm and (CFrameQuest.=
Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).M=
agnitude > 10000 then
                                            game:GetService("ReplicatedSto=
rage").Remotes.CommF=5F:InvokeServer("requestEntrance", Vector3.new(-6508.=
5581054688, 5000.034996032715, -132.83953857422))
                                        end
                                    end
                                else
                                    Mon =3D "Ship Officer"
                                    LevelQuest =3D 2
                                    NameQuest =3D "ShipQuest2"
                                    NameMon =3D "Ship Officer"
                                    CFrameQuest =3D CFrame.new(968.80957, =
125.092171, 33244.125)
                                    CFrameMon =3D CFrame.new(1036.01794433=
59375, 181.4390411376953, 33315.7265625)
                                    if =5FG.AutoFarm and (CFrameQuest.Posi=
tion - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magni=
tude > 10000 then
                                        game:GetService("ReplicatedStorage=
").Remotes.CommF=5F:InvokeServer("requestEntrance", Vector3.new(923.212524=
41406, 126.9760055542, 32852.83203125))
                                    end
                                end
                            else
                                Mon =3D "Ship Engineer"
                                LevelQuest =3D 2
                                NameQuest =3D "ShipQuest1"
                                NameMon =3D "Ship Engineer"
                                CFrameQuest =3D CFrame.new(1037.80127, 125=
.092171, 32911.6016)
                                CFrameMon =3D CFrame.new(919.4786376953125=
, 43.54401397705078, 32779.96875)
                                if =5FG.AutoFarm and (CFrameQuest.Position=
 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude=
 > 10000 then
                                    game:GetService("ReplicatedStorage").R=
emotes.CommF=5F:InvokeServer("requestEntrance", Vector3.new(923.2125244140=
6, 126.9760055542, 32852.83203125))
                                end
                            end
                        else
                            Mon =3D "Lava Pirate"
                            LevelQuest =3D 2
                            NameQuest =3D "FireSideQuest"
                            NameMon =3D "Lava Pirate"
                            CFrameQuest =3D CFrame.new(-5428.03174, 15.062=
2921, -5299.43457, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557,=
 -0, -0.882952213)
                            CFrameMon =3D CFrame.new(-5213.33154296875, 49=
.73788070678711, -4701.451171875)
                        end
                    else
                        Mon =3D "Magma Ninja"
                        LevelQuest =3D 1
                        NameQuest =3D "FireSideQuest"
                        NameMon =3D "Magma Ninja"
                        CFrameQuest =3D CFrame.new(-5428.03174, 15.0622921=
, -5299.43457, -0.882952213, -0, 0.469463557, -0, 1, -0, -0.469463557, -0,=
 -0.882952213)
                        CFrameMon =3D CFrame.new(-5449.6728515625, 76.6587=
4481201172, -5808.20068359375)
                    end
                else
                    Mon =3D "Snow Trooper"
                    LevelQuest =3D 1
                    NameQuest =3D "SnowMountainQuest"
                    NameMon =3D "Snow Trooper"
                    CFrameQuest =3D CFrame.new(609.858826, 400.119904, -53=
72.25928, -0.374604106, -0, 0.92718488, -0, 1, -0, -0.92718488, -0, -0.374=
604106)
                    CFrameMon =3D CFrame.new(549.1473388671875, 427.387054=
4433594, -5563.69873046875)
                end
            else
                Mon =3D "Zombie"
                LevelQuest =3D 1
                NameQuest =3D "ZombieQuest"
                NameMon =3D "Zombie"
                CFrameQuest =3D CFrame.new(-5497.06152, 47.5923004, -795.2=
37061, -0.29242146, -0, -0.95628953, -0, 1, -0, 0.95628953, -0, -0.2924214=
6)
                CFrameMon =3D CFrame.new(-5657.77685546875, 78.96973419189=
453, -928.68701171875)
            end
        else
            Mon =3D "Factory Staff"
            NameQuest =3D "Area2Quest"
            LevelQuest =3D 2
            NameMon =3D "Factory Staff"
            CFrameQuest =3D CFrame.new(632.698608, 73.1055908, 918.666321,=
 -0.0319722369, 8.96074881E-10, -0.999488771, 1.36326533E-10, 1, 8.9217233=
6E-10, 0.999488771, -1.07732087E-10, -0.0319722369)
            CFrameMon =3D CFrame.new(73.07867431640625, 81.86344146728516,=
 -27.470672607421875)
        end
    else
        Mon =3D "Raider"
        LevelQuest =3D 1
        NameQuest =3D "Area1Quest"
        NameMon =3D "Raider"
        CFrameQuest =3D CFrame.new(-429.543518, 71.7699966, 1836.18188, -0=
.22495985, -0, -0.974368095, -0, 1, -0, 0.974368095, -0, -0.22495985)
        CFrameMon =3D CFrame.new(-728.3267211914062, 52.779319763183594, 2=
345.7705078125)
    end
end
function Hop()
    local l=5FPlaceId=5F0 =3D game.PlaceId
    local v1 =3D {}
    local v2 =3D ""
    local l=5Fhour=5F0 =3D os.date("!*t").hour
    local =5F =3D false
    function TPReturner()
        local v5
        if v2 ~=3D "" then
            v5 =3D game.HttpService:JSONDecode(game:HttpGet("https://games=
.roblox.com/v1/games/" .. l=5FPlaceId=5F0 .. "/servers/Public=3FsortOrder=
=3DAsc&limit=3D100&cursor=3D" .. v2))
        else
            v5 =3D game.HttpService:JSONDecode(game:HttpGet("https://games=
.roblox.com/v1/games/" .. l=5FPlaceId=5F0 .. "/servers/Public=3FsortOrder=
=3DAsc&limit=3D100"))
        end
        local v6 =3D ""
        if v5.nextPageCursor and v5.nextPageCursor ~=3D "null" and v5.next=
PageCursor ~=3D "null" then
            v2 =3D v5.nextPageCursor
        end
        local v7 =3D 0
        for =5F, v9 in pairs(v5.data) do
            local v10 =3D true
            v6 =3D tostring(v9.id)
            if tonumber(v9.maxPlayers) > tonumber(v9.playing) then
                for =5F, v12 in pairs(v1) do
                    if v7 ~=3D 0 then
                        if v6 =3D=3D tostring(v12) then
                            v10 =3D false
                        end
                    elseif tonumber(l=5Fhour=5F0) ~=3D tonumber(v12) then
                        local =5F =3D pcall(function()
                            v1 =3D {}
                            table.insert(v1, l=5Fhour=5F0)
                        end)
                    end
                    v7 =3D v7 + 1
                end
                if v10 =3D=3D true then
                    table.insert(v1, v6)
                    wait(0.1)
                    pcall(function()
                        wait()
                        game:GetService("TeleportService"):TeleportToPlace=
Instance(l=5FPlaceId=5F0, v6, game.Players.LocalPlayer)
                    end)
                    wait(0.1)
                end
            end
        end
    end
    function Teleport()
        while wait(0.1) do
            pcall(function()
                TPReturner()
                if v2 ~=3D "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()
end
function CheckItem(v14)
    for =5F, v16 in pairs(game:GetService("ReplicatedStorage").Remotes.Com=
mF=5F:InvokeServer("getInventory")) do
        if v16.Name =3D=3D v14 then
            return v16
        end
    end
end
function UpdateIslandESP()
    for =5F, v18 in pairs(game:GetService("Workspace").=5FWorldOrigin.Loca=
tions:GetChildren()) do
        do
            local l=5Fv18=5F0 =3D v18
            pcall(function()
                if IslandESP then
                    if l=5Fv18=5F0.Name ~=3D "Sea" then
                        if not l=5Fv18=5F0:FindFirstChild("NameEsp") then
                            local v20 =3D Instance.new("BillboardGui", l=
=5Fv18=5F0)
                            v20.Name =3D "NameEsp"
                            v20.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v20.Size =3D UDim2.new(1, 200, 1, 30)
                            v20.Adornee =3D l=5Fv18=5F0
                            v20.AlwaysOnTop =3D true
                            local v21 =3D Instance.new("TextLabel", v20)
                            v21.Font =3D "GothamSemibold"
                            v21.FontSize =3D "Size14"
                            v21.TextWrapped =3D true
                            v21.Size =3D UDim2.new(1, 0, 1, 0)
                            v21.TextYAlignment =3D "Top"
                            v21.BackgroundTransparency =3D 1
                            v21.TextStrokeTransparency =3D 0.5
                            v21.TextColor3 =3D Color3.fromRGB(255, 255, 25=
5)
                        else
                            l=5Fv18=5F0.NameEsp.TextLabel.Text =3D l=5Fv18=
=5F0.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Char=
acter.Head.Position - l=5Fv18=5F0.Position).Magnitude / 3) .. " Distance"
                        end
                    end
                elseif l=5Fv18=5F0:FindFirstChild("NameEsp") then
                    l=5Fv18=5F0:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
end
function isnil(v22)
    local v23 =3D nil
    if v22 ~=3D v23 then
        local =5F =3D false
    end
    return true
end
local function v26(v25)
    return math.floor(tonumber(v25) + 0.5)
end
Number =3D math.random(1, 1000000)
function UpdatePlayerChams()
    for =5F, v28 in pairs(game:GetService("Players"):GetChildren()) do
        do
            local l=5Fv28=5F0 =3D v28
            pcall(function()
                if not isnil(l=5Fv28=5F0.Character) then
                    if not ESPPlayer then
                        if l=5Fv28=5F0.Character.Head:FindFirstChild("Name=
Esp" .. Number) then
                            l=5Fv28=5F0.Character.Head:FindFirstChild("Nam=
eEsp" .. Number):Destroy()
                        end
                    elseif not isnil(l=5Fv28=5F0.Character.Head) and not l=
=5Fv28=5F0.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        local v30 =3D Instance.new("BillboardGui", l=5Fv28=
=5F0.Character.Head)
                        v30.Name =3D "NameEsp" .. Number
                        v30.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v30.Size =3D UDim2.new(1, 200, 1, 30)
                        v30.Adornee =3D l=5Fv28=5F0.Character.Head
                        v30.AlwaysOnTop =3D true
                        local v31 =3D Instance.new("TextLabel", v30)
                        v31.Font =3D Enum.Font.GothamSemibold
                        v31.FontSize =3D "Size14"
                        v31.TextWrapped =3D true
                        v31.Text =3D l=5Fv28=5F0.Name .. " \n" .. v26((gam=
e:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv28=5F0.=
Character.Head.Position).Magnitude / 3) .. " Distance"
                        v31.Size =3D UDim2.new(1, 0, 1, 0)
                        v31.TextYAlignment =3D "Top"
                        v31.BackgroundTransparency =3D 1
                        v31.TextStrokeTransparency =3D 0.5
                        if l=5Fv28=5F0.Team =3D=3D game.Players.LocalPlaye=
r.Team then
                            v31.TextColor3 =3D Color3.new(0, 255, 0)
                        else
                            v31.TextColor3 =3D Color3.new(255, 0, 0)
                        end
                    else
                        l=5Fv28=5F0.Character.Head["NameEsp" .. Number].Te=
xtLabel.Text =3D l=5Fv28=5F0.Name .. " | " .. v26((game:GetService("Player=
s").LocalPlayer.Character.Head.Position - l=5Fv28=5F0.Character.Head.Posit=
ion).Magnitude / 3) .. " Distance\nHealth : " .. v26(l=5Fv28=5F0.Character=
.Humanoid.Health * 100 / l=5Fv28=5F0.Character.Humanoid.MaxHealth) .. "%"
                    end
                end
            end)
        end
    end
end
function UpdateChestESP()
    for =5F, v33 in pairs(game:GetService("CollectionService"):GetTagged("=
=5FChestTagged")) do
        do
            local l=5Fv33=5F0 =3D v33
            pcall(function()
                if =5FG.ChestESP then
                    if not l=5Fv33=5F0:GetAttribute("IsDisabled") then
                        if not l=5Fv33=5F0:FindFirstChild("ChestEsp") then=

                            local v35 =3D Instance.new("BillboardGui", l=
=5Fv33=5F0)
                            v35.Name =3D "ChestEsp"
                            v35.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v35.Size =3D UDim2.new(1, 200, 1, 30)
                            v35.Adornee =3D l=5Fv33=5F0
                            v35.AlwaysOnTop =3D true
                            local v36 =3D Instance.new("TextLabel", v35)
                            v36.Font =3D "Code"
                            v36.FontSize =3D "Size14"
                            v36.TextWrapped =3D true
                            v36.Size =3D UDim2.new(1, 0, 1, 0)
                            v36.TextYAlignment =3D "Top"
                            v36.BackgroundTransparency =3D 1
                            v36.TextStrokeTransparency =3D 0.5
                            v36.TextColor3 =3D Color3.fromRGB(255, 215, 0)=

                        else
                            local v37 =3D v26((game:GetService("Players").=
LocalPlayer.Character.Head.Position - l=5Fv33=5F0:GetPivot().Position).Mag=
nitude / 3)
                            l=5Fv33=5F0.ChestEsp.TextLabel.Text =3D "Chest=
\n" .. v37 .. " M"
                        end
                    end
                elseif l=5Fv33=5F0:FindFirstChild("ChestEsp") then
                    l=5Fv33=5F0:FindFirstChild("ChestEsp"):Destroy()
                end
            end)
        end
    end
end
function v26(v38)
    return math.floor(v38 + 0.5)
end
function UpdateDevilChams()
    local Players =3D game:GetService("Players")
    local LocalPlayer =3D Players.LocalPlayer
    local Character =3D LocalPlayer.Character
    if not Character or not Character:FindFirstChild("Head") then return e=
nd

    for =5F, v in pairs(workspace:GetChildren()) do
        pcall(function()
            if v:IsA("Tool") and string.find(v.Name, "Fruit") and v:FindFi=
rstChild("Handle") then
                local handle =3D v.Handle
                local espName =3D "NameEsp" .. Number
                local distance =3D math.floor((Character.Head.Position - h=
andle.Position).Magnitude)

                if DevilFruitESP then
                    if not handle:FindFirstChild(espName) then
                        local bill =3D Instance.new("BillboardGui")
                        bill.Name =3D espName
                        bill.Size =3D UDim2.new(0, 220, 0, 40)
                        bill.ExtentsOffset =3D Vector3.new(0, 1.5, 0)
                        bill.AlwaysOnTop =3D true
                        bill.Adornee =3D handle
                        bill.Parent =3D handle

                        local text =3D Instance.new("TextLabel")
                        text.Size =3D UDim2.new(1, 0, 1, 0)
                        text.BackgroundTransparency =3D 1
                        text.TextScaled =3D true
                        text.Font =3D Enum.Font.GothamBold
                        text.TextColor3 =3D Color3.fromRGB(120, 0, 0) -- v=
ermelho escuro
                        text.TextStrokeTransparency =3D 0
                        text.TextStrokeColor3 =3D Color3.fromRGB(0, 0, 0)
                        text.Parent =3D bill
                    end

                    handle[espName].TextLabel.Text =3D "Fruit | " .. v.Nam=
e .. " | < " .. distance .. " >"
                    handle[espName].TextLabel.TextColor3 =3D Color3.fromRG=
B(120, 0, 0)
                else
                    if handle:FindFirstChild(espName) then
                        handle[espName]:Destroy()
                    end
                end
            end
        end)
    end
end
function UpdateFlowerChams()
    for =5F, v45 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv45=5F0 =3D v45
            pcall(function()
                if l=5Fv45=5F0.Name =3D=3D "Flower2" or l=5Fv45=5F0.Name =
=3D=3D "Flower1" then
                    if FlowerESP then
                        if l=5Fv45=5F0:FindFirstChild("NameEsp" .. Number)=
 then
                            l=5Fv45=5F0["NameEsp" .. Number].TextLabel.Tex=
t =3D l=5Fv45=5F0.Name .. "   \n" .. v26((game:GetService("Players").Local=
Player.Character.Head.Position - l=5Fv45=5F0.Position).Magnitude / 3) .. "=
 Distance"
                        else
                            local v47 =3D Instance.new("BillboardGui", l=
=5Fv45=5F0)
                            v47.Name =3D "NameEsp" .. Number
                            v47.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v47.Size =3D UDim2.new(1, 200, 1, 30)
                            v47.Adornee =3D l=5Fv45=5F0
                            v47.AlwaysOnTop =3D true
                            local v48 =3D Instance.new("TextLabel", v47)
                            v48.Font =3D Enum.Font.GothamSemibold
                            v48.FontSize =3D "Size14"
                            v48.TextWrapped =3D true
                            v48.Size =3D UDim2.new(1, 0, 1, 0)
                            v48.TextYAlignment =3D "Top"
                            v48.BackgroundTransparency =3D 1
                            v48.TextStrokeTransparency =3D 0.5
                            v48.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                            if l=5Fv45=5F0.Name =3D=3D "Flower1" then
                                v48.Text =3D "Blue Flower" .. " \n" .. v26=
((game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv45=
=5F0.Position).Magnitude / 3) .. " Distance"
                                v48.TextColor3 =3D Color3.fromRGB(178, 97,=
 255)
                            end
                            if l=5Fv45=5F0.Name =3D=3D "Flower2" then
                                v48.Text =3D "Red Flower" .. " \n" .. v26(=
(game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv45=
=5F0.Position).Magnitude / 3) .. " Distance"
                                v48.TextColor3 =3D Color3.fromRGB(255, 0, =
0)
                            end
                        end
                    elseif l=5Fv45=5F0:FindFirstChild("NameEsp" .. Number)=
 then
                        l=5Fv45=5F0:FindFirstChild("NameEsp" .. Number):De=
stroy()
                    end
                end
            end)
        end
    end
end
function UpdateRealFruitChams()
    for =5F, v50 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v50:IsA("Tool") then
            if not RealFruitESP then
                if v50.Handle:FindFirstChild("NameEsp" .. Number) then
                    v50.Handle:FindFirstChild("NameEsp" .. Number):Destroy=
()
                end
            elseif v50.Handle:FindFirstChild("NameEsp" .. Number) then
                v50.Handle["NameEsp" .. Number].TextLabel.Text =3D v50.Nam=
e .. " " .. v26((game:GetService("Players").LocalPlayer.Character.Head.Pos=
ition - v50.Handle.Position).Magnitude / 3) .. " Distance"
            else
                local v51 =3D Instance.new("BillboardGui", v50.Handle)
                v51.Name =3D "NameEsp" .. Number
                v51.ExtentsOffset =3D Vector3.new(0, 1, 0)
                v51.Size =3D UDim2.new(1, 200, 1, 30)
                v51.Adornee =3D v50.Handle
                v51.AlwaysOnTop =3D true
                local v52 =3D Instance.new("TextLabel", v51)
                v52.Font =3D Enum.Font.GothamSemibold
                v52.FontSize =3D "Size14"
                v52.TextWrapped =3D true
                v52.Size =3D UDim2.new(1, 0, 1, 0)
                v52.TextYAlignment =3D "Top"
                v52.BackgroundTransparency =3D 1
                v52.TextStrokeTransparency =3D 0.5
                v52.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                v52.Text =3D v50.Name .. " \n" .. v26((game:GetService("Pl=
ayers").LocalPlayer.Character.Head.Position - v50.Handle.Position).Magnitu=
de / 3) .. " Distance"
            end
        end
    end
    for =5F, v54 in pairs(game.Workspace.PineappleSpawner:GetChildren()) d=
o
        if v54:IsA("Tool") then
            if RealFruitESP then
                if v54.Handle:FindFirstChild("NameEsp" .. Number) then
                    v54.Handle["NameEsp" .. Number].TextLabel.Text =3D v54=
.Name .. " " .. v26((game:GetService("Players").LocalPlayer.Character.Head=
.Position - v54.Handle.Position).Magnitude / 3) .. " Distance"
                else
                    local v55 =3D Instance.new("BillboardGui", v54.Handle)=

                    v55.Name =3D "NameEsp" .. Number
                    v55.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v55.Size =3D UDim2.new(1, 200, 1, 30)
                    v55.Adornee =3D v54.Handle
                    v55.AlwaysOnTop =3D true
                    local v56 =3D Instance.new("TextLabel", v55)
                    v56.Font =3D Enum.Font.GothamSemibold
                    v56.FontSize =3D "Size14"
                    v56.TextWrapped =3D true
                    v56.Size =3D UDim2.new(1, 0, 1, 0)
                    v56.TextYAlignment =3D "Top"
                    v56.BackgroundTransparency =3D 1
                    v56.TextStrokeTransparency =3D 0.5
                    v56.TextColor3 =3D Color3.fromRGB(255, 174, 0)
                    v56.Text =3D v54.Name .. " \n" .. v26((game:GetService=
("Players").LocalPlayer.Character.Head.Position - v54.Handle.Position).Mag=
nitude / 3) .. " Distance"
                end
            elseif v54.Handle:FindFirstChild("NameEsp" .. Number) then
                v54.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for =5F, v58 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v58:IsA("Tool") then
            if RealFruitESP then
                if not v58.Handle:FindFirstChild("NameEsp" .. Number) then=

                    local v59 =3D Instance.new("BillboardGui", v58.Handle)=

                    v59.Name =3D "NameEsp" .. Number
                    v59.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v59.Size =3D UDim2.new(1, 200, 1, 30)
                    v59.Adornee =3D v58.Handle
                    v59.AlwaysOnTop =3D true
                    local v60 =3D Instance.new("TextLabel", v59)
                    v60.Font =3D Enum.Font.GothamSemibold
                    v60.FontSize =3D "Size14"
                    v60.TextWrapped =3D true
                    v60.Size =3D UDim2.new(1, 0, 1, 0)
                    v60.TextYAlignment =3D "Top"
                    v60.BackgroundTransparency =3D 1
                    v60.TextStrokeTransparency =3D 0.5
                    v60.TextColor3 =3D Color3.fromRGB(251, 255, 0)
                    v60.Text =3D v58.Name .. " \n" .. v26((game:GetService=
("Players").LocalPlayer.Character.Head.Position - v58.Handle.Position).Mag=
nitude / 3) .. " Distance"
                else
                    v58.Handle["NameEsp" .. Number].TextLabel.Text =3D v58=
.Name .. " " .. v26((game:GetService("Players").LocalPlayer.Character.Head=
.Position - v58.Handle.Position).Magnitude / 3) .. " Distance"
                end
            elseif v58.Handle:FindFirstChild("NameEsp" .. Number) then
                v58.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    for =5F, v62 in pairs(game:GetService("Workspace").=5FWorldOrigin.Loca=
tions:GetChildren()) do
        do
            local l=5Fv62=5F0 =3D v62
            pcall(function()
                if IslandESP then
                    if l=5Fv62=5F0.Name ~=3D "Sea" then
                        if not l=5Fv62=5F0:FindFirstChild("NameEsp") then
                            local v64 =3D Instance.new("BillboardGui", l=
=5Fv62=5F0)
                            v64.Name =3D "NameEsp"
                            v64.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v64.Size =3D UDim2.new(1, 200, 1, 30)
                            v64.Adornee =3D l=5Fv62=5F0
                            v64.AlwaysOnTop =3D true
                            local v65 =3D Instance.new("TextLabel", v64)
                            v65.Font =3D "GothamSemibold"
                            v65.FontSize =3D "Size14"
                            v65.TextWrapped =3D true
                            v65.Size =3D UDim2.new(1, 0, 1, 0)
                            v65.TextYAlignment =3D "Top"
                            v65.BackgroundTransparency =3D 1
                            v65.TextStrokeTransparency =3D 0.5
                            v65.TextColor3 =3D Color3.fromRGB(8, 247, 255)=

                        else
                            l=5Fv62=5F0.NameEsp.TextLabel.Text =3D l=5Fv62=
=5F0.Name .. "   \n" .. v26((game:GetService("Players").LocalPlayer.Charac=
ter.Head.Position - l=5Fv62=5F0.Position).Magnitude / 3) .. " Distance"
                        end
                    end
                elseif l=5Fv62=5F0:FindFirstChild("NameEsp") then
                    l=5Fv62=5F0:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
end
function isnil(v66)
    local v67 =3D nil
    if v66 ~=3D v67 then
        local =5F =3D false
    end
    return true
end
local function v70(v69)
    return math.floor(tonumber(v69) + 0.5)
end
Number =3D math.random(1, 1000000)

local Players =3D game:GetService("Players")
local RunService =3D game:GetService("RunService")
local LocalPlayer =3D Players.LocalPlayer

local ESPConnections =3D {}

function UpdatePlayerChams()
    for =5F, player in pairs(Players:GetPlayers()) do
        if player ~=3D LocalPlayer then
            pcall(function()
                local char =3D player.Character
                if not char then return end

                local hrp =3D char:FindFirstChild("HumanoidRootPart")
                local hum =3D char:FindFirstChild("Humanoid")
                if not hrp or not hum then return end

                -- DESLIGADO =E2=86=92 remove ESP
                if not ESPPlayer then
                    if hrp:FindFirstChild("PlayerESP") then
                        hrp.PlayerESP:Destroy()
                    end
                    if ESPConnections[player] then
                        ESPConnections[player]:Disconnect()
                        ESPConnections[player] =3D nil
                    end
                    return
                end

                -- J=C3=81 EXISTE =E2=86=92 n=C3=A3o recria
                if hrp:FindFirstChild("PlayerESP") then return end

                -- CRIA ESP
                local gui =3D Instance.new("BillboardGui")
                gui.Name =3D "PlayerESP"
                gui.Adornee =3D hrp
                gui.Size =3D UDim2.new(0, 200, 0, 50)
                gui.StudsOffset =3D Vector3.new(0, 2.5, 0)
                gui.AlwaysOnTop =3D true
                gui.Parent =3D hrp

                local nameLabel =3D Instance.new("TextLabel")
                nameLabel.BackgroundTransparency =3D 1
                nameLabel.Size =3D UDim2.new(1, 0, 0.5, 0)
                nameLabel.TextStrokeTransparency =3D 0
                nameLabel.TextScaled =3D true
                nameLabel.Font =3D Enum.Font.SourceSansBold
                nameLabel.Parent =3D gui

                local hpLabel =3D Instance.new("TextLabel")
                hpLabel.BackgroundTransparency =3D 1
                hpLabel.Size =3D UDim2.new(1, 0, 0.5, 0)
                hpLabel.Position =3D UDim2.new(0, 0, 0.5, 0)
                hpLabel.TextStrokeTransparency =3D 0
                hpLabel.TextScaled =3D true
                hpLabel.Font =3D Enum.Font.SourceSansBold
                hpLabel.Parent =3D gui

                ESPConnections[player] =3D RunService.RenderStepped:Connec=
t(function()
                    if not ESPPlayer or not char or not hrp or not hum or =
hum.Health <=3D 0 then
                        gui.Enabled =3D false
                        return
                    end

                    gui.Enabled =3D true

                    local dist =3D math.floor(
                        (LocalPlayer.Character.HumanoidRootPart.Position -=
 hrp.Position).Magnitude
                    )

                    nameLabel.Text =3D player.Name .. " [" .. dist .. "m]"=

                    hpLabel.Text =3D "[" .. math.floor(hum.Health) .. "/" =
.. math.floor(hum.MaxHealth) .. "]"

                    if player.Team =3D=3D LocalPlayer.Team then
                        nameLabel.TextColor3 =3D Color3.fromRGB(202, 174, =
214)
                    else
                        nameLabel.TextColor3 =3D Color3.fromRGB(255, 0, 0)=

                    end
                end)
            end)
        end
    end
end
function UpdateChestESP()
    for =5F, v77 in pairs(game:GetService("CollectionService"):GetTagged("=
=5FChestTagged")) do
        do
            local l=5Fv77=5F0 =3D v77
            pcall(function()
                if =5FG.ChestESP then
                    if not l=5Fv77=5F0:GetAttribute("IsDisabled") then
                        if l=5Fv77=5F0:FindFirstChild("ChestEsp") then
                            local v79 =3D v70((game:GetService("Players").=
LocalPlayer.Character.Head.Position - l=5Fv77=5F0:GetPivot().Position).Mag=
nitude / 3)
                            l=5Fv77=5F0.ChestEsp.TextLabel.Text =3D "Chest=
\n" .. v79 .. " M"
                        else
                            local v80 =3D Instance.new("BillboardGui", l=
=5Fv77=5F0)
                            v80.Name =3D "ChestEsp"
                            v80.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v80.Size =3D UDim2.new(1, 200, 1, 30)
                            v80.Adornee =3D l=5Fv77=5F0
                            v80.AlwaysOnTop =3D true
                            local v81 =3D Instance.new("TextLabel", v80)
                            v81.Font =3D "Code"
                            v81.FontSize =3D "Size14"
                            v81.TextWrapped =3D true
                            v81.Size =3D UDim2.new(1, 0, 1, 0)
                            v81.TextYAlignment =3D "Top"
                            v81.BackgroundTransparency =3D 1
                            v81.TextStrokeTransparency =3D 0.5
                            v81.TextColor3 =3D Color3.fromRGB(255, 215, 0)=

                        end
                    end
                elseif l=5Fv77=5F0:FindFirstChild("ChestEsp") then
                    l=5Fv77=5F0:FindFirstChild("ChestEsp"):Destroy()
                end
            end)
        end
    end
end
function v70(v82)
    return math.floor(v82 + 0.5)
end
function UpdateDevilChams()
    local Players =3D game:GetService("Players")
    local LocalPlayer =3D Players.LocalPlayer
    local Character =3D LocalPlayer.Character
    if not Character or not Character:FindFirstChild("Head") then return e=
nd

    for =5F, v in pairs(workspace:GetChildren()) do
        pcall(function()
            if v:IsA("Tool") and string.find(v.Name, "Fruit") and v:FindFi=
rstChild("Handle") then
                local handle =3D v.Handle
                local espName =3D "NameEsp" .. Number
                local distance =3D math.floor((Character.Head.Position - h=
andle.Position).Magnitude)

                if DevilFruitESP then
                    if not handle:FindFirstChild(espName) then
                        local bill =3D Instance.new("BillboardGui")
                        bill.Name =3D espName
                        bill.Size =3D UDim2.new(0, 220, 0, 40)
                        bill.ExtentsOffset =3D Vector3.new(0, 1.5, 0)
                        bill.AlwaysOnTop =3D true
                        bill.Adornee =3D handle
                        bill.Parent =3D handle

                        local text =3D Instance.new("TextLabel")
                        text.Size =3D UDim2.new(1, 0, 1, 0)
                        text.BackgroundTransparency =3D 1
                        text.TextScaled =3D true
                        text.Font =3D Enum.Font.GothamBold
                        text.TextColor3 =3D Color3.fromRGB(217, 181, 244) =
-- vermelho escuro
                        text.TextStrokeTransparency =3D 0
                        text.TextStrokeColor3 =3D Color3.fromRGB(0, 0, 0)
                        text.Parent =3D bill
                    end

                    handle[espName].TextLabel.Text =3D "Fruit | " .. v.Nam=
e .. " | < " .. distance .. " >"
                    handle[espName].TextLabel.TextColor3 =3D Color3.fromRG=
B(120, 0, 0)
                else
                    if handle:FindFirstChild(espName) then
                        handle[espName]:Destroy()
                    end
                end
            end
        end)
    end
end
function UpdateFlowerChams()
    for =5F, v89 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv89=5F0 =3D v89
            pcall(function()
                if l=5Fv89=5F0.Name =3D=3D "Flower2" or l=5Fv89=5F0.Name =
=3D=3D "Flower1" then
                    if not FlowerESP then
                        if l=5Fv89=5F0:FindFirstChild("NameEsp" .. Number)=
 then
                            l=5Fv89=5F0:FindFirstChild("NameEsp" .. Number=
):Destroy()
                        end
                    elseif l=5Fv89=5F0:FindFirstChild("NameEsp" .. Number)=
 then
                        l=5Fv89=5F0["NameEsp" .. Number].TextLabel.Text =
=3D l=5Fv89=5F0.Name .. "   \n" .. v70((game:GetService("Players").LocalPl=
ayer.Character.Head.Position - l=5Fv89=5F0.Position).Magnitude / 3) .. " D=
istance"
                    else
                        local v91 =3D Instance.new("BillboardGui", l=5Fv89=
=5F0)
                        v91.Name =3D "NameEsp" .. Number
                        v91.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v91.Size =3D UDim2.new(1, 200, 1, 30)
                        v91.Adornee =3D l=5Fv89=5F0
                        v91.AlwaysOnTop =3D true
                        local v92 =3D Instance.new("TextLabel", v91)
                        v92.Font =3D Enum.Font.GothamSemibold
                        v92.FontSize =3D "Size14"
                        v92.TextWrapped =3D true
                        v92.Size =3D UDim2.new(1, 0, 1, 0)
                        v92.TextYAlignment =3D "Top"
                        v92.BackgroundTransparency =3D 1
                        v92.TextStrokeTransparency =3D 0.5
                        v92.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                        if l=5Fv89=5F0.Name =3D=3D "Flower1" then
                            v92.Text =3D "Blue Flower" .. " \n" .. v70((ga=
me:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv89=5F0=
.Position).Magnitude / 3) .. " Distance"
                            v92.TextColor3 =3D Color3.fromRGB(0, 213, 255)=

                        end
                        if l=5Fv89=5F0.Name =3D=3D "Flower2" then
                            v92.Text =3D "Red Flower" .. " \n" .. v70((gam=
e:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv89=5F0.=
Position).Magnitude / 3) .. " Distance"
                            v92.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                        end
                    end
                end
            end)
        end
    end
end
function UpdateRealFruitChams()
    for =5F, v94 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v94:IsA("Tool") then
            if not RealFruitESP then
                if v94.Handle:FindFirstChild("NameEsp" .. Number) then
                    v94.Handle:FindFirstChild("NameEsp" .. Number):Destroy=
()
                end
            elseif v94.Handle:FindFirstChild("NameEsp" .. Number) then
                v94.Handle["NameEsp" .. Number].TextLabel.Text =3D v94.Nam=
e .. " " .. v70((game:GetService("Players").LocalPlayer.Character.Head.Pos=
ition - v94.Handle.Position).Magnitude / 3) .. " Distance"
            else
                local v95 =3D Instance.new("BillboardGui", v94.Handle)
                v95.Name =3D "NameEsp" .. Number
                v95.ExtentsOffset =3D Vector3.new(0, 1, 0)
                v95.Size =3D UDim2.new(1, 200, 1, 30)
                v95.Adornee =3D v94.Handle
                v95.AlwaysOnTop =3D true
                local v96 =3D Instance.new("TextLabel", v95)
                v96.Font =3D Enum.Font.GothamSemibold
                v96.FontSize =3D "Size14"
                v96.TextWrapped =3D true
                v96.Size =3D UDim2.new(1, 0, 1, 0)
                v96.TextYAlignment =3D "Top"
                v96.BackgroundTransparency =3D 1
                v96.TextStrokeTransparency =3D 0.5
                v96.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                v96.Text =3D v94.Name .. " \n" .. v70((game:GetService("Pl=
ayers").LocalPlayer.Character.Head.Position - v94.Handle.Position).Magnitu=
de / 3) .. " Distance"
            end
        end
    end
    for =5F, v98 in pairs(game.Workspace.PineappleSpawner:GetChildren()) d=
o
        if v98:IsA("Tool") then
            if RealFruitESP then
                if not v98.Handle:FindFirstChild("NameEsp" .. Number) then=

                    local v99 =3D Instance.new("BillboardGui", v98.Handle)=

                    v99.Name =3D "NameEsp" .. Number
                    v99.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v99.Size =3D UDim2.new(1, 200, 1, 30)
                    v99.Adornee =3D v98.Handle
                    v99.AlwaysOnTop =3D true
                    local v100 =3D Instance.new("TextLabel", v99)
                    v100.Font =3D Enum.Font.GothamSemibold
                    v100.FontSize =3D "Size14"
                    v100.TextWrapped =3D true
                    v100.Size =3D UDim2.new(1, 0, 1, 0)
                    v100.TextYAlignment =3D "Top"
                    v100.BackgroundTransparency =3D 1
                    v100.TextStrokeTransparency =3D 0.5
                    v100.TextColor3 =3D Color3.fromRGB(255, 174, 0)
                    v100.Text =3D v98.Name .. " \n" .. v70((game:GetServic=
e("Players").LocalPlayer.Character.Head.Position - v98.Handle.Position).Ma=
gnitude / 3) .. " Distance"
                else
                    v98.Handle["NameEsp" .. Number].TextLabel.Text =3D v98=
.Name .. " " .. v70((game:GetService("Players").LocalPlayer.Character.Head=
.Position - v98.Handle.Position).Magnitude / 3) .. " Distance"
                end
            elseif v98.Handle:FindFirstChild("NameEsp" .. Number) then
                v98.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for =5F, v102 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v102:IsA("Tool") then
            if not RealFruitESP then
                if v102.Handle:FindFirstChild("NameEsp" .. Number) then
                    v102.Handle:FindFirstChild("NameEsp" .. Number):Destro=
y()
                end
            elseif not v102.Handle:FindFirstChild("NameEsp" .. Number) the=
n
                local v103 =3D Instance.new("BillboardGui", v102.Handle)
                v103.Name =3D "NameEsp" .. Number
                v103.ExtentsOffset =3D Vector3.new(0, 1, 0)
                v103.Size =3D UDim2.new(1, 200, 1, 30)
                v103.Adornee =3D v102.Handle
                v103.AlwaysOnTop =3D true
                local v104 =3D Instance.new("TextLabel", v103)
                v104.Font =3D Enum.Font.GothamSemibold
                v104.FontSize =3D "Size14"
                v104.TextWrapped =3D true
                v104.Size =3D UDim2.new(1, 0, 1, 0)
                v104.TextYAlignment =3D "Top"
                v104.BackgroundTransparency =3D 1
                v104.TextStrokeTransparency =3D 0.5
                v104.TextColor3 =3D Color3.fromRGB(251, 255, 0)
                v104.Text =3D v102.Name .. " \n" .. v70((game:GetService("=
Players").LocalPlayer.Character.Head.Position - v102.Handle.Position).Magn=
itude / 3) .. " Distance"
            else
                v102.Handle["NameEsp" .. Number].TextLabel.Text =3D v102.N=
ame .. " " .. v70((game:GetService("Players").LocalPlayer.Character.Head.P=
osition - v102.Handle.Position).Magnitude / 3) .. " Distance"
            end
        end
    end
end
function UpdateIslandESP()
    for =5F, v106 in pairs(game:GetService("Workspace").=5FWorldOrigin.Loc=
ations:GetChildren()) do
        do
            local l=5Fv106=5F0 =3D v106
            pcall(function()
                if not IslandESP then
                    if l=5Fv106=5F0:FindFirstChild("NameEsp") then
                        l=5Fv106=5F0:FindFirstChild("NameEsp"):Destroy()
                    end
                elseif l=5Fv106=5F0.Name ~=3D "Sea" then
                    if l=5Fv106=5F0:FindFirstChild("NameEsp") then
                        l=5Fv106=5F0.NameEsp.TextLabel.Text =3D l=5Fv106=
=5F0.Name .. "   \n" .. v70((game:GetService("Players").LocalPlayer.Charac=
ter.Head.Position - l=5Fv106=5F0.Position).Magnitude / 3) .. " Distance"
                    else
                        local v108 =3D Instance.new("BillboardGui", l=5Fv1=
06=5F0)
                        v108.Name =3D "NameEsp"
                        v108.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v108.Size =3D UDim2.new(1, 200, 1, 30)
                        v108.Adornee =3D l=5Fv106=5F0
                        v108.AlwaysOnTop =3D true
                        local v109 =3D Instance.new("TextLabel", v108)
                        v109.Font =3D "GothamSemibold"
                        v109.FontSize =3D "Size14"
                        v109.TextWrapped =3D true
                        v109.Size =3D UDim2.new(1, 0, 1, 0)
                        v109.TextYAlignment =3D "Top"
                        v109.BackgroundTransparency =3D 1
                        v109.TextStrokeTransparency =3D 0.5
                        v109.TextColor3 =3D Color3.fromRGB(8, 247, 255)
                    end
                end
            end)
        end
    end
end
function isnil(v110)
    local v111 =3D nil
    if v110 ~=3D v111 then
        local =5F =3D false
    end
    return true
end
local function v114(v113)
    return math.floor(tonumber(v113) + 0.5)
end
Number =3D math.random(1, 1000000)
function UpdatePlayerChams()
    for =5F, v116 in pairs(game:GetService("Players"):GetChildren()) do
        do
            local l=5Fv116=5F0 =3D v116
            pcall(function()
                if not isnil(l=5Fv116=5F0.Character) then
                    if ESPPlayer then
                        if isnil(l=5Fv116=5F0.Character.Head) or l=5Fv116=
=5F0.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            l=5Fv116=5F0.Character.Head["NameEsp" .. Numbe=
r].TextLabel.Text =3D l=5Fv116=5F0.Name .. " | " .. v114((game:GetService(=
"Players").LocalPlayer.Character.Head.Position - l=5Fv116=5F0.Character.He=
ad.Position).Magnitude / 3) .. " Distance\nHealth : " .. v114(l=5Fv116=5F0=
.Character.Humanoid.Health * 100 / l=5Fv116=5F0.Character.Humanoid.MaxHeal=
th) .. "%"
                        else
                            local v118 =3D Instance.new("BillboardGui", l=
=5Fv116=5F0.Character.Head)
                            v118.Name =3D "NameEsp" .. Number
                            v118.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v118.Size =3D UDim2.new(1, 200, 1, 30)
                            v118.Adornee =3D l=5Fv116=5F0.Character.Head
                            v118.AlwaysOnTop =3D true
                            local v119 =3D Instance.new("TextLabel", v118)=

                            v119.Font =3D Enum.Font.GothamSemibold
                            v119.FontSize =3D "Size14"
                            v119.TextWrapped =3D true
                            v119.Text =3D l=5Fv116=5F0.Name .. " \n" .. v1=
14((game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv=
116=5F0.Character.Head.Position).Magnitude / 3) .. " Distance"
                            v119.Size =3D UDim2.new(1, 0, 1, 0)
                            v119.TextYAlignment =3D "Top"
                            v119.BackgroundTransparency =3D 1
                            v119.TextStrokeTransparency =3D 0.5
                            if l=5Fv116=5F0.Team ~=3D game.Players.LocalPl=
ayer.Team then
                                v119.TextColor3 =3D Color3.new(255, 0, 0)
                            else
                                v119.TextColor3 =3D Color3.new(0, 255, 0)
                            end
                        end
                    elseif l=5Fv116=5F0.Character.Head:FindFirstChild("Nam=
eEsp" .. Number) then
                        l=5Fv116=5F0.Character.Head:FindFirstChild("NameEs=
p" .. Number):Destroy()
                    end
                end
            end)
        end
    end
end
function UpdateChestESP()
    for =5F, v121 in pairs(game:GetService("CollectionService"):GetTagged(=
"=5FChestTagged")) do
        do
            local l=5Fv121=5F0 =3D v121
            pcall(function()
                if =5FG.ChestESP then
                    if not l=5Fv121=5F0:GetAttribute("IsDisabled") then
                        if l=5Fv121=5F0:FindFirstChild("ChestEsp") then
                            local v123 =3D v114((game:GetService("Players"=
).LocalPlayer.Character.Head.Position - l=5Fv121=5F0:GetPivot().Position).=
Magnitude / 3)
                            l=5Fv121=5F0.ChestEsp.TextLabel.Text =3D "Ches=
t\n" .. v123 .. " M"
                        else
                            local v124 =3D Instance.new("BillboardGui", l=
=5Fv121=5F0)
                            v124.Name =3D "ChestEsp"
                            v124.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v124.Size =3D UDim2.new(1, 200, 1, 30)
                            v124.Adornee =3D l=5Fv121=5F0
                            v124.AlwaysOnTop =3D true
                            local v125 =3D Instance.new("TextLabel", v124)=

                            v125.Font =3D "Code"
                            v125.FontSize =3D "Size14"
                            v125.TextWrapped =3D true
                            v125.Size =3D UDim2.new(1, 0, 1, 0)
                            v125.TextYAlignment =3D "Top"
                            v125.BackgroundTransparency =3D 1
                            v125.TextStrokeTransparency =3D 0.5
                            v125.TextColor3 =3D Color3.fromRGB(255, 215, 0=
)
                        end
                    end
                elseif l=5Fv121=5F0:FindFirstChild("ChestEsp") then
                    l=5Fv121=5F0:FindFirstChild("ChestEsp"):Destroy()
                end
            end)
        end
    end
end
function v114(v126)
    return math.floor(v126 + 0.5)
end
function UpdateDevilChams()
    for =5F, v128 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv128=5F0 =3D v128
            pcall(function()
                if not DevilFruitESP then
                    if l=5Fv128=5F0.Handle:FindFirstChild("NameEsp" .. Num=
ber) then
                        l=5Fv128=5F0.Handle:FindFirstChild("NameEsp" .. Nu=
mber):Destroy()
                    end
                elseif string.find(l=5Fv128=5F0.Name, "Fruit") then
                    if l=5Fv128=5F0.Handle:FindFirstChild("NameEsp" .. Num=
ber) then
                        l=5Fv128=5F0.Handle["NameEsp" .. Number].TextLabel=
.Text =3D l=5Fv128=5F0.Name .. "   \n" .. v114((game:GetService("Players")=
.LocalPlayer.Character.Head.Position - l=5Fv128=5F0.Handle.Position).Magni=
tude / 3) .. " Distance"
                    else
                        local v130 =3D Instance.new("BillboardGui", l=5Fv1=
28=5F0.Handle)
                        v130.Name =3D "NameEsp" .. Number
                        v130.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v130.Size =3D UDim2.new(1, 200, 1, 30)
                        v130.Adornee =3D l=5Fv128=5F0.Handle
                        v130.AlwaysOnTop =3D true
                        local v131 =3D Instance.new("TextLabel", v130)
                        v131.Font =3D Enum.Font.GothamSemibold
                        v131.FontSize =3D "Size14"
                        v131.TextWrapped =3D true
                        v131.Size =3D UDim2.new(1, 0, 1, 0)
                        v131.TextYAlignment =3D "Top"
                        v131.BackgroundTransparency =3D 1
                        v131.TextStrokeTransparency =3D 0.5
                        v131.TextColor3 =3D Color3.fromRGB(255, 255, 255)
                        v131.Text =3D l=5Fv128=5F0.Name .. " \n" .. v114((=
game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv128=
=5F0.Handle.Position).Magnitude / 3) .. " Distance"
                    end
                end
            end)
        end
    end
end
function UpdateFlowerChams()
    for =5F, v133 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv133=5F0 =3D v133
            pcall(function()
                if l=5Fv133=5F0.Name =3D=3D "Flower2" or l=5Fv133=5F0.Name=
 =3D=3D "Flower1" then
                    if FlowerESP then
                        if l=5Fv133=5F0:FindFirstChild("NameEsp" .. Number=
) then
                            l=5Fv133=5F0["NameEsp" .. Number].TextLabel.Te=
xt =3D l=5Fv133=5F0.Name .. "   \n" .. v114((game:GetService("Players").Lo=
calPlayer.Character.Head.Position - l=5Fv133=5F0.Position).Magnitude / 3) =
.. " Distance"
                        else
                            local v135 =3D Instance.new("BillboardGui", l=
=5Fv133=5F0)
                            v135.Name =3D "NameEsp" .. Number
                            v135.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v135.Size =3D UDim2.new(1, 200, 1, 30)
                            v135.Adornee =3D l=5Fv133=5F0
                            v135.AlwaysOnTop =3D true
                            local v136 =3D Instance.new("TextLabel", v135)=

                            v136.Font =3D Enum.Font.GothamSemibold
                            v136.FontSize =3D "Size14"
                            v136.TextWrapped =3D true
                            v136.Size =3D UDim2.new(1, 0, 1, 0)
                            v136.TextYAlignment =3D "Top"
                            v136.BackgroundTransparency =3D 1
                            v136.TextStrokeTransparency =3D 0.5
                            v136.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                            if l=5Fv133=5F0.Name =3D=3D "Flower1" then
                                v136.Text =3D "Blue Flower" .. " \n" .. v1=
14((game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv=
133=5F0.Position).Magnitude / 3) .. " Distance"
                                v136.TextColor3 =3D Color3.fromRGB(248, 19=
6, 85)
                            end
                            if l=5Fv133=5F0.Name =3D=3D "Flower2" then
                                v136.Text =3D "Red Flower" .. " \n" .. v11=
4((game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv1=
33=5F0.Position).Magnitude / 3) .. " Distance"
                                v136.TextColor3 =3D Color3.fromRGB(255, 0,=
 0)
                            end
                        end
                    elseif l=5Fv133=5F0:FindFirstChild("NameEsp" .. Number=
) then
                        l=5Fv133=5F0:FindFirstChild("NameEsp" .. Number):D=
estroy()
                    end
                end
            end)
        end
    end
end
function UpdateRealFruitChams()
    for =5F, v138 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v138:IsA("Tool") then
            if RealFruitESP then
                if v138.Handle:FindFirstChild("NameEsp" .. Number) then
                    v138.Handle["NameEsp" .. Number].TextLabel.Text =3D v1=
38.Name .. " " .. v114((game:GetService("Players").LocalPlayer.Character.H=
ead.Position - v138.Handle.Position).Magnitude / 3) .. " Distance"
                else
                    local v139 =3D Instance.new("BillboardGui", v138.Handl=
e)
                    v139.Name =3D "NameEsp" .. Number
                    v139.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v139.Size =3D UDim2.new(1, 200, 1, 30)
                    v139.Adornee =3D v138.Handle
                    v139.AlwaysOnTop =3D true
                    local v140 =3D Instance.new("TextLabel", v139)
                    v140.Font =3D Enum.Font.GothamSemibold
                    v140.FontSize =3D "Size14"
                    v140.TextWrapped =3D true
                    v140.Size =3D UDim2.new(1, 0, 1, 0)
                    v140.TextYAlignment =3D "Top"
                    v140.BackgroundTransparency =3D 1
                    v140.TextStrokeTransparency =3D 0.5
                    v140.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                    v140.Text =3D v138.Name .. " \n" .. v114((game:GetServ=
ice("Players").LocalPlayer.Character.Head.Position - v138.Handle.Position)=
.Magnitude / 3) .. " Distance"
                end
            elseif v138.Handle:FindFirstChild("NameEsp" .. Number) then
                v138.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for =5F, v142 in pairs(game.Workspace.PineappleSpawner:GetChildren()) =
do
        if v142:IsA("Tool") then
            if RealFruitESP then
                if v142.Handle:FindFirstChild("NameEsp" .. Number) then
                    v142.Handle["NameEsp" .. Number].TextLabel.Text =3D v1=
42.Name .. " " .. v114((game:GetService("Players").LocalPlayer.Character.H=
ead.Position - v142.Handle.Position).Magnitude / 3) .. " Distance"
                else
                    local v143 =3D Instance.new("BillboardGui", v142.Handl=
e)
                    v143.Name =3D "NameEsp" .. Number
                    v143.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v143.Size =3D UDim2.new(1, 200, 1, 30)
                    v143.Adornee =3D v142.Handle
                    v143.AlwaysOnTop =3D true
                    local v144 =3D Instance.new("TextLabel", v143)
                    v144.Font =3D Enum.Font.GothamSemibold
                    v144.FontSize =3D "Size14"
                    v144.TextWrapped =3D true
                    v144.Size =3D UDim2.new(1, 0, 1, 0)
                    v144.TextYAlignment =3D "Top"
                    v144.BackgroundTransparency =3D 1
                    v144.TextStrokeTransparency =3D 0.5
                    v144.TextColor3 =3D Color3.fromRGB(255, 174, 0)
                    v144.Text =3D v142.Name .. " \n" .. v114((game:GetServ=
ice("Players").LocalPlayer.Character.Head.Position - v142.Handle.Position)=
.Magnitude / 3) .. " Distance"
                end
            elseif v142.Handle:FindFirstChild("NameEsp" .. Number) then
                v142.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for =5F, v146 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v146:IsA("Tool") then
            if not RealFruitESP then
                if v146.Handle:FindFirstChild("NameEsp" .. Number) then
                    v146.Handle:FindFirstChild("NameEsp" .. Number):Destro=
y()
                end
            elseif not v146.Handle:FindFirstChild("NameEsp" .. Number) the=
n
                local v147 =3D Instance.new("BillboardGui", v146.Handle)
                v147.Name =3D "NameEsp" .. Number
                v147.ExtentsOffset =3D Vector3.new(0, 1, 0)
                v147.Size =3D UDim2.new(1, 200, 1, 30)
                v147.Adornee =3D v146.Handle
                v147.AlwaysOnTop =3D true
                local v148 =3D Instance.new("TextLabel", v147)
                v148.Font =3D Enum.Font.GothamSemibold
                v148.FontSize =3D "Size14"
                v148.TextWrapped =3D true
                v148.Size =3D UDim2.new(1, 0, 1, 0)
                v148.TextYAlignment =3D "Top"
                v148.BackgroundTransparency =3D 1
                v148.TextStrokeTransparency =3D 0.5
                v148.TextColor3 =3D Color3.fromRGB(251, 255, 0)
                v148.Text =3D v146.Name .. " \n" .. v114((game:GetService(=
"Players").LocalPlayer.Character.Head.Position - v146.Handle.Position).Mag=
nitude / 3) .. " Distance"
            else
                v146.Handle["NameEsp" .. Number].TextLabel.Text =3D v146.N=
ame .. " " .. v114((game:GetService("Players").LocalPlayer.Character.Head.=
Position - v146.Handle.Position).Magnitude / 3) .. " Distance"
            end
        end
    end
end
function UpdateIslandESP()
    for =5F, v150 in pairs(game:GetService("Workspace").=5FWorldOrigin.Loc=
ations:GetChildren()) do
        do
            local l=5Fv150=5F0 =3D v150
            pcall(function()
                if IslandESP then
                    if l=5Fv150=5F0.Name ~=3D "Sea" then
                        if l=5Fv150=5F0:FindFirstChild("NameEsp") then
                            l=5Fv150=5F0.NameEsp.TextLabel.Text =3D l=5Fv1=
50=5F0.Name .. "   \n" .. v114((game:GetService("Players").LocalPlayer.Cha=
racter.Head.Position - l=5Fv150=5F0.Position).Magnitude / 3) .. " Distance=
"
                        else
                            local v152 =3D Instance.new("BillboardGui", l=
=5Fv150=5F0)
                            v152.Name =3D "NameEsp"
                            v152.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v152.Size =3D UDim2.new(1, 200, 1, 30)
                            v152.Adornee =3D l=5Fv150=5F0
                            v152.AlwaysOnTop =3D true
                            local v153 =3D Instance.new("TextLabel", v152)=

                            v153.Font =3D "GothamSemibold"
                            v153.FontSize =3D "Size14"
                            v153.TextWrapped =3D true
                            v153.Size =3D UDim2.new(1, 0, 1, 0)
                            v153.TextYAlignment =3D "Top"
                            v153.BackgroundTransparency =3D 1
                            v153.TextStrokeTransparency =3D 0.5
                            v153.TextColor3 =3D Color3.fromRGB(255, 255, 2=
55)
                        end
                    end
                elseif l=5Fv150=5F0:FindFirstChild("NameEsp") then
                    l=5Fv150=5F0:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
end
function isnil(v154)
    local v155 =3D nil
    if v154 ~=3D v155 then
        local =5F =3D false
    end
    return true
end
local function v158(v157)
    return math.floor(tonumber(v157) + 0.5)
end
Number =3D math.random(1, 1000000)
function UpdatePlayerChams()
    for =5F, v160 in pairs(game:GetService("Players"):GetChildren()) do
        do
            local l=5Fv160=5F0 =3D v160
            pcall(function()
                if not isnil(l=5Fv160=5F0.Character) then
                    if not ESPPlayer then
                        if l=5Fv160=5F0.Character.Head:FindFirstChild("Nam=
eEsp" .. Number) then
                            l=5Fv160=5F0.Character.Head:FindFirstChild("Na=
meEsp" .. Number):Destroy()
                        end
                    elseif isnil(l=5Fv160=5F0.Character.Head) or l=5Fv160=
=5F0.Character.Head:FindFirstChild("NameEsp" .. Number) then
                        l=5Fv160=5F0.Character.Head["NameEsp" .. Number].T=
extLabel.Text =3D l=5Fv160=5F0.Name .. " | " .. v158((game:GetService("Pla=
yers").LocalPlayer.Character.Head.Position - l=5Fv160=5F0.Character.Head.P=
osition).Magnitude / 3) .. " Distance\nHealth : " .. v158(l=5Fv160=5F0.Cha=
racter.Humanoid.Health * 100 / l=5Fv160=5F0.Character.Humanoid.MaxHealth) =
.. "%"
                    else
                        local v162 =3D Instance.new("BillboardGui", l=5Fv1=
60=5F0.Character.Head)
                        v162.Name =3D "NameEsp" .. Number
                        v162.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v162.Size =3D UDim2.new(1, 200, 1, 30)
                        v162.Adornee =3D l=5Fv160=5F0.Character.Head
                        v162.AlwaysOnTop =3D true
                        local v163 =3D Instance.new("TextLabel", v162)
                        v163.Font =3D Enum.Font.GothamSemibold
                        v163.FontSize =3D "Size14"
                        v163.TextWrapped =3D true
                        v163.Text =3D l=5Fv160=5F0.Name .. " \n" .. v158((=
game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv160=
=5F0.Character.Head.Position).Magnitude / 3) .. " Distance"
                        v163.Size =3D UDim2.new(1, 0, 1, 0)
                        v163.TextYAlignment =3D "Top"
                        v163.BackgroundTransparency =3D 1
                        v163.TextStrokeTransparency =3D 0.5
                        if l=5Fv160=5F0.Team =3D=3D game.Players.LocalPlay=
er.Team then
                            v163.TextColor3 =3D Color3.new(216, 162, 184)
                        else
                            v163.TextColor3 =3D Color3.new(255, 0, 0)
                        end
                    end
                end
            end)
        end
    end
end
function UpdateChestESP()
    for =5F, v165 in pairs(game:GetService("CollectionService"):GetTagged(=
"=5FChestTagged")) do
        do
            local l=5Fv165=5F0 =3D v165
            pcall(function()
                if =5FG.ChestESP then
                    if not l=5Fv165=5F0:GetAttribute("IsDisabled") then
                        if l=5Fv165=5F0:FindFirstChild("ChestEsp") then
                            local v167 =3D v158((game:GetService("Players"=
).LocalPlayer.Character.Head.Position - l=5Fv165=5F0:GetPivot().Position).=
Magnitude / 3)
                            l=5Fv165=5F0.ChestEsp.TextLabel.Text =3D "Ches=
t\n" .. v167 .. " M"
                        else
                            local v168 =3D Instance.new("BillboardGui", l=
=5Fv165=5F0)
                            v168.Name =3D "ChestEsp"
                            v168.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v168.Size =3D UDim2.new(1, 200, 1, 30)
                            v168.Adornee =3D l=5Fv165=5F0
                            v168.AlwaysOnTop =3D true
                            local v169 =3D Instance.new("TextLabel", v168)=

                            v169.Font =3D "Code"
                            v169.FontSize =3D "Size14"
                            v169.TextWrapped =3D true
                            v169.Size =3D UDim2.new(1, 0, 1, 0)
                            v169.TextYAlignment =3D "Top"
                            v169.BackgroundTransparency =3D 1
                            v169.TextStrokeTransparency =3D 0.5
                            v169.TextColor3 =3D Color3.fromRGB(255, 215, 0=
)
                        end
                    end
                elseif l=5Fv165=5F0:FindFirstChild("ChestEsp") then
                    l=5Fv165=5F0:FindFirstChild("ChestEsp"):Destroy()
                end
            end)
        end
    end
end
function v158(v170)
    return math.floor(v170 + 0.5)
end
function UpdateDevilChams()
    for =5F, v172 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv172=5F0 =3D v172
            pcall(function()
                if DevilFruitESP then
                    if string.find(l=5Fv172=5F0.Name, "Fruit") then
                        if l=5Fv172=5F0.Handle:FindFirstChild("NameEsp" ..=
 Number) then
                            l=5Fv172=5F0.Handle["NameEsp" .. Number].TextL=
abel.Text =3D l=5Fv172=5F0.Name .. "   \n" .. v158((game:GetService("Playe=
rs").LocalPlayer.Character.Head.Position - l=5Fv172=5F0.Handle.Position).M=
agnitude / 3) .. " Distance"
                        else
                            local v174 =3D Instance.new("BillboardGui", l=
=5Fv172=5F0.Handle)
                            v174.Name =3D "NameEsp" .. Number
                            v174.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v174.Size =3D UDim2.new(1, 200, 1, 30)
                            v174.Adornee =3D l=5Fv172=5F0.Handle
                            v174.AlwaysOnTop =3D true
                            local v175 =3D Instance.new("TextLabel", v174)=

                            v175.Font =3D Enum.Font.GothamSemibold
                            v175.FontSize =3D "Size14"
                            v175.TextWrapped =3D true
                            v175.Size =3D UDim2.new(1, 0, 1, 0)
                            v175.TextYAlignment =3D "Top"
                            v175.BackgroundTransparency =3D 1
                            v175.TextStrokeTransparency =3D 0.5
                            v175.TextColor3 =3D Color3.fromRGB(255, 255, 2=
55)
                            v175.Text =3D l=5Fv172=5F0.Name .. " \n" .. v1=
58((game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv=
172=5F0.Handle.Position).Magnitude / 3) .. " Distance"
                        end
                    end
                elseif l=5Fv172=5F0.Handle:FindFirstChild("NameEsp" .. Num=
ber) then
                    l=5Fv172=5F0.Handle:FindFirstChild("NameEsp" .. Number=
):Destroy()
                end
            end)
        end
    end
end
function UpdateFlowerChams()
    for =5F, v177 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv177=5F0 =3D v177
            pcall(function()
                if l=5Fv177=5F0.Name =3D=3D "Flower2" or l=5Fv177=5F0.Name=
 =3D=3D "Flower1" then
                    if not FlowerESP then
                        if l=5Fv177=5F0:FindFirstChild("NameEsp" .. Number=
) then
                            l=5Fv177=5F0:FindFirstChild("NameEsp" .. Numbe=
r):Destroy()
                        end
                    elseif l=5Fv177=5F0:FindFirstChild("NameEsp" .. Number=
) then
                        l=5Fv177=5F0["NameEsp" .. Number].TextLabel.Text =
=3D l=5Fv177=5F0.Name .. "   \n" .. v158((game:GetService("Players").Local=
Player.Character.Head.Position - l=5Fv177=5F0.Position).Magnitude / 3) .. =
" Distance"
                    else
                        local v179 =3D Instance.new("BillboardGui", l=5Fv1=
77=5F0)
                        v179.Name =3D "NameEsp" .. Number
                        v179.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v179.Size =3D UDim2.new(1, 200, 1, 30)
                        v179.Adornee =3D l=5Fv177=5F0
                        v179.AlwaysOnTop =3D true
                        local v180 =3D Instance.new("TextLabel", v179)
                        v180.Font =3D Enum.Font.GothamSemibold
                        v180.FontSize =3D "Size14"
                        v180.TextWrapped =3D true
                        v180.Size =3D UDim2.new(1, 0, 1, 0)
                        v180.TextYAlignment =3D "Top"
                        v180.BackgroundTransparency =3D 1
                        v180.TextStrokeTransparency =3D 0.5
                        v180.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                        if l=5Fv177=5F0.Name =3D=3D "Flower1" then
                            v180.Text =3D "Blue Flower" .. " \n" .. v158((=
game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv177=
=5F0.Position).Magnitude / 3) .. " Distance"
                            v180.TextColor3 =3D Color3.fromRGB(191, 232, 1=
40)
                        end
                        if l=5Fv177=5F0.Name =3D=3D "Flower2" then
                            v180.Text =3D "Red Flower" .. " \n" .. v158((g=
ame:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv177=
=5F0.Position).Magnitude / 3) .. " Distance"
                            v180.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                        end
                    end
                end
            end)
        end
    end
end
function UpdateRealFruitChams()
    for =5F, v182 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v182:IsA("Tool") then
            if RealFruitESP then
                if v182.Handle:FindFirstChild("NameEsp" .. Number) then
                    v182.Handle["NameEsp" .. Number].TextLabel.Text =3D v1=
82.Name .. " " .. v158((game:GetService("Players").LocalPlayer.Character.H=
ead.Position - v182.Handle.Position).Magnitude / 3) .. " Distance"
                else
                    local v183 =3D Instance.new("BillboardGui", v182.Handl=
e)
                    v183.Name =3D "NameEsp" .. Number
                    v183.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v183.Size =3D UDim2.new(1, 200, 1, 30)
                    v183.Adornee =3D v182.Handle
                    v183.AlwaysOnTop =3D true
                    local v184 =3D Instance.new("TextLabel", v183)
                    v184.Font =3D Enum.Font.GothamSemibold
                    v184.FontSize =3D "Size14"
                    v184.TextWrapped =3D true
                    v184.Size =3D UDim2.new(1, 0, 1, 0)
                    v184.TextYAlignment =3D "Top"
                    v184.BackgroundTransparency =3D 1
                    v184.TextStrokeTransparency =3D 0.5
                    v184.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                    v184.Text =3D v182.Name .. " \n" .. v158((game:GetServ=
ice("Players").LocalPlayer.Character.Head.Position - v182.Handle.Position)=
.Magnitude / 3) .. " Distance"
                end
            elseif v182.Handle:FindFirstChild("NameEsp" .. Number) then
                v182.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for =5F, v186 in pairs(game.Workspace.PineappleSpawner:GetChildren()) =
do
        if v186:IsA("Tool") then
            if RealFruitESP then
                if not v186.Handle:FindFirstChild("NameEsp" .. Number) the=
n
                    local v187 =3D Instance.new("BillboardGui", v186.Handl=
e)
                    v187.Name =3D "NameEsp" .. Number
                    v187.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v187.Size =3D UDim2.new(1, 200, 1, 30)
                    v187.Adornee =3D v186.Handle
                    v187.AlwaysOnTop =3D true
                    local v188 =3D Instance.new("TextLabel", v187)
                    v188.Font =3D Enum.Font.GothamSemibold
                    v188.FontSize =3D "Size14"
                    v188.TextWrapped =3D true
                    v188.Size =3D UDim2.new(1, 0, 1, 0)
                    v188.TextYAlignment =3D "Top"
                    v188.BackgroundTransparency =3D 1
                    v188.TextStrokeTransparency =3D 0.5
                    v188.TextColor3 =3D Color3.fromRGB(255, 174, 0)
                    v188.Text =3D v186.Name .. " \n" .. v158((game:GetServ=
ice("Players").LocalPlayer.Character.Head.Position - v186.Handle.Position)=
.Magnitude / 3) .. " Distance"
                else
                    v186.Handle["NameEsp" .. Number].TextLabel.Text =3D v1=
86.Name .. " " .. v158((game:GetService("Players").LocalPlayer.Character.H=
ead.Position - v186.Handle.Position).Magnitude / 3) .. " Distance"
                end
            elseif v186.Handle:FindFirstChild("NameEsp" .. Number) then
                v186.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for =5F, v190 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v190:IsA("Tool") then
            if RealFruitESP then
                if v190.Handle:FindFirstChild("NameEsp" .. Number) then
                    v190.Handle["NameEsp" .. Number].TextLabel.Text =3D v1=
90.Name .. " " .. v158((game:GetService("Players").LocalPlayer.Character.H=
ead.Position - v190.Handle.Position).Magnitude / 3) .. " Distance"
                else
                    local v191 =3D Instance.new("BillboardGui", v190.Handl=
e)
                    v191.Name =3D "NameEsp" .. Number
                    v191.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v191.Size =3D UDim2.new(1, 200, 1, 30)
                    v191.Adornee =3D v190.Handle
                    v191.AlwaysOnTop =3D true
                    local v192 =3D Instance.new("TextLabel", v191)
                    v192.Font =3D Enum.Font.GothamSemibold
                    v192.FontSize =3D "Size14"
                    v192.TextWrapped =3D true
                    v192.Size =3D UDim2.new(1, 0, 1, 0)
                    v192.TextYAlignment =3D "Top"
                    v192.BackgroundTransparency =3D 1
                    v192.TextStrokeTransparency =3D 0.5
                    v192.TextColor3 =3D Color3.fromRGB(251, 255, 0)
                    v192.Text =3D v190.Name .. " \n" .. v158((game:GetServ=
ice("Players").LocalPlayer.Character.Head.Position - v190.Handle.Position)=
.Magnitude / 3) .. " Distance"
                end
            elseif v190.Handle:FindFirstChild("NameEsp" .. Number) then
                v190.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    for =5F, v194 in pairs(game:GetService("Workspace").=5FWorldOrigin.Loc=
ations:GetChildren()) do
        do
            local l=5Fv194=5F0 =3D v194
            pcall(function()
                if not IslandESP then
                    if l=5Fv194=5F0:FindFirstChild("NameEsp") then
                        l=5Fv194=5F0:FindFirstChild("NameEsp"):Destroy()
                    end
                elseif l=5Fv194=5F0.Name ~=3D "Sea" then
                    if l=5Fv194=5F0:FindFirstChild("NameEsp") then
                        l=5Fv194=5F0.NameEsp.TextLabel.Text =3D l=5Fv194=
=5F0.Name .. "   \n" .. v158((game:GetService("Players").LocalPlayer.Chara=
cter.Head.Position - l=5Fv194=5F0.Position).Magnitude / 3) .. " Distance"
                    else
                        local v196 =3D Instance.new("BillboardGui", l=5Fv1=
94=5F0)
                        v196.Name =3D "NameEsp"
                        v196.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v196.Size =3D UDim2.new(1, 200, 1, 30)
                        v196.Adornee =3D l=5Fv194=5F0
                        v196.AlwaysOnTop =3D true
                        local v197 =3D Instance.new("TextLabel", v196)
                        v197.Font =3D "GothamSemibold"
                        v197.FontSize =3D "Size14"
                        v197.TextWrapped =3D true
                        v197.Size =3D UDim2.new(1, 0, 1, 0)
                        v197.TextYAlignment =3D "Top"
                        v197.BackgroundTransparency =3D 1
                        v197.TextStrokeTransparency =3D 0.5
                        v197.TextColor3 =3D Color3.fromRGB(8, 247, 255)
                    end
                end
            end)
        end
    end
end
function isnil(v198)
    local v199 =3D nil
    if v198 ~=3D v199 then
        local =5F =3D false
    end
    return true
end
local function v202(v201)
    return math.floor(tonumber(v201) + 0.5)
end
Number =3D math.random(1, 1000000)
function UpdatePlayerChams()
    for =5F, v204 in pairs(game:GetService("Players"):GetChildren()) do
        do
            local l=5Fv204=5F0 =3D v204
            pcall(function()
                if not isnil(l=5Fv204=5F0.Character) then
                    if ESPPlayer then
                        if isnil(l=5Fv204=5F0.Character.Head) or l=5Fv204=
=5F0.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            l=5Fv204=5F0.Character.Head["NameEsp" .. Numbe=
r].TextLabel.Text =3D l=5Fv204=5F0.Name .. " | " .. v202((game:GetService(=
"Players").LocalPlayer.Character.Head.Position - l=5Fv204=5F0.Character.He=
ad.Position).Magnitude / 3) .. " Distance\nHealth : " .. v202(l=5Fv204=5F0=
.Character.Humanoid.Health * 100 / l=5Fv204=5F0.Character.Humanoid.MaxHeal=
th) .. "%"
                        else
                            local v206 =3D Instance.new("BillboardGui", l=
=5Fv204=5F0.Character.Head)
                            v206.Name =3D "NameEsp" .. Number
                            v206.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v206.Size =3D UDim2.new(1, 200, 1, 30)
                            v206.Adornee =3D l=5Fv204=5F0.Character.Head
                            v206.AlwaysOnTop =3D true
                            local v207 =3D Instance.new("TextLabel", v206)=

                            v207.Font =3D Enum.Font.GothamSemibold
                            v207.FontSize =3D "Size14"
                            v207.TextWrapped =3D true
                            v207.Text =3D l=5Fv204=5F0.Name .. " \n" .. v2=
02((game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv=
204=5F0.Character.Head.Position).Magnitude / 3) .. " Distance"
                            v207.Size =3D UDim2.new(1, 0, 1, 0)
                            v207.TextYAlignment =3D "Top"
                            v207.BackgroundTransparency =3D 1
                            v207.TextStrokeTransparency =3D 0.5
                            if l=5Fv204=5F0.Team ~=3D game.Players.LocalPl=
ayer.Team then
                                v207.TextColor3 =3D Color3.new(255, 0, 0)
                            else
                                v207.TextColor3 =3D Color3.new(0, 255, 0)
                            end
                        end
                    elseif l=5Fv204=5F0.Character.Head:FindFirstChild("Nam=
eEsp" .. Number) then
                        l=5Fv204=5F0.Character.Head:FindFirstChild("NameEs=
p" .. Number):Destroy()
                    end
                end
            end)
        end
    end
end
function UpdateChestESP()
    for =5F, v209 in pairs(game:GetService("CollectionService"):GetTagged(=
"=5FChestTagged")) do
        do
            local l=5Fv209=5F0 =3D v209
            pcall(function()
                if =5FG.ChestESP then
                    if not l=5Fv209=5F0:GetAttribute("IsDisabled") then
                        if not l=5Fv209=5F0:FindFirstChild("ChestEsp") the=
n
                            local v211 =3D Instance.new("BillboardGui", l=
=5Fv209=5F0)
                            v211.Name =3D "ChestEsp"
                            v211.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v211.Size =3D UDim2.new(1, 200, 1, 30)
                            v211.Adornee =3D l=5Fv209=5F0
                            v211.AlwaysOnTop =3D true
                            local v212 =3D Instance.new("TextLabel", v211)=

                            v212.Font =3D "Code"
                            v212.FontSize =3D "Size14"
                            v212.TextWrapped =3D true
                            v212.Size =3D UDim2.new(1, 0, 1, 0)
                            v212.TextYAlignment =3D "Top"
                            v212.BackgroundTransparency =3D 1
                            v212.TextStrokeTransparency =3D 0.5
                            v212.TextColor3 =3D Color3.fromRGB(255, 215, 0=
)
                        else
                            local v213 =3D v202((game:GetService("Players"=
).LocalPlayer.Character.Head.Position - l=5Fv209=5F0:GetPivot().Position).=
Magnitude / 3)
                            l=5Fv209=5F0.ChestEsp.TextLabel.Text =3D "Ches=
t\n" .. v213 .. " M"
                        end
                    end
                elseif l=5Fv209=5F0:FindFirstChild("ChestEsp") then
                    l=5Fv209=5F0:FindFirstChild("ChestEsp"):Destroy()
                end
            end)
        end
    end
end
function v202(v214)
    return math.floor(v214 + 0.5)
end
function UpdateDevilChams()
    for =5F, v216 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv216=5F0 =3D v216
            pcall(function()
                if not DevilFruitESP then
                    if l=5Fv216=5F0.Handle:FindFirstChild("NameEsp" .. Num=
ber) then
                        l=5Fv216=5F0.Handle:FindFirstChild("NameEsp" .. Nu=
mber):Destroy()
                    end
                elseif string.find(l=5Fv216=5F0.Name, "Fruit") then
                    if l=5Fv216=5F0.Handle:FindFirstChild("NameEsp" .. Num=
ber) then
                        l=5Fv216=5F0.Handle["NameEsp" .. Number].TextLabel=
.Text =3D l=5Fv216=5F0.Name .. "   \n" .. v202((game:GetService("Players")=
.LocalPlayer.Character.Head.Position - l=5Fv216=5F0.Handle.Position).Magni=
tude / 3) .. " Distance"
                    else
                        local v218 =3D Instance.new("BillboardGui", l=5Fv2=
16=5F0.Handle)
                        v218.Name =3D "NameEsp" .. Number
                        v218.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v218.Size =3D UDim2.new(1, 200, 1, 30)
                        v218.Adornee =3D l=5Fv216=5F0.Handle
                        v218.AlwaysOnTop =3D true
                        local v219 =3D Instance.new("TextLabel", v218)
                        v219.Font =3D Enum.Font.GothamSemibold
                        v219.FontSize =3D "Size14"
                        v219.TextWrapped =3D true
                        v219.Size =3D UDim2.new(1, 0, 1, 0)
                        v219.TextYAlignment =3D "Top"
                        v219.BackgroundTransparency =3D 1
                        v219.TextStrokeTransparency =3D 0.5
                        v219.TextColor3 =3D Color3.fromRGB(255, 255, 255)
                        v219.Text =3D l=5Fv216=5F0.Name .. " \n" .. v202((=
game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv216=
=5F0.Handle.Position).Magnitude / 3) .. " Distance"
                    end
                end
            end)
        end
    end
end
function UpdateFlowerChams()
    for =5F, v221 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv221=5F0 =3D v221
            pcall(function()
                if l=5Fv221=5F0.Name =3D=3D "Flower2" or l=5Fv221=5F0.Name=
 =3D=3D "Flower1" then
                    if not FlowerESP then
                        if l=5Fv221=5F0:FindFirstChild("NameEsp" .. Number=
) then
                            l=5Fv221=5F0:FindFirstChild("NameEsp" .. Numbe=
r):Destroy()
                        end
                    elseif l=5Fv221=5F0:FindFirstChild("NameEsp" .. Number=
) then
                        l=5Fv221=5F0["NameEsp" .. Number].TextLabel.Text =
=3D l=5Fv221=5F0.Name .. "   \n" .. v202((game:GetService("Players").Local=
Player.Character.Head.Position - l=5Fv221=5F0.Position).Magnitude / 3) .. =
" Distance"
                    else
                        local v223 =3D Instance.new("BillboardGui", l=5Fv2=
21=5F0)
                        v223.Name =3D "NameEsp" .. Number
                        v223.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v223.Size =3D UDim2.new(1, 200, 1, 30)
                        v223.Adornee =3D l=5Fv221=5F0
                        v223.AlwaysOnTop =3D true
                        local v224 =3D Instance.new("TextLabel", v223)
                        v224.Font =3D Enum.Font.GothamSemibold
                        v224.FontSize =3D "Size14"
                        v224.TextWrapped =3D true
                        v224.Size =3D UDim2.new(1, 0, 1, 0)
                        v224.TextYAlignment =3D "Top"
                        v224.BackgroundTransparency =3D 1
                        v224.TextStrokeTransparency =3D 0.5
                        v224.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                        if l=5Fv221=5F0.Name =3D=3D "Flower1" then
                            v224.Text =3D "Blue Flower" .. " \n" .. v202((=
game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv221=
=5F0.Position).Magnitude / 3) .. " Distance"
                            v224.TextColor3 =3D Color3.fromRGB(0, 0, 255)
                        end
                        if l=5Fv221=5F0.Name =3D=3D "Flower2" then
                            v224.Text =3D "Red Flower" .. " \n" .. v202((g=
ame:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv221=
=5F0.Position).Magnitude / 3) .. " Distance"
                            v224.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                        end
                    end
                end
            end)
        end
    end
end
function UpdateRealFruitChams()
    for =5F, v226 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v226:IsA("Tool") then
            if not RealFruitESP then
                if v226.Handle:FindFirstChild("NameEsp" .. Number) then
                    v226.Handle:FindFirstChild("NameEsp" .. Number):Destro=
y()
                end
            elseif v226.Handle:FindFirstChild("NameEsp" .. Number) then
                v226.Handle["NameEsp" .. Number].TextLabel.Text =3D v226.N=
ame .. " " .. v202((game:GetService("Players").LocalPlayer.Character.Head.=
Position - v226.Handle.Position).Magnitude / 3) .. " Distance"
            else
                local v227 =3D Instance.new("BillboardGui", v226.Handle)
                v227.Name =3D "NameEsp" .. Number
                v227.ExtentsOffset =3D Vector3.new(0, 1, 0)
                v227.Size =3D UDim2.new(1, 200, 1, 30)
                v227.Adornee =3D v226.Handle
                v227.AlwaysOnTop =3D true
                local v228 =3D Instance.new("TextLabel", v227)
                v228.Font =3D Enum.Font.GothamSemibold
                v228.FontSize =3D "Size14"
                v228.TextWrapped =3D true
                v228.Size =3D UDim2.new(1, 0, 1, 0)
                v228.TextYAlignment =3D "Top"
                v228.BackgroundTransparency =3D 1
                v228.TextStrokeTransparency =3D 0.5
                v228.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                v228.Text =3D v226.Name .. " \n" .. v202((game:GetService(=
"Players").LocalPlayer.Character.Head.Position - v226.Handle.Position).Mag=
nitude / 3) .. " Distance"
            end
        end
    end
    for =5F, v230 in pairs(game.Workspace.PineappleSpawner:GetChildren()) =
do
        if v230:IsA("Tool") then
            if RealFruitESP then
                if v230.Handle:FindFirstChild("NameEsp" .. Number) then
                    v230.Handle["NameEsp" .. Number].TextLabel.Text =3D v2=
30.Name .. " " .. v202((game:GetService("Players").LocalPlayer.Character.H=
ead.Position - v230.Handle.Position).Magnitude / 3) .. " Distance"
                else
                    local v231 =3D Instance.new("BillboardGui", v230.Handl=
e)
                    v231.Name =3D "NameEsp" .. Number
                    v231.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v231.Size =3D UDim2.new(1, 200, 1, 30)
                    v231.Adornee =3D v230.Handle
                    v231.AlwaysOnTop =3D true
                    local v232 =3D Instance.new("TextLabel", v231)
                    v232.Font =3D Enum.Font.GothamSemibold
                    v232.FontSize =3D "Size14"
                    v232.TextWrapped =3D true
                    v232.Size =3D UDim2.new(1, 0, 1, 0)
                    v232.TextYAlignment =3D "Top"
                    v232.BackgroundTransparency =3D 1
                    v232.TextStrokeTransparency =3D 0.5
                    v232.TextColor3 =3D Color3.fromRGB(255, 174, 0)
                    v232.Text =3D v230.Name .. " \n" .. v202((game:GetServ=
ice("Players").LocalPlayer.Character.Head.Position - v230.Handle.Position)=
.Magnitude / 3) .. " Distance"
                end
            elseif v230.Handle:FindFirstChild("NameEsp" .. Number) then
                v230.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for =5F, v234 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v234:IsA("Tool") then
            if RealFruitESP then
                if not v234.Handle:FindFirstChild("NameEsp" .. Number) the=
n
                    local v235 =3D Instance.new("BillboardGui", v234.Handl=
e)
                    v235.Name =3D "NameEsp" .. Number
                    v235.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v235.Size =3D UDim2.new(1, 200, 1, 30)
                    v235.Adornee =3D v234.Handle
                    v235.AlwaysOnTop =3D true
                    local v236 =3D Instance.new("TextLabel", v235)
                    v236.Font =3D Enum.Font.GothamSemibold
                    v236.FontSize =3D "Size14"
                    v236.TextWrapped =3D true
                    v236.Size =3D UDim2.new(1, 0, 1, 0)
                    v236.TextYAlignment =3D "Top"
                    v236.BackgroundTransparency =3D 1
                    v236.TextStrokeTransparency =3D 0.5
                    v236.TextColor3 =3D Color3.fromRGB(251, 255, 0)
                    v236.Text =3D v234.Name .. " \n" .. v202((game:GetServ=
ice("Players").LocalPlayer.Character.Head.Position - v234.Handle.Position)=
.Magnitude / 3) .. " Distance"
                else
                    v234.Handle["NameEsp" .. Number].TextLabel.Text =3D v2=
34.Name .. " " .. v202((game:GetService("Players").LocalPlayer.Character.H=
ead.Position - v234.Handle.Position).Magnitude / 3) .. " Distance"
                end
            elseif v234.Handle:FindFirstChild("NameEsp" .. Number) then
                v234.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
end
function UpdateIslandESP()
    for =5F, v238 in pairs(game:GetService("Workspace").=5FWorldOrigin.Loc=
ations:GetChildren()) do
        do
            local l=5Fv238=5F0 =3D v238
            pcall(function()
                if IslandESP then
                    if l=5Fv238=5F0.Name ~=3D "Sea" then
                        if l=5Fv238=5F0:FindFirstChild("NameEsp") then
                            l=5Fv238=5F0.NameEsp.TextLabel.Text =3D l=5Fv2=
38=5F0.Name .. "   \n" .. v202((game:GetService("Players").LocalPlayer.Cha=
racter.Head.Position - l=5Fv238=5F0.Position).Magnitude / 3) .. " Distance=
"
                        else
                            local v240 =3D Instance.new("BillboardGui", l=
=5Fv238=5F0)
                            v240.Name =3D "NameEsp"
                            v240.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v240.Size =3D UDim2.new(1, 200, 1, 30)
                            v240.Adornee =3D l=5Fv238=5F0
                            v240.AlwaysOnTop =3D true
                            local v241 =3D Instance.new("TextLabel", v240)=

                            v241.Font =3D "GothamSemibold"
                            v241.FontSize =3D "Size14"
                            v241.TextWrapped =3D true
                            v241.Size =3D UDim2.new(1, 0, 1, 0)
                            v241.TextYAlignment =3D "Top"
                            v241.BackgroundTransparency =3D 1
                            v241.TextStrokeTransparency =3D 0.5
                            v241.TextColor3 =3D Color3.fromRGB(8, 247, 255=
)
                        end
                    end
                elseif l=5Fv238=5F0:FindFirstChild("NameEsp") then
                    l=5Fv238=5F0:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
end
function isnil(v242)
    local v243 =3D nil
    if v242 ~=3D v243 then
        local =5F =3D false
    end
    return true
end
local function v246(v245)
    return math.floor(tonumber(v245) + 0.5)
end
Number =3D math.random(1, 1000000)
function UpdatePlayerChams()
    for =5F, v248 in pairs(game:GetService("Players"):GetChildren()) do
        do
            local l=5Fv248=5F0 =3D v248
            pcall(function()
                if not isnil(l=5Fv248=5F0.Character) then
                    if ESPPlayer then
                        if not isnil(l=5Fv248=5F0.Character.Head) and not =
l=5Fv248=5F0.Character.Head:FindFirstChild("NameEsp" .. Number) then
                            local v250 =3D Instance.new("BillboardGui", l=
=5Fv248=5F0.Character.Head)
                            v250.Name =3D "NameEsp" .. Number
                            v250.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v250.Size =3D UDim2.new(1, 200, 1, 30)
                            v250.Adornee =3D l=5Fv248=5F0.Character.Head
                            v250.AlwaysOnTop =3D true
                            local v251 =3D Instance.new("TextLabel", v250)=

                            v251.Font =3D Enum.Font.GothamSemibold
                            v251.FontSize =3D "Size14"
                            v251.TextWrapped =3D true
                            v251.Text =3D l=5Fv248=5F0.Name .. " \n" .. v2=
46((game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv=
248=5F0.Character.Head.Position).Magnitude / 3) .. " Distance"
                            v251.Size =3D UDim2.new(1, 0, 1, 0)
                            v251.TextYAlignment =3D "Top"
                            v251.BackgroundTransparency =3D 1
                            v251.TextStrokeTransparency =3D 0.5
                            if l=5Fv248=5F0.Team ~=3D game.Players.LocalPl=
ayer.Team then
                                v251.TextColor3 =3D Color3.new(255, 0, 0)
                            else
                                v251.TextColor3 =3D Color3.new(0, 255, 0)
                            end
                        else
                            l=5Fv248=5F0.Character.Head["NameEsp" .. Numbe=
r].TextLabel.Text =3D l=5Fv248=5F0.Name .. " | " .. v246((game:GetService(=
"Players").LocalPlayer.Character.Head.Position - l=5Fv248=5F0.Character.He=
ad.Position).Magnitude / 3) .. " Distance\nHealth : " .. v246(l=5Fv248=5F0=
.Character.Humanoid.Health * 100 / l=5Fv248=5F0.Character.Humanoid.MaxHeal=
th) .. "%"
                        end
                    elseif l=5Fv248=5F0.Character.Head:FindFirstChild("Nam=
eEsp" .. Number) then
                        l=5Fv248=5F0.Character.Head:FindFirstChild("NameEs=
p" .. Number):Destroy()
                    end
                end
            end)
        end
    end
end
function UpdateChestESP()
    for =5F, v253 in pairs(game:GetService("CollectionService"):GetTagged(=
"=5FChestTagged")) do
        do
            local l=5Fv253=5F0 =3D v253
            pcall(function()
                if =5FG.ChestESP then
                    if not l=5Fv253=5F0:GetAttribute("IsDisabled") then
                        if l=5Fv253=5F0:FindFirstChild("ChestEsp") then
                            local v255 =3D v246((game:GetService("Players"=
).LocalPlayer.Character.Head.Position - l=5Fv253=5F0:GetPivot().Position).=
Magnitude / 3)
                            l=5Fv253=5F0.ChestEsp.TextLabel.Text =3D "Ches=
t\n" .. v255 .. " M"
                        else
                            local v256 =3D Instance.new("BillboardGui", l=
=5Fv253=5F0)
                            v256.Name =3D "ChestEsp"
                            v256.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v256.Size =3D UDim2.new(1, 200, 1, 30)
                            v256.Adornee =3D l=5Fv253=5F0
                            v256.AlwaysOnTop =3D true
                            local v257 =3D Instance.new("TextLabel", v256)=

                            v257.Font =3D "Code"
                            v257.FontSize =3D "Size14"
                            v257.TextWrapped =3D true
                            v257.Size =3D UDim2.new(1, 0, 1, 0)
                            v257.TextYAlignment =3D "Top"
                            v257.BackgroundTransparency =3D 1
                            v257.TextStrokeTransparency =3D 0.5
                            v257.TextColor3 =3D Color3.fromRGB(255, 215, 0=
)
                        end
                    end
                elseif l=5Fv253=5F0:FindFirstChild("ChestEsp") then
                    l=5Fv253=5F0:FindFirstChild("ChestEsp"):Destroy()
                end
            end)
        end
    end
end
function v246(v258)
    return math.floor(v258 + 0.5)
end
function UpdateDevilChams()
    for =5F, v260 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv260=5F0 =3D v260
            pcall(function()
                if not DevilFruitESP then
                    if l=5Fv260=5F0.Handle:FindFirstChild("NameEsp" .. Num=
ber) then
                        l=5Fv260=5F0.Handle:FindFirstChild("NameEsp" .. Nu=
mber):Destroy()
                    end
                elseif string.find(l=5Fv260=5F0.Name, "Fruit") then
                    if l=5Fv260=5F0.Handle:FindFirstChild("NameEsp" .. Num=
ber) then
                        l=5Fv260=5F0.Handle["NameEsp" .. Number].TextLabel=
.Text =3D l=5Fv260=5F0.Name .. "   \n" .. v246((game:GetService("Players")=
.LocalPlayer.Character.Head.Position - l=5Fv260=5F0.Handle.Position).Magni=
tude / 3) .. " Distance"
                    else
                        local v262 =3D Instance.new("BillboardGui", l=5Fv2=
60=5F0.Handle)
                        v262.Name =3D "NameEsp" .. Number
                        v262.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v262.Size =3D UDim2.new(1, 200, 1, 30)
                        v262.Adornee =3D l=5Fv260=5F0.Handle
                        v262.AlwaysOnTop =3D true
                        local v263 =3D Instance.new("TextLabel", v262)
                        v263.Font =3D Enum.Font.GothamSemibold
                        v263.FontSize =3D "Size14"
                        v263.TextWrapped =3D true
                        v263.Size =3D UDim2.new(1, 0, 1, 0)
                        v263.TextYAlignment =3D "Top"
                        v263.BackgroundTransparency =3D 1
                        v263.TextStrokeTransparency =3D 0.5
                        v263.TextColor3 =3D Color3.fromRGB(251, 134, 163)
                        v263.Text =3D l=5Fv260=5F0.Name .. " \n" .. v246((=
game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv260=
=5F0.Handle.Position).Magnitude / 3) .. " Distance"
                    end
                end
            end)
        end
    end
end
function UpdateFlowerChams()
    for =5F, v265 in pairs(game.Workspace:GetChildren()) do
        do
            local l=5Fv265=5F0 =3D v265
            pcall(function()
                if l=5Fv265=5F0.Name =3D=3D "Flower2" or l=5Fv265=5F0.Name=
 =3D=3D "Flower1" then
                    if FlowerESP then
                        if l=5Fv265=5F0:FindFirstChild("NameEsp" .. Number=
) then
                            l=5Fv265=5F0["NameEsp" .. Number].TextLabel.Te=
xt =3D l=5Fv265=5F0.Name .. "   \n" .. v246((game:GetService("Players").Lo=
calPlayer.Character.Head.Position - l=5Fv265=5F0.Position).Magnitude / 3) =
.. " Distance"
                        else
                            local v267 =3D Instance.new("BillboardGui", l=
=5Fv265=5F0)
                            v267.Name =3D "NameEsp" .. Number
                            v267.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v267.Size =3D UDim2.new(1, 200, 1, 30)
                            v267.Adornee =3D l=5Fv265=5F0
                            v267.AlwaysOnTop =3D true
                            local v268 =3D Instance.new("TextLabel", v267)=

                            v268.Font =3D Enum.Font.GothamSemibold
                            v268.FontSize =3D "Size14"
                            v268.TextWrapped =3D true
                            v268.Size =3D UDim2.new(1, 0, 1, 0)
                            v268.TextYAlignment =3D "Top"
                            v268.BackgroundTransparency =3D 1
                            v268.TextStrokeTransparency =3D 0.5
                            v268.TextColor3 =3D Color3.fromRGB(196, 169, 3=
8)
                            if l=5Fv265=5F0.Name =3D=3D "Flower1" then
                                v268.Text =3D "Blue Flower" .. " \n" .. v2=
46((game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv=
265=5F0.Position).Magnitude / 3) .. " Distance"
                                v268.TextColor3 =3D Color3.fromRGB(174, 20=
9, 150)
                            end
                            if l=5Fv265=5F0.Name =3D=3D "Flower2" then
                                v268.Text =3D "Red Flower" .. " \n" .. v24=
6((game:GetService("Players").LocalPlayer.Character.Head.Position - l=5Fv2=
65=5F0.Position).Magnitude / 3) .. " Distance"
                                v268.TextColor3 =3D Color3.fromRGB(196, 16=
9, 38)
                            end
                        end
                    elseif l=5Fv265=5F0:FindFirstChild("NameEsp" .. Number=
) then
                        l=5Fv265=5F0:FindFirstChild("NameEsp" .. Number):D=
estroy()
                    end
                end
            end)
        end
    end
end
function UpdateRealFruitChams()
    for =5F, v270 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v270:IsA("Tool") then
            if RealFruitESP then
                if not v270.Handle:FindFirstChild("NameEsp" .. Number) the=
n
                    local v271 =3D Instance.new("BillboardGui", v270.Handl=
e)
                    v271.Name =3D "NameEsp" .. Number
                    v271.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v271.Size =3D UDim2.new(1, 200, 1, 30)
                    v271.Adornee =3D v270.Handle
                    v271.AlwaysOnTop =3D true
                    local v272 =3D Instance.new("TextLabel", v271)
                    v272.Font =3D Enum.Font.GothamSemibold
                    v272.FontSize =3D "Size14"
                    v272.TextWrapped =3D true
                    v272.Size =3D UDim2.new(1, 0, 1, 0)
                    v272.TextYAlignment =3D "Top"
                    v272.BackgroundTransparency =3D 1
                    v272.TextStrokeTransparency =3D 0.5
                    v272.TextColor3 =3D Color3.fromRGB(255, 0, 0)
                    v272.Text =3D v270.Name .. " \n" .. v246((game:GetServ=
ice("Players").LocalPlayer.Character.Head.Position - v270.Handle.Position)=
.Magnitude / 3) .. " Distance"
                else
                    v270.Handle["NameEsp" .. Number].TextLabel.Text =3D v2=
70.Name .. " " .. v246((game:GetService("Players").LocalPlayer.Character.H=
ead.Position - v270.Handle.Position).Magnitude / 3) .. " Distance"
                end
            elseif v270.Handle:FindFirstChild("NameEsp" .. Number) then
                v270.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
    for =5F, v274 in pairs(game.Workspace.PineappleSpawner:GetChildren()) =
do
        if v274:IsA("Tool") then
            if not RealFruitESP then
                if v274.Handle:FindFirstChild("NameEsp" .. Number) then
                    v274.Handle:FindFirstChild("NameEsp" .. Number):Destro=
y()
                end
            elseif not v274.Handle:FindFirstChild("NameEsp" .. Number) the=
n
                local v275 =3D Instance.new("BillboardGui", v274.Handle)
                v275.Name =3D "NameEsp" .. Number
                v275.ExtentsOffset =3D Vector3.new(0, 1, 0)
                v275.Size =3D UDim2.new(1, 200, 1, 30)
                v275.Adornee =3D v274.Handle
                v275.AlwaysOnTop =3D true
                local v276 =3D Instance.new("TextLabel", v275)
                v276.Font =3D Enum.Font.GothamSemibold
                v276.FontSize =3D "Size14"
                v276.TextWrapped =3D true
                v276.Size =3D UDim2.new(1, 0, 1, 0)
                v276.TextYAlignment =3D "Top"
                v276.BackgroundTransparency =3D 1
                v276.TextStrokeTransparency =3D 0.5
                v276.TextColor3 =3D Color3.fromRGB(255, 174, 0)
                v276.Text =3D v274.Name .. " \n" .. v246((game:GetService(=
"Players").LocalPlayer.Character.Head.Position - v274.Handle.Position).Mag=
nitude / 3) .. " Distance"
            else
                v274.Handle["NameEsp" .. Number].TextLabel.Text =3D v274.N=
ame .. " " .. v246((game:GetService("Players").LocalPlayer.Character.Head.=
Position - v274.Handle.Position).Magnitude / 3) .. " Distance"
            end
        end
    end
    for =5F, v278 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v278:IsA("Tool") then
            if RealFruitESP then
                if not v278.Handle:FindFirstChild("NameEsp" .. Number) the=
n
                    local v279 =3D Instance.new("BillboardGui", v278.Handl=
e)
                    v279.Name =3D "NameEsp" .. Number
                    v279.ExtentsOffset =3D Vector3.new(0, 1, 0)
                    v279.Size =3D UDim2.new(1, 200, 1, 30)
                    v279.Adornee =3D v278.Handle
                    v279.AlwaysOnTop =3D true
                    local v280 =3D Instance.new("TextLabel", v279)
                    v280.Font =3D Enum.Font.GothamSemibold
                    v280.FontSize =3D "Size14"
                    v280.TextWrapped =3D true
                    v280.Size =3D UDim2.new(1, 0, 1, 0)
                    v280.TextYAlignment =3D "Top"
                    v280.BackgroundTransparency =3D 1
                    v280.TextStrokeTransparency =3D 0.5
                    v280.TextColor3 =3D Color3.fromRGB(251, 255, 0)
                    v280.Text =3D v278.Name .. " \n" .. v246((game:GetServ=
ice("Players").LocalPlayer.Character.Head.Position - v278.Handle.Position)=
.Magnitude / 3) .. " Distance"
                else
                    v278.Handle["NameEsp" .. Number].TextLabel.Text =3D v2=
78.Name .. " " .. v246((game:GetService("Players").LocalPlayer.Character.H=
ead.Position - v278.Handle.Position).Magnitude / 3) .. " Distance"
                end
            elseif v278.Handle:FindFirstChild("NameEsp" .. Number) then
                v278.Handle:FindFirstChild("NameEsp" .. Number):Destroy()
            end
        end
    end
end
spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for =5F, v282 in pairs(game:GetService("Workspace").Enemie=
s:GetChildren()) do
                    if v282:FindFirstChild("HumanoidRootPart") then
                        if not v282:FindFirstChild("MobEap") then
                            local l=5FBillboardGui=5F0 =3D Instance.new("B=
illboardGui")
                            local l=5FTextLabel=5F0 =3D Instance.new("Text=
Label")
                            l=5FBillboardGui=5F0.Parent =3D v282
                            l=5FBillboardGui=5F0.ZIndexBehavior =3D Enum.Z=
IndexBehavior.Sibling
                            l=5FBillboardGui=5F0.Active =3D true
                            l=5FBillboardGui=5F0.Name =3D "MobEap"
                            l=5FBillboardGui=5F0.AlwaysOnTop =3D true
                            l=5FBillboardGui=5F0.LightInfluence =3D 1
                            l=5FBillboardGui=5F0.Size =3D UDim2.new(0, 200=
, 0, 50)
                            l=5FBillboardGui=5F0.StudsOffset =3D Vector3.n=
ew(0, 2.5, 0)
                            l=5FTextLabel=5F0.Parent =3D l=5FBillboardGui=
=5F0
                            l=5FTextLabel=5F0.BackgroundColor3 =3D Color3.=
fromRGB(255, 255, 255)
                            l=5FTextLabel=5F0.BackgroundTransparency =3D 1=

                            l=5FTextLabel=5F0.Size =3D UDim2.new(0, 200, 0=
, 50)
                            l=5FTextLabel=5F0.Font =3D Enum.Font.GothamBol=
d
                            l=5FTextLabel=5F0.TextColor3 =3D Color3.fromRG=
B(7, 236, 240)
                            l=5FTextLabel=5F0.Text.Size =3D 35
                        end
                        local v285 =3D math.floor((game.Players.LocalPlaye=
r.Character.HumanoidRootPart.Position - v282.HumanoidRootPart.Position).Ma=
gnitude)
                        v282.MobEap.TextLabel.Text =3D v282.Name .. " - " =
.. v285 .. " Distance"
                    end
                end
            else
                for =5F, v287 in pairs(game:GetService("Workspace").Enemie=
s:GetChildren()) do
                    if v287:FindFirstChild("MobEap") then
                        v287.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if not SeaESP then
                for =5F, v289 in pairs(game:GetService("Workspace").SeaBea=
sts:GetChildren()) do
                    if v289:FindFirstChild("Seaesps") then
                        v289.Seaesps:Destroy()
                    end
                end
            else
                for =5F, v291 in pairs(game:GetService("Workspace").SeaBea=
sts:GetChildren()) do
                    if v291:FindFirstChild("HumanoidRootPart") then
                        if not v291:FindFirstChild("Seaesps") then
                            local l=5FBillboardGui=5F1 =3D Instance.new("B=
illboardGui")
                            local l=5FTextLabel=5F1 =3D Instance.new("Text=
Label")
                            l=5FBillboardGui=5F1.Parent =3D v291
                            l=5FBillboardGui=5F1.ZIndexBehavior =3D Enum.Z=
IndexBehavior.Sibling
                            l=5FBillboardGui=5F1.Active =3D true
                            l=5FBillboardGui=5F1.Name =3D "Seaesps"
                            l=5FBillboardGui=5F1.AlwaysOnTop =3D true
                            l=5FBillboardGui=5F1.LightInfluence =3D 1
                            l=5FBillboardGui=5F1.Size =3D UDim2.new(0, 200=
, 0, 50)
                            l=5FBillboardGui=5F1.StudsOffset =3D Vector3.n=
ew(0, 2.5, 0)
                            l=5FTextLabel=5F1.Parent =3D l=5FBillboardGui=
=5F1
                            l=5FTextLabel=5F1.BackgroundColor3 =3D Color3.=
fromRGB(255, 255, 255)
                            l=5FTextLabel=5F1.BackgroundTransparency =3D 1=

                            l=5FTextLabel=5F1.Size =3D UDim2.new(0, 200, 0=
, 50)
                            l=5FTextLabel=5F1.Font =3D Enum.Font.GothamBol=
d
                            l=5FTextLabel=5F1.TextColor3 =3D Color3.fromRG=
B(7, 236, 240)
                            l=5FTextLabel=5F1.Text.Size =3D 35
                        end
                        local v294 =3D math.floor((game.Players.LocalPlaye=
r.Character.HumanoidRootPart.Position - v291.HumanoidRootPart.Position).Ma=
gnitude)
                        v291.Seaesps.TextLabel.Text =3D v291.Name .. " - "=
 .. v294 .. " Distance"
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if not NpcESP then
                for =5F, v296 in pairs(game:GetService("Workspace").NPCs:G=
etChildren()) do
                    if v296:FindFirstChild("NpcEspes") then
                        v296.NpcEspes:Destroy()
                    end
                end
            else
                for =5F, v298 in pairs(game:GetService("Workspace").NPCs:G=
etChildren()) do
                    if v298:FindFirstChild("HumanoidRootPart") then
                        if not v298:FindFirstChild("NpcEspes") then
                            local l=5FBillboardGui=5F2 =3D Instance.new("B=
illboardGui")
                            local l=5FTextLabel=5F2 =3D Instance.new("Text=
Label")
                            l=5FBillboardGui=5F2.Parent =3D v298
                            l=5FBillboardGui=5F2.ZIndexBehavior =3D Enum.Z=
IndexBehavior.Sibling
                            l=5FBillboardGui=5F2.Active =3D true
                            l=5FBillboardGui=5F2.Name =3D "NpcEspes"
                            l=5FBillboardGui=5F2.AlwaysOnTop =3D true
                            l=5FBillboardGui=5F2.LightInfluence =3D 1
                            l=5FBillboardGui=5F2.Size =3D UDim2.new(0, 200=
, 0, 50)
                            l=5FBillboardGui=5F2.StudsOffset =3D Vector3.n=
ew(0, 2.5, 0)
                            l=5FTextLabel=5F2.Parent =3D l=5FBillboardGui=
=5F2
                            l=5FTextLabel=5F2.BackgroundColor3 =3D Color3.=
fromRGB(255, 255, 255)
                            l=5FTextLabel=5F2.BackgroundTransparency =3D 1=

                            l=5FTextLabel=5F2.Size =3D UDim2.new(0, 200, 0=
, 50)
                            l=5FTextLabel=5F2.Font =3D Enum.Font.GothamBol=
d
                            l=5FTextLabel=5F2.TextColor3 =3D Color3.fromRG=
B(7, 236, 240)
                            l=5FTextLabel=5F2.Text.Size =3D 35
                        end
                        local v301 =3D math.floor((game.Players.LocalPlaye=
r.Character.HumanoidRootPart.Position - v298.HumanoidRootPart.Position).Ma=
gnitude)
                        v298.NpcEspes.TextLabel.Text =3D v298.Name .. " - =
" .. v301 .. " Distance"
                    end
                end
            end
        end)
    end
end)
function isnil(v302)
    local v303 =3D nil
    if v302 ~=3D v303 then
        local =5F =3D false
    end
    return true
end
local function v306(v305)
    return math.floor(tonumber(v305) + 0.5)
end
Number =3D math.random(1, 1000000)
function UpdateIslandMirageESP()
    for =5F, v308 in pairs(game:GetService("Workspace").=5FWorldOrigin.Loc=
ations:GetChildren()) do
        do
            local l=5Fv308=5F0 =3D v308
            pcall(function()
                if not MirageIslandESP then
                    if l=5Fv308=5F0:FindFirstChild("NameEsp") then
                        l=5Fv308=5F0:FindFirstChild("NameEsp"):Destroy()
                    end
                elseif l=5Fv308=5F0.Name =3D=3D "Mirage Island" then
                    if l=5Fv308=5F0:FindFirstChild("NameEsp") then
                        l=5Fv308=5F0.NameEsp.TextLabel.Text =3D l=5Fv308=
=5F0.Name .. "   \n" .. v306((game:GetService("Players").LocalPlayer.Chara=
cter.Head.Position - l=5Fv308=5F0.Position).Magnitude / 3) .. " M"
                    else
                        local v310 =3D Instance.new("BillboardGui", l=5Fv3=
08=5F0)
                        v310.Name =3D "NameEsp"
                        v310.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v310.Size =3D UDim2.new(1, 200, 1, 30)
                        v310.Adornee =3D l=5Fv308=5F0
                        v310.AlwaysOnTop =3D true
                        local v311 =3D Instance.new("TextLabel", v310)
                        v311.Font =3D "Code"
                        v311.FontSize =3D "Size14"
                        v311.TextWrapped =3D true
                        v311.Size =3D UDim2.new(1, 0, 1, 0)
                        v311.TextYAlignment =3D "Top"
                        v311.BackgroundTransparency =3D 1
                        v311.TextStrokeTransparency =3D 0.5
                        v311.TextColor3 =3D Color3.fromRGB(80, 245, 245)
                    end
                end
            end)
        end
    end
end
function UpdatePrehistoricIslandESP()
    for =5F, v313 in pairs(game:GetService("Workspace").=5FWorldOrigin.Loc=
ations:GetChildren()) do
        do
            local l=5Fv313=5F0 =3D v313
            pcall(function()
                if not PrehistoricIslandESP then
                    if l=5Fv313=5F0:FindFirstChild("NameEsp") then
                        l=5Fv313=5F0:FindFirstChild("NameEsp"):Destroy()
                    end
                elseif l=5Fv313=5F0.Name =3D=3D "PrehistoricIsland" then
                    if not l=5Fv313=5F0:FindFirstChild("NameEsp") then
                        local v315 =3D Instance.new("BillboardGui", l=5Fv3=
13=5F0)
                        v315.Name =3D "NameEsp"
                        v315.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v315.Size =3D UDim2.new(1, 200, 1, 30)
                        v315.Adornee =3D l=5Fv313=5F0
                        v315.AlwaysOnTop =3D true
                        local v316 =3D Instance.new("TextLabel", v315)
                        v316.Font =3D "Code"
                        v316.FontSize =3D "Size14"
                        v316.TextWrapped =3D true
                        v316.Size =3D UDim2.new(1, 0, 1, 0)
                        v316.TextYAlignment =3D "Top"
                        v316.BackgroundTransparency =3D 1
                        v316.TextStrokeTransparency =3D 0.5
                        v316.TextColor3 =3D Color3.fromRGB(80, 245, 245)
                    else
                        l=5Fv313=5F0.NameEsp.TextLabel.Text =3D l=5Fv313=
=5F0.Name .. "   \n" .. v306((game:GetService("Players").LocalPlayer.Chara=
cter.Head.Position - l=5Fv313=5F0.Position).Magnitude / 3) .. " M"
                    end
                end
            end)
        end
    end
end
function UpdateAfdESP()
    for =5F, v318 in pairs(game:GetService("Workspace").NPCs:GetChildren()=
) do
        do
            local l=5Fv318=5F0 =3D v318
            pcall(function()
                if not AfdESP then
                    if l=5Fv318=5F0:FindFirstChild("NameEsp") then
                        l=5Fv318=5F0:FindFirstChild("NameEsp"):Destroy()
                    end
                elseif l=5Fv318=5F0.Name =3D=3D "Advanced Fruit Dealer" th=
en
                    if l=5Fv318=5F0:FindFirstChild("NameEsp") then
                        l=5Fv318=5F0.NameEsp.TextLabel.Text =3D l=5Fv318=
=5F0.Name .. "   \n" .. v306((game:GetService("Players").LocalPlayer.Chara=
cter.Head.Position - l=5Fv318=5F0.Position).Magnitude / 3) .. " M"
                    else
                        local v320 =3D Instance.new("BillboardGui", l=5Fv3=
18=5F0)
                        v320.Name =3D "NameEsp"
                        v320.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v320.Size =3D UDim2.new(1, 200, 1, 30)
                        v320.Adornee =3D l=5Fv318=5F0
                        v320.AlwaysOnTop =3D true
                        local v321 =3D Instance.new("TextLabel", v320)
                        v321.Font =3D "Code"
                        v321.FontSize =3D "Size14"
                        v321.TextWrapped =3D true
                        v321.Size =3D UDim2.new(1, 0, 1, 0)
                        v321.TextYAlignment =3D "Top"
                        v321.BackgroundTransparency =3D 1
                        v321.TextStrokeTransparency =3D 0.5
                        v321.TextColor3 =3D Color3.fromRGB(80, 245, 245)
                    end
                end
            end)
        end
    end
end
function UpdateAuraESP()
    for =5F, v323 in pairs(game:GetService("Workspace").NPCs:GetChildren()=
) do
        do
            local l=5Fv323=5F0 =3D v323
            pcall(function()
                if AuraESP then
                    if l=5Fv323=5F0.Name =3D=3D "Master of Enhancement" th=
en
                        if l=5Fv323=5F0:FindFirstChild("NameEsp") then
                            l=5Fv323=5F0.NameEsp.TextLabel.Text =3D l=5Fv3=
23=5F0.Name .. "   \n" .. v306((game:GetService("Players").LocalPlayer.Cha=
racter.Head.Position - l=5Fv323=5F0.Position).Magnitude / 3) .. " M"
                        else
                            local v325 =3D Instance.new("BillboardGui", l=
=5Fv323=5F0)
                            v325.Name =3D "NameEsp"
                            v325.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v325.Size =3D UDim2.new(1, 200, 1, 30)
                            v325.Adornee =3D l=5Fv323=5F0
                            v325.AlwaysOnTop =3D true
                            local v326 =3D Instance.new("TextLabel", v325)=

                            v326.Font =3D "Code"
                            v326.FontSize =3D "Size14"
                            v326.TextWrapped =3D true
                            v326.Size =3D UDim2.new(1, 0, 1, 0)
                            v326.TextYAlignment =3D "Top"
                            v326.BackgroundTransparency =3D 1
                            v326.TextStrokeTransparency =3D 0.5
                            v326.TextColor3 =3D Color3.fromRGB(80, 245, 24=
5)
                        end
                    end
                elseif l=5Fv323=5F0:FindFirstChild("NameEsp") then
                    l=5Fv323=5F0:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
end
function UpdateLSDESP()
    for =5F, v328 in pairs(game:GetService("Workspace").NPCs:GetChildren()=
) do
        do
            local l=5Fv328=5F0 =3D v328
            pcall(function()
                if LADESP then
                    if l=5Fv328=5F0.Name =3D=3D "Legendary Sword Dealer" t=
hen
                        if l=5Fv328=5F0:FindFirstChild("NameEsp") then
                            l=5Fv328=5F0.NameEsp.TextLabel.Text =3D l=5Fv3=
28=5F0.Name .. "   \n" .. v306((game:GetService("Players").LocalPlayer.Cha=
racter.Head.Position - l=5Fv328=5F0.Position).Magnitude / 3) .. " M"
                        else
                            local v330 =3D Instance.new("BillboardGui", l=
=5Fv328=5F0)
                            v330.Name =3D "NameEsp"
                            v330.ExtentsOffset =3D Vector3.new(0, 1, 0)
                            v330.Size =3D UDim2.new(1, 200, 1, 30)
                            v330.Adornee =3D l=5Fv328=5F0
                            v330.AlwaysOnTop =3D true
                            local v331 =3D Instance.new("TextLabel", v330)=

                            v331.Font =3D "Code"
                            v331.FontSize =3D "Size14"
                            v331.TextWrapped =3D true
                            v331.Size =3D UDim2.new(1, 0, 1, 0)
                            v331.TextYAlignment =3D "Top"
                            v331.BackgroundTransparency =3D 1
                            v331.TextStrokeTransparency =3D 0.5
                            v331.TextColor3 =3D Color3.fromRGB(80, 245, 24=
5)
                        end
                    end
                elseif l=5Fv328=5F0:FindFirstChild("NameEsp") then
                    l=5Fv328=5F0:FindFirstChild("NameEsp"):Destroy()
                end
            end)
        end
    end
end
spawn(function()
    while wait() do
        if InfAbility then
            InfAb()
        end
    end
end)
function InfAb()
    if InfAbility then
        if not game:GetService("Players").LocalPlayer.Character.HumanoidRo=
otPart:FindFirstChild("Agility") then
            local l=5FParticleEmitter=5F0 =3D Instance.new("ParticleEmitte=
r")
            l=5FParticleEmitter=5F0.Acceleration =3D Vector3.new(0, 0, 0)
            l=5FParticleEmitter=5F0.Archivable =3D true
            l=5FParticleEmitter=5F0.Drag =3D 20
            l=5FParticleEmitter=5F0.EmissionDirection =3D Enum.NormalId.To=
p
            l=5FParticleEmitter=5F0.Enabled =3D true
            l=5FParticleEmitter=5F0.Lifetime =3D NumberRange.new(0, 0)
            l=5FParticleEmitter=5F0.LightInfluence =3D 0
            l=5FParticleEmitter=5F0.LockedToPart =3D true
            l=5FParticleEmitter=5F0.Name =3D "Agility"
            l=5FParticleEmitter=5F0.Rate =3D 500
            local v333 =3D {NumberSequenceKeypoint.new(0, 0), NumberSequen=
ceKeypoint.new(1, 4)}
            l=5FParticleEmitter=5F0.Size =3D NumberSequence.new(v333)
            l=5FParticleEmitter=5F0.RotSpeed =3D NumberRange.new(9999, 999=
99)
            l=5FParticleEmitter=5F0.Rotation =3D NumberRange.new(0, 0)
            l=5FParticleEmitter=5F0.Speed =3D NumberRange.new(30, 30)
            l=5FParticleEmitter=5F0.SpreadAngle =3D Vector2.new(0, 0, 0, 0=
)
            l=5FParticleEmitter=5F0.Texture =3D ""
            l=5FParticleEmitter=5F0.VelocityInheritance =3D 0
            l=5FParticleEmitter=5F0.ZOffset =3D 2
            l=5FParticleEmitter=5F0.Transparency =3D NumberSequence.new(0)=

            l=5FParticleEmitter=5F0.Color =3D ColorSequence.new(Color3.fro=
mRGB(0, 0, 0), Color3.fromRGB(0, 0, 0))
            l=5FParticleEmitter=5F0.Parent =3D game:GetService("Players").=
LocalPlayer.Character.HumanoidRootPart
        end
    elseif game:GetService("Players").LocalPlayer.Character.HumanoidRootPa=
rt:FindFirstChild("Agility") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:=
FindFirstChild("Agility"):Destroy()
    end
end
function UpdateGeaESP()
    for =5F, v335 in pairs(game:GetService("Workspace").Map.MysticIsland:G=
etChildren()) do
        do
            local l=5Fv335=5F0 =3D v335
            pcall(function()
                if not GearESP then
                    if l=5Fv335=5F0:FindFirstChild("NameEsp") then
                        l=5Fv335=5F0:FindFirstChild("NameEsp"):Destroy()
                    end
                elseif l=5Fv335=5F0.Name =3D=3D "MeshPart" then
                    if not l=5Fv335=5F0:FindFirstChild("NameEsp") then
                        local v337 =3D Instance.new("BillboardGui", l=5Fv3=
35=5F0)
                        v337.Name =3D "NameEsp"
                        v337.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v337.Size =3D UDim2.new(1, 200, 1, 30)
                        v337.Adornee =3D l=5Fv335=5F0
                        v337.AlwaysOnTop =3D true
                        local v338 =3D Instance.new("TextLabel", v337)
                        v338.Font =3D "Code"
                        v338.FontSize =3D "Size14"
                        v338.TextWrapped =3D true
                        v338.Size =3D UDim2.new(1, 0, 1, 0)
                        v338.TextYAlignment =3D "Top"
                        v338.BackgroundTransparency =3D 1
                        v338.TextStrokeTransparency =3D 0.5
                        v338.TextColor3 =3D Color3.fromRGB(80, 245, 245)
                    else
                        l=5Fv335=5F0.NameEsp.TextLabel.Text =3D l=5Fv335=
=5F0.Name .. "   \n" .. v306((game:GetService("Players").LocalPlayer.Chara=
cter.Head.Position - l=5Fv335=5F0.Position).Magnitude / 3) .. " M"
                    end
                end
            end)
        end
    end
end
function UpdateBerriesESP()
    local l=5FTagged=5F0 =3D game:GetService("CollectionService"):GetTagge=
d("BerryBush")
    for =5F, v341 in pairs(l=5FTagged=5F0) do
        do
            local l=5Fv341=5F0 =3D v341
            pcall(function()
                for =5F, v344 in pairs(l=5Fv341=5F0:GetAttributes()) do
                    if not v344 then
                        if l=5Fv341=5F0.Parent:FindFirstChild("NameEsp") t=
hen
                            l=5Fv341=5F0.Parent:FindFirstChild("NameEsp"):=
Destroy()
                        end
                    else
                        if not l=5Fv341=5F0.Parent:FindFirstChild("BerryES=
P") then
                            local v345 =3D Instance.new("BillboardGui", l=
=5Fv341=5F0.Parent)
                            v345.Name =3D "BerryESP"
                            v345.ExtentsOffset =3D Vector3.new(0, 2, 0)
                            v345.Size =3D UDim2.new(1, 200, 1, 30)
                            v345.Adornee =3D l=5Fv341=5F0.Parent
                            v345.AlwaysOnTop =3D true
                            local v346 =3D Instance.new("TextLabel", v345)=

                            v346.Font =3D Enum.Font.GothamSemibold
                            v346.TextSize =3D 14
                            v346.TextWrapped =3D true
                            v346.Size =3D UDim2.new(1, 0, 1, 0)
                            v346.TextYAlignment =3D Enum.TextYAlignment.To=
p
                            v346.BackgroundTransparency =3D 1
                            v346.TextStrokeTransparency =3D 0.5
                            v346.TextColor3 =3D Color3.fromRGB(255, 255, 0=
)
                            v346.Text =3D v344
                        end
                        if l=5Fv341=5F0.Parent:FindFirstChild("BerryESP") =
then
                            local l=5FLocalPlayer=5F0 =3D game.Players.Loc=
alPlayer
                            if l=5FLocalPlayer=5F0 and l=5FLocalPlayer=5F0=
.Character and l=5FLocalPlayer=5F0.Character:FindFirstChild("Head") then
                                local l=5FPosition=5F0 =3D l=5FLocalPlayer=
=5F0.Character.Head.Position
                                local l=5FMagnitude=5F0 =3D (l=5Fv341=5F0.=
Parent:GetPivot().Position - l=5FPosition=5F0).Magnitude
                                l=5Fv341=5F0.Parent.BerryESP.TextLabel.Tex=
t =3D v344 .. "\n" .. math.floor(l=5FMagnitude=5F0) .. "m"
                            end
                        end
                    end
                end
            end)
        end
    end
end
function UpdateIslandKisuneESP()
    for =5F, v351 in pairs(game:GetService("Workspace").=5FWorldOrigin.Loc=
ations:GetChildren()) do
        do
            local l=5Fv351=5F0 =3D v351
            pcall(function()
                if not KitsuneIslandEsp then
                    if l=5Fv351=5F0:FindFirstChild("NameEsp") then
                        l=5Fv351=5F0:FindFirstChild("NameEsp"):Destroy()
                    end
                elseif l=5Fv351=5F0.Name =3D=3D "Kitsune Island" then
                    if l=5Fv351=5F0:FindFirstChild("NameEsp") then
                        l=5Fv351=5F0.NameEsp.TextLabel.Text =3D l=5Fv351=
=5F0.Name .. "   \n" .. v306((game:GetService("Players").LocalPlayer.Chara=
cter.Head.Position - l=5Fv351=5F0.Position).Magnitude / 3) .. " M"
                    else
                        local v353 =3D Instance.new("BillboardGui", l=5Fv3=
51=5F0)
                        v353.Name =3D "NameEsp"
                        v353.ExtentsOffset =3D Vector3.new(0, 1, 0)
                        v353.Size =3D UDim2.new(1, 200, 1, 30)
                        v353.Adornee =3D l=5Fv351=5F0
                        v353.AlwaysOnTop =3D true
                        local v354 =3D Instance.new("TextLabel", v353)
                        v354.Font =3D "Code"
                        v354.FontSize =3D "Size14"
                        v354.TextWrapped =3D true
                        v354.Size =3D UDim2.new(1, 0, 1, 0)
                        v354.TextYAlignment =3D "Top"
                        v354.BackgroundTransparency =3D 1
                        v354.TextStrokeTransparency =3D 0.5
                        v354.TextColor3 =3D Color3.fromRGB(80, 245, 245)
                    end
                end
            end)
        end
    end
end
function AutoHaki()
    local l=5FCharacter=5F0 =3D game:GetService("Players").LocalPlayer.Cha=
racter
    if l=5FCharacter=5F0 and not l=5FCharacter=5F0:FindFirstChild("HasBuso=
") then
        local l=5FCommF=5F=5F0 =3D game:GetService("ReplicatedStorage").Re=
motes.CommF=5F
        if l=5FCommF=5F=5F0 then
            l=5FCommF=5F=5F0:InvokeServer("Buso")
        end
    end
end
function UnEquipWeapon(v357)
    if game.Players.LocalPlayer.Character:FindFirstChild(v357) then
        =5FG.NotAutoEquip =3D true
        wait(0.5)
        game.Players.LocalPlayer.Character:FindFirstChild(v357).Parent =3D=
 game.Players.LocalPlayer.Backpack
        wait(0.1)
        =5FG.NotAutoEquip =3D false
    end
end
function EquipWeapon(v358)
    if not =5FG.NotAutoEquip and game.Players.LocalPlayer.Backpack:FindFir=
stChild(v358) then
        Tool =3D game.Players.LocalPlayer.Backpack:FindFirstChild(v358)
        wait(0.1)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end
spawn(function()
    local v359 =3D getrawmetatable(game)
    local l=5F=5F=5Fnamecall=5F0 =3D v359.=5F=5Fnamecall
    setreadonly(v359, false)
    v359.=5F=5Fnamecall =3D newcclosure(function(...)
        local v361 =3D getnamecallmethod()
        local v362 =3D {...}
        if tostring(v361) =3D=3D "FireServer" and tostring(v362[1]) =3D=3D=
 "RemoteEvent" and tostring(v362[2]) ~=3D "true" and tostring(v362[2]) ~=
=3D "false" and =5FG.UseSkill then
            if type(v362[2]) ~=3D "vector" then
                v362[2] =3D CFrame.new(PositionSkillMasteryDevilFruit)
            else
                v362[2] =3D PositionSkillMasteryDevilFruit
            end
            return l=5F=5F=5Fnamecall=5F0(unpack(v362))
        else
            return l=5F=5F=5Fnamecall=5F0(...)
        end
    end)
end)
spawn(function()
    pcall(function()
        while task.wait() do
            for =5F, v364 in pairs(game:GetService("Players").LocalPlayer.=
Backpack:GetChildren()) do
                if v364:IsA("Tool") and v364:FindFirstChild("RemoteFunctio=
nShoot") then
                    CurrentEquipGun =3D v364.Name
                end
            end
        end
    end)
end)
function StopTween(state)
    local player =3D game:GetService("Players").LocalPlayer
    local char =3D player.Character
    if not char then return end

    local hrp =3D char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end

    if not state then
        =5FG.StopTween =3D true

        hrp.AssemblyLinearVelocity =3D Vector3.zero
        hrp.AssemblyAngularVelocity =3D Vector3.zero
        hrp.Velocity =3D Vector3.zero

        for =5F,obj in pairs(hrp:GetChildren()) do
            if obj:IsA("BodyVelocity")
            or obj:IsA("BodyGyro")
            or obj:IsA("BodyPosition")
            or obj:IsA("AlignPosition")
            or obj:IsA("AlignOrientation") then
                obj:Destroy()
            end
        end

        if hrp:FindFirstChild("BodyClip") then
            hrp.BodyClip:Destroy()
        end
        if char:FindFirstChild("Block") then
            char.Block:Destroy()
        end
    end
end
function CancelTween23()
    if =5FG.StopTween then return end

    if plr.Character.Head:FindFirstChild("BodyVelocity") then
        plr.Character.Head.BodyVelocity:Destroy()
    end
    if plr.Character:FindFirstChild("PartTele") then
        plr.Character.PartTele:Destroy()
    end
    NoClip =3D false
end
function KillMob(v373, v374)
    pcall(function()
        thismob =3D DetectMob2(v373)
        if thismob:FindFirstChild("HumanoidRootPart") and thismob.Parent a=
nd thismob:FindFirstChild("Humanoid") and thismob.Humanoid.Health > 0 then=

            repeat
                task.wait()
                Buso()
                EquipWeapon()
                Tween23(thismob.HumanoidRootPart.CFrame * CFrame.new(0, 15=
, 0))
                BringPos =3D thismob.HumanoidRootPart.CFrame
                BringMob(v373)
                NoClip =3D true
            until not thismob.Parent or not thismob:FindFirstChild("Humano=
id") or thismob:FindFirstChild("Humanoid").Health <=3D 0 or not thismob:Fi=
ndFirstChild("HumanoidRootPart") or v374()
            NoClip =3D false
            CancelTween23()
        end
    end)
end
spawn(function()
    while wait() do
        pcall(function()
            if NoClip ~=3D true then
                if plr.Character.Head:FindFirstChild("Nigga") then
                    plr.Character.Head:FindFirstChild("Nigga"):Destroy()
                end
            else
                if not plr.Character.Head:FindFirstChild("Nigga") then
                    local v375 =3D Instance.new("BodyVelocity", plr.Charac=
ter.Head)
                    v375.P =3D 1500
                    v375.Name =3D "Nigga"
                    v375.MaxForce =3D Vector3.new(0, 100000, 0)
                    v375.Velocity =3D Vector3.new(0, 0, 0)
                end
                for =5F, v377 in pairs(plr.Character:GetDescendants()) do
                    if v377:IsA("BasePart") then
                        v377.CanCollide =3D false
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            local l=5FCharacter=5F3 =3D game:GetService("Players").LocalPl=
ayer.Character
            local l=5FHumanoidRootPart=5F1 =3D l=5FCharacter=5F3:FindFirst=
Child("HumanoidRootPart")
            if (l=5FCharacter=5F3.Humanoid.Health <=3D 0 or not l=5FHumano=
idRootPart=5F1) and l=5FCharacter=5F3:FindFirstChild("Block") then
                l=5FCharacter=5F3.Block:Destroy()
            end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            local l=5FCharacter=5F4 =3D game:GetService("Players").LocalPl=
ayer.Character
            local l=5FHumanoidRootPart=5F2 =3D l=5FCharacter=5F4:FindFirst=
Child("HumanoidRootPart")
            if l=5FCharacter=5F4:FindFirstChild("Block") and (l=5FHumanoid=
RootPart=5F2.Position - l=5FCharacter=5F4.Block.Position).Magnitude >=3D 1=
00 then
                l=5FCharacter=5F4.Block:Destroy()
            end
        end)
    end
end)
function enableNoclip()
    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPa=
rt:FindFirstChild("BodyClip") then
        local l=5FBodyVelocity=5F1 =3D Instance.new("BodyVelocity")
        l=5FBodyVelocity=5F1.Name =3D "BodyClip"
        l=5FBodyVelocity=5F1.Parent =3D game:GetService("Players").LocalPl=
ayer.Character.HumanoidRootPart
        l=5FBodyVelocity=5F1.MaxForce =3D Vector3.new(100000, 100000, 1000=
00)
        l=5FBodyVelocity=5F1.Velocity =3D Vector3.new(0, 0, 0)
    end
end
function disableNoclip()
    local l=5FBodyClip=5F0 =3D game:GetService("Players").LocalPlayer.Char=
acter.HumanoidRootPart:FindFirstChild("BodyClip")
    if l=5FBodyClip=5F0 then
        l=5FBodyClip=5F0:Destroy()
    end
end
function disableCollisions()
    for =5F, v385 in pairs(game:GetService("Players").LocalPlayer.Characte=
r:GetDescendants()) do
        if v385:IsA("BasePart") then
            v385.CanCollide =3D false
        end
    end
end
local =5F, =5F =3D pcall(function()
    return getgenv().Module
end)
spawn(function()
    pcall(function()
        while task.wait(0.2) do
            if getgenv().Module or =5FG.DefendVolcano or getgenv().AutoFar=
m then
                enableNoclip()
                disableCollisions()
            else
                disableNoclip()
            end
        end
    end)
end)
function EquipAllWeapon()
    pcall(function()
        for =5F, v389 in pairs(game.Players.LocalPlayer.Backpack:GetChildr=
en()) do
            if v389:IsA("Tool") and v389.Name ~=3D "Summon Sea Beast" and =
v389.Name ~=3D "Water Body" and v389.Name ~=3D "Awakening" then
                local l=5FFirstChild=5F0 =3D game.Players.LocalPlayer.Back=
pack:FindFirstChild(v389.Name)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(l=5F=
FirstChild=5F0)
                wait(1)
            end
        end
    end)
end
local v391 =3D false
function WaitHRP(v392)
    if v392 then
        return v392.Character:WaitForChild("HumanoidRootPart", 9)
    else
        return 
    end
end
function CheckNearestTeleporter(v393)
    local l=5FPosition=5F1 =3D v393.Position
    local l=5Fhuge=5F0 =3D math.huge
    local v396 =3D nil
    local l=5FPlaceId=5F1 =3D game.PlaceId
    local v398 =3D {}
    if l=5FPlaceId=5F1 ~=3D 2753915549 then
        if l=5FPlaceId=5F1 ~=3D 4442272183 then
            if l=5FPlaceId=5F1 =3D=3D 7449423635 then
                v398 =3D {
                    ["Floating Turtle"] =3D Vector3.new(-12462, 375, -7552=
),
                    ["Hydra Island"] =3D Vector3.new(5657.88623046875, 101=
3.0790405273438, -335.4996337890625),
                    Mansion =3D Vector3.new(-12462, 375, -7552),
                    Castle =3D Vector3.new(-5036, 315, -3179),
                    ["Dimensional Shift"] =3D Vector3.new(-2097.3447265625=
, 4776.24462890625, -15013.4990234375),
                    ["Beautiful Pirate"] =3D Vector3.new(5319, 23, -93),
                    ["Beautiful Room"] =3D Vector3.new(5314.58203, 22.5364=
361, -125.942276, 1, 2.14762768E-8, -1.99111154E-13, -2.14762768E-8, 1, -3=
.0510602E-8, 1.98455903E-13, 3.0510602E-8, 1),
                    ["Temple of Time"] =3D Vector3.new(28286, 14897, 103)
                }
            end
        else
            v398 =3D {
                ["Swan Mansion"] =3D Vector3.new(-390, 332, 673),
                ["Swan Room"] =3D Vector3.new(2285, 15, 905),
                ["Cursed Ship"] =3D Vector3.new(923, 126, 32852),
                ["Zombie Island"] =3D Vector3.new(-6509, 83, -133)
            }
        end
    else
        v398 =3D {
            Sky3 =3D Vector3.new(-7894, 5547, -380),
            Sky3Exit =3D Vector3.new(-4607, 874, -1667),
            UnderWater =3D Vector3.new(61163, 11, 1819),
            ["Underwater City"] =3D Vector3.new(61165.19140625, 0.18704631=
924629211, 1897.379150390625),
            ["Pirate Village"] =3D Vector3.new(-1242.4625244140625, 4.7870=
59783935547, 3901.282958984375),
            UnderwaterExit =3D Vector3.new(4050, -1, -1814)
        }
    end
    for =5F, v400 in pairs(v398) do
        local l=5FMagnitude=5F1 =3D (v400 - l=5FPosition=5F1).Magnitude
        if l=5FMagnitude=5F1 < l=5Fhuge=5F0 then
            l=5Fhuge=5F0 =3D l=5FMagnitude=5F1
            v396 =3D v400
        end
    end
    if l=5Fhuge=5F0 <=3D (l=5FPosition=5F1 - game.Players.LocalPlayer.Char=
acter.HumanoidRootPart.Position).Magnitude then
        return v396
    else
        return 
    end
end
function requestEntrance(v402)
    game.ReplicatedStorage.Remotes.CommF=5F:InvokeServer("requestEntrance"=
, v402)
    local l=5FHumanoidRootPart=5F3 =3D game.Players.LocalPlayer.Character.=
HumanoidRootPart
    l=5FHumanoidRootPart=5F3.CFrame =3D l=5FHumanoidRootPart=5F3.CFrame + =
Vector3.new(0, 50, 0)
    task.wait(0.5)
end
function TelePPlayer(v404)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =3D v404
end
function topos(v405)
    local l=5FLocalPlayer=5F1 =3D game.Players.LocalPlayer
    if l=5FLocalPlayer=5F1.Character and l=5FLocalPlayer=5F1.Character.Hum=
anoid.Health > 0 and l=5FLocalPlayer=5F1.Character:FindFirstChild("Humanoi=
dRootPart") then
        local l=5FMagnitude=5F2 =3D (v405.Position - l=5FLocalPlayer=5F1.C=
haracter.HumanoidRootPart.Position).Magnitude
        if not v405 then
            return 
        else
            local v408 =3D CheckNearestTeleporter(v405)
            if v408 then
                requestEntrance(v408)
            end
            if not l=5FLocalPlayer=5F1.Character:FindFirstChild("PartTele"=
) then
                local v409 =3D Instance.new("Part", l=5FLocalPlayer=5F1.Ch=
aracter)
                v409.Size =3D Vector3.new(10, 1, 10)
                v409.Name =3D "PartTele"
                v409.Anchored =3D true
                v409.Transparency =3D 1
                v409.CanCollide =3D true
                v409.CFrame =3D WaitHRP(l=5FLocalPlayer=5F1).CFrame
                do
                    local l=5Fv409=5F0 =3D v409
                    l=5Fv409=5F0:GetPropertyChangedSignal("CFrame"):Connec=
t(function()
                        if not v391 then
                            return 
                        else
                            task.wait()
                            if l=5FLocalPlayer=5F1.Character and l=5FLocal=
Player=5F1.Character:FindFirstChild("HumanoidRootPart") then
                                WaitHRP(l=5FLocalPlayer=5F1).CFrame =3D l=
=5Fv409=5F0.CFrame
                            end
                            return 
                        end
                    end)
                end
            end
            v391 =3D true
            local v411 =3D game:GetService("TweenService"):Create(l=5FLoca=
lPlayer=5F1.Character.PartTele, TweenInfo.new(l=5FMagnitude=5F2 / 360, Enu=
m.EasingStyle.Linear), {CFrame =3D v405})
            v411:Play()
            v411.Completed:Connect(function(v412)
                if v412 =3D=3D Enum.PlaybackState.Completed then
                    if l=5FLocalPlayer=5F1.Character:FindFirstChild("PartT=
ele") then
                        l=5FLocalPlayer=5F1.Character.PartTele:Destroy()
                    end
                    v391 =3D false
                end
            end)
        end
    end
end
function stopTeleport()
    v391 =3D false
    local l=5FLocalPlayer=5F2 =3D game.Players.LocalPlayer
    if l=5FLocalPlayer=5F2.Character:FindFirstChild("PartTele") then
        l=5FLocalPlayer=5F2.Character.PartTele:Destroy()
    end
end
spawn(function()
    while task.wait() do
        if not v391 then
            stopTeleport()
        end
    end
end)
spawn(function()
    local l=5FLocalPlayer=5F3 =3D game.Players.LocalPlayer
    while task.wait() do
        pcall(function()
            if l=5FLocalPlayer=5F3.Character:FindFirstChild("PartTele") an=
d (l=5FLocalPlayer=5F3.Character.HumanoidRootPart.Position - l=5FLocalPlay=
er=5F3.Character.PartTele.Position).Magnitude >=3D 100 then
                stopTeleport()
            end
        end)
    end
end)
local l=5FLocalPlayer=5F4 =3D game.Players.LocalPlayer
local function v417(v416)
    v416:WaitForChild("Humanoid").Died:Connect(function()
        stopTeleport()
    end)
end
l=5FLocalPlayer=5F4.CharacterAdded:Connect(v417)
if l=5FLocalPlayer=5F4.Character then
    v417(l=5FLocalPlayer=5F4.Character)
end
function TP1(v418)
    topos(v418)
end
spawn(function()
    while wait() do
        if =5FG.SpinPos then
            Pos =3D CFrame.new(0, PosY, -20)
            wait(0.1)
            Pos =3D CFrame.new(-20, PosY, 0)
            wait(0.1)
            Pos =3D CFrame.new(0, PosY, 20)
            wait(0.1)
            Pos =3D CFrame.new(20, PosY, 0)
        else
            Pos =3D CFrame.new(0, PosY, 0)
        end
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if =5FG.FarmBone or =5FG.AutoFarm or =5FG.Pray or =5FG.Trylux =
or =5FG.Hallow or =5FG.FarmCake or =5FG.FarmDaiBan or =5FG.Greybeard or =
=5FG.CursedCaptain or =5FG.AutoDarkBoss or =5FG.ChiefWarden or =5FG.Triden=
t or =5FG.Longsword or =5FG.GravityBlade or =5FG.SwodsFlail or =5FG.AutoRe=
ngoku or =5FG.SwodsDRTrident or =5FG.SwodCanvande or =5FG.SwodsBuddy or =
=5FG.FarmBlazeEM or =5FG.AutoFindPrehistoric or =5FG.TweenVolcano or =5FG.=
DefendVolcano or =5FG.KillGolem or =5FG.SwodTwinHooks or =5FG.Fullykatakur=
i or =5FG.AutoBoss or =5FG.SwodCanvander or =5FG.AutoFarmMaterial or =5FG.=
AutoSecondSea or =5FG.Autosaw or =5FG.ChiefWarden or =5FG.Trident or =5FG.=
AutoSaber or =5FG.ThirdSea or =5FG.AutoBartilo or =5FG.AutoFactory or =5FG=
.Longsword or =5FG.GravityBlade or =5FG.SwodsFlail or =5FG.AutoRengoku or =
=5FG.SwodsDRTrident or =5FG.SwodTwinHooks or =5FG.SwodCanvander or =5FG.Au=
toRaidPirate or =5FG.AutoQuestYama or =5FG.AutoYamaQuest or =5FG.AutoSaber=
 or =5FG.DefendVolcano or =5FG.TPB or =5FG.SailBoat or =5FG.Autoterrorshar=
k or =5FG.KillShark or =5FG.KillPiranha or =5FG.KillFishCrew or =5FG.AutoQ=
uestRace or =5FG.Dungeon or =5FG.AutoLawRaid or =5FG.Tweenfruit or Project=
TrialPro or =5FG.TweenMGear or =5FG.AutoMysticIsland or AutoUpgradeRace or=
 AutoRaceEvo1 or =5FG.AutoFarmFruits or =5FG.Autopole or =5FG.Autosaw or =
=5FG.AutoElitehunter or FarmMtrFruit or =5FG.AutoNear or =5FG.CollectBerry=
 or =5FG.RipIndraKill or =5FG.FarmChocola or SoulGuitar or =5FG.AutoHolyTo=
rch or =5FG.AutoGetTushita or =5FG.AutoYama or =5FG.AutoMobDragon or =5FG.=
AutoHydraTree or =5FG.TweenToKitsune or =5FG.AutoDooHee or =5FG.AutoAzuerE=
mber or =5FG.TweenVolcano or =5FG.Dungeon or =5FG.AutoLawRaid or =5FG.Twee=
nFruit or =5FG.Grabfruit or =5FG.TeleportIsland or =5FG.TeleportNPC or =5F=
G.SafeMode or =5FG.AutoPlayerHunter or =5FG.AutoKillPlayer or =5FG.Telepor=
tPly or =5FG.AutoQuestBoss or =5FG.AutoAllBoss or =5FG.AutoFarmLevelNew or=
 =5FG.FarmSummer or =5FG.BossPain then
                if not game:GetService("Players").LocalPlayer.Character.Hu=
manoidRootPart:FindFirstChild("BodyClip") then
                    local l=5FBodyVelocity=5F2 =3D Instance.new("BodyVeloc=
ity")
                    l=5FBodyVelocity=5F2.Name =3D "BodyClip"
                    l=5FBodyVelocity=5F2.Parent =3D game:GetService("Playe=
rs").LocalPlayer.Character.HumanoidRootPart
                    l=5FBodyVelocity=5F2.MaxForce =3D Vector3.new(100000, =
100000, 100000)
                    l=5FBodyVelocity=5F2.Velocity =3D Vector3.new(0, 0, 0)=

                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidR=
ootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if =5FG.FarmBone or =5FG.AutoFarm or =5FG.Pray or =5FG.Trylux =
or =5FG.Hallow or =5FG.FarmCake or =5FG.FarmDaiBan or =5FG.Fullykatakuri o=
r =5FG.AutoBoss or =5FG.AutoMateria or =5FG.AutoSecondSea or =5FG.Autosaw =
or =5FG.ChiefWarden or =5FG.Trident or =5FG.AutoSaber or =5FG.Greybeard or=
 =5FG.CursedCaptain or =5FG.AutoDarkBoss or =5FG.ChiefWarden or =5FG.Tride=
nt or =5FG.Longsword or =5FG.GravityBlade or =5FG.SwodsFlail or =5FG.AutoR=
engoku or =5FG.SwodsDRTrident or =5FG.SwodCanvande or =5FG.SwodTwinHooks o=
r =5FG.ThirdSea or =5FG.AutoBartilo or =5FG.AutoFactory or =5FG.Longsword =
or =5FG.GravityBlade or =5FG.SwodsFlail or =5FG.AutoRengoku or =5FG.SwodsD=
RTrident or =5FG.SwodTwinHooks or =5FG.SwodCanvander or =5FG.SwodsBuddy or=
 =5FG.FarmBlazeEM or =5FG.AutoFindPrehistoric or =5FG.TweenVolcano or =5FG=
.DefendVolcano or =5FG.KillGolem or =5FG.AutoRaidPirate or =5FG.AutoQuestY=
ama or =5FG.AutoYamaQuest or =5FG.AutoElitehunter or FarmMtrFruit or AutoU=
pgradeRace or =5FG.AutoFarmMaterial or AutoRaceEvo1 or AutoSaber or =5FG.A=
utopole or =5FG.SwodCanvander or =5FG.DefendVolcano or =5FG.SailBoat or =
=5FG.Autoterrorshark or =5FG.KillShark or =5FG.KillPiranha or =5FG.KillFis=
hCrew or =5FG.AutoQuestRace or =5FG.Dungeon or =5FG.AutoLawRaid or =5FG.Tw=
eenfruit or ProjectTrialPro or =5FG.AutoMysticIsland or =5FG.TweenMGear or=
 =5FG.Autosaw or =5FG.AutoNear or =5FG.AutoFarmFruits or =5FG.CollectBerry=
 or =5FG.RipIndraKill or =5FG.FarmChocola or SoulGuitar or =5FG.AutoHolyTo=
rch or =5FG.AutoGetTushita or =5FG.AutoYama or =5FG.AutoMobDragon or =5FG.=
AutoHydraTree or =5FG.TweenToKitsune or =5FG.AutoDooHee or =5FG.AutoAzuerE=
mber or =5FG.TweenVolcano or =5FG.Dungeon or =5FG.AutoLawRaid or =5FG.Twee=
nFruit or =5FG.Grabfruit or =5FG.TeleportIsland or =5FG.TeleportNPC or =5F=
G.SafeMode or =5FG.AutoPlayerHunter or =5FG.AutoKillPlayer or =5FG.Telepor=
tPly or =5FG.AutoQuestBoss or =5FG.AutoAllBoss or =5FG.AutoFarmLevelNew or=
 =5FG.FarmSummer or =5FG.BossPain then
                for =5F, v421 in pairs(game:GetService("Players").LocalPla=
yer.Character:GetDescendants()) do
                    if v421:IsA("BasePart") then
                        v421.CanCollide =3D false
                    end
                end
            end
        end)
    end)
end)
local v422 =3D {}
function TP13(v423)
    local hrp =3D game.Players.LocalPlayer.Character.HumanoidRootPart
    local distance =3D (v423.Position - hrp.Position).Magnitude
    local duration =3D TweenSpeed > 0 and distance / TweenSpeed or 0.001

    local tweenInfo =3D TweenInfo.new(duration, Enum.EasingStyle.Linear)
    local tween =3D game:GetService("TweenService"):Create(hrp, tweenInfo,=
 {CFrame =3D v423})
    tween:Play()
    v422.Stop =3D function()
        tween:Cancel()
        hrp.CFrame =3D v423 
    end
    if TweenSpeed =3D=3D 0 then
        tween:Cancel()
        hrp.CFrame =3D v423
    end

    return v422
end
function fastpos(v427)
    Distance =3D (v427.Position - game.Players.LocalPlayer.Character.Human=
oidRootPart.Position).Magnitude
    Speed =3D 1000
    game:GetService("TweenService"):Create(game:GetService("Players").Loca=
lPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / Speed, Enum.E=
asingStyle.Linear), {CFrame =3D v427}):Play()
end
function slowpos(v428)
    Distance =3D (v428.Position - game.Players.LocalPlayer.Character.Human=
oidRootPart.Position).Magnitude
    Speed =3D 150
    game:GetService("TweenService"):Create(game:GetService("Players").Loca=
lPlayer.Character.HumanoidRootPart, TweenInfo.new(Distance / Speed, Enum.E=
asingStyle.Linear), {CFrame =3D v428}):Play()
end
local =5F =3D {}
function BTP(v430)
    pcall(function()
        if (v430.Position - game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.Position).Magnitude >=3D 1500 and not Auto=5FRaid and game.Players.L=
ocalPlayer.Character.Humanoid.Health > 0 then
            repeat
                wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
 =3D v430
                wait(0.05)
                game.Players.LocalPlayer.Character.Head:Destroy()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=
 =3D v430
            until (v430.Position - game.Players.LocalPlayer.Character.Huma=
noidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Chara=
cter.Humanoid.Health > 0
        end
    end)
end
function TelePPlayer(v431)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =3D v431
end
function TPB(v432)
    local v433 =3D game:service("TweenService")
    local v434 =3D TweenInfo.new((game:GetService("Workspace").Boats.Pirat=
eBrigade.VehicleSeat.CFrame.Position - v432.Position).Magnitude / 300, Enu=
m.EasingStyle.Linear)
    tween =3D v433:Create(game:GetService("Workspace").Boats.PirateBrigade=
.VehicleSeat, v434, {CFrame =3D v432})
    tween:Play()
    return {Stop =3D function(=5F)
        tween:Cancel()
    end}
end
function TPP(v436)
    if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health =
> 0 and game:GetService("Players").LocalPlayer.Character:WaitForChild("Hum=
anoid") then
        local v437 =3D game:service("TweenService")
        local v438 =3D TweenInfo.new((game:GetService("Players").LocalPlay=
er.Character.HumanoidRootPart.Position - v436.Position).Magnitude / 325, E=
num.EasingStyle.Linear)
        tween =3D v437:Create(game.Players.LocalPlayer.Character.HumanoidR=
ootPart, v438, {CFrame =3D v436})
        tween:Play()
        return {Stop =3D function(=5F)
            tween:Cancel()
        end}
    else
        tween:Cancel()
        repeat
            wait()
        until game:GetService("Players").LocalPlayer.Character:WaitForChil=
d("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitFor=
Child("Humanoid").Health > 0
        wait(7)
        return 
    end
end
function StopTween(v440)
    if not v440 then
        =5FG.StopTween =3D true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRoo=
tPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPa=
rt:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootP=
art:FindFirstChild("BodyClip"):Destroy()
        end
        =5FG.StopTween =3D false
        =5FG.Clip =3D false
    end
end
spawn(function()
    pcall(function()
        while wait() do
            for =5F, v442 in pairs(game:GetService("Players").LocalPlayer.=
Backpack:GetChildren()) do
                if v442:IsA("Tool") and v442:FindFirstChild("RemoteFunctio=
nShoot") then
                    =5FG.SelectWeaponGun =3D v442.Name
                end
            end
        end
    end)
end)
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspac=
e.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.=
CurrentCamera.CFrame)
end)
function CheckColorRipIndra()
    mmb =3D {}
    for =5F, v444 in next, game:GetService("Workspace").Map["Boat Castle"]=
.Summoner.Circle:GetChildren() do
        if v444:IsA("Part") and v444:FindFirstChild("Part") and v444.Part.=
BrickColor.Name =3D=3D "Dark stone grey" then
            mmb[v444.BrickColor.Name] =3D v444
        end
    end
    return mmb
end
function ActivateColor(v445)
    haki =3D {["Hot pink"] =3D "Winter Sky", ["Really red"] =3D "Pure Red"=
, Oyster =3D "Snow White"}
    runnay =3D haki[v445]
    if runnay then
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("activateColor", runnay)
    end
end
function AutoActiveColorRip=5FIndra()
    for v446, v447 in pairs(CheckColorRipIndra()) do
        ActivateColor(v446)
        topos(v447.CFrame)
        firetouchinterest(v447.TouchInterest)
    end
end
function CheckRace()
    local v448 =3D game:GetService("ReplicatedStorage").Remotes.CommF=5F:I=
nvokeServer("Wenlocktoad", "1")
    local v449 =3D game:GetService("ReplicatedStorage").Remotes.CommF=5F:I=
nvokeServer("Alchemist", "1")
    if not game.Players.LocalPlayer.Character:FindFirstChild("RaceTransfor=
med") then
        if v448 =3D=3D -2 then
            return game:GetService("Players").LocalPlayer.Data.Race.Value =
.. " V3"
        elseif v449 =3D=3D -2 then
            return game:GetService("Players").LocalPlayer.Data.Race.Value =
.. " V2"
        else
            return game:GetService("Players").LocalPlayer.Data.Race.Value =
.. " V1"
        end
    else
        return game:GetService("Players").LocalPlayer.Data.Race.Value .. "=
 V4"
    end
end
=5FG.TargTrial =3D "TargTrial"
function targettrial()
    if =5FG.TargTrial =3D=3D "TargTrial" then
        local v450 =3D nil
        local v451 =3D 450
        for =5F, v453 in pairs(game.Players:GetChildren()) do
            c =3D (v453.Character.HumanoidRootPart.Position - game.Players=
.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
            if c <=3D v451 and v453 ~=3D game.Players.LocalPlayer then
                v451 =3D c
                v450 =3D v453
            end
        end
        if v450 =3D=3D "c" then
            return 
        elseif =5FG.TargTrial =3D=3D "c" then
            =5FG.TargTrial =3D v450
            return 
        else
            return 
        end
    else
        return 
    end
end
function CheckPirateBoat()
    local v454 =3D {"PirateBrigade", "PirateBrigade"}
    for =5F, v456 in next, game:GetService("Workspace").Enemies:GetChildre=
n() do
        if table.find(v454, v456.Name) and v456:FindFirstChild("Health") a=
nd v456.Health.Value > 0 then
            return v456
        end
    end
end
function CheckPirateBoat()
    local v457 =3D {"FishBoat"}
    for =5F, v459 in next, game:GetService("Workspace").Enemies:GetChildre=
n() do
        if table.find(v457, v459.Name) and v459:FindFirstChild("Health") a=
nd v459.Health.Value > 0 then
            return v459
        end
    end
end
function StoreFruit()
    for =5F, v461 in pairs(thelocal.Backpack:GetChildren()) do
        if v461:IsA("Tool") and string.find(v461.Name, "Fruit") then
            game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeSe=
rver("StoreFruit", v461:GetAttribute("OriginalName"), v461)
        end
    end
end
function TpEntrance(v462)
    game.ReplicatedStorage.Remotes.CommF=5F:InvokeServer("requestEntrance"=
, v462)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =3D CFrame.=
new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, game.Pla=
yers.LocalPlayer.Character.HumanoidRootPart.CFrame.Y, game.Players.LocalPl=
ayer.Character.HumanoidRootPart.CFrame.Z)
    wait(0.5)
end
function CheckItemBPCRBPCR(v463)
    chbp =3D {game.Players.LocalPlayer.Character, game.Players.LocalPlayer=
.Backpack}
    for =5F, v465 in pairs(chbp) do
        if v465:FindFirstChild(v463) then
            return v465:FindFirstChild(v463)
        end
    end
end
local vu32 =3D loadstring(game:HttpGet("https://raw.githubusercontent.com/=
PlockScripts/Library-ui/refs/heads/main/redz-V5-remake/main.luau"))()
local v466 =3D vu32:MakeWindow({
    Title =3D "Miyu [ Miyu Version by Hai1110# ] : Blox Fruits",
    SubTitle =3D "Miyu version 1.0",
    SaveFolder =3D "Miyu | Miyu lib v1.lua"
})

v466:AddMinimizeButton({
    Button =3D { Image =3D "rbxassetid://96179046857812", BackgroundTransp=
arency =3D 20 },
    Size =3D UDim2.new(0, 35, 0, 35),
    Corner =3D { CornerRadius =3D UDim.new(0.25, 0) },
})

local v484 =3D v466:MakeTab({"Discord", "info"})
local v485 =3D v466:MakeTab({"Farm", "home"})
local v487 =3D v466:MakeTab({"Quest | Items", "swords"})
local v486 =3D v466:MakeTab({"Auto Fishing", "rbxassetid://127664059821666=
"})
local v489 =3D v466:MakeTab({"Sea Event", "waves"})
local v491 =3D v466:MakeTab({"Raid/Fruits", "cherry"})
local v497 =3D v466:MakeTab({"Stats", "Signal"})
local v493 =3D v466:MakeTab({"Teleport", "locate"})
local v499 =3D v466:MakeTab({"Status", "Scroll"})
local v494 =3D v466:MakeTab({"Visual", "user"})
local v495 =3D v466:MakeTab({"Shop", "shoppingCart"})
local v496 =3D v466:MakeTab({"Misc", "settings"})
v484:AddDiscordInvite({
    Name =3D "Sever discord c=E1=BB=A7a Miyu",
    Description =3D "M=C3=A1y ch=E1=BB=A7 th=C3=B4ng b=C3=A1o c=E1=BA=ADp =
nh=E1=BA=ADt",
    Logo =3D "rbxassetid://96179046857812",
    Invite =3D "https://discord.gg/hientaichuaco"
})
=5FG.SelectWeapon =3D "Melee"
task.spawn(function()
    while task.wait() do
        pcall(function()
            if =5FG.SelectWeapon ~=3D "Melee" then
                if =5FG.SelectWeapon ~=3D "Sword" then
                    if =5FG.SelectWeapon =3D=3D "Gun" then
                        for =5F, v499 in pairs(game.Players.LocalPlayer.Ba=
ckpack:GetChildren()) do
                            if v499.ToolTip =3D=3D "Gun" then
                                =5FG.SelectWeapon =3D v499.Name
                            end
                        end
                    elseif =5FG.SelectWeapon =3D=3D "Fruit" or =5FG.Select=
Weapon =3D=3D "Blox Fruit" then
                        for =5F, v501 in pairs(game.Players.LocalPlayer.Ba=
ckpack:GetChildren()) do
                            if v501.ToolTip =3D=3D "Blox Fruit" then
                                =5FG.SelectWeapon =3D v501.Name
                            end
                        end
                    end
                else
                    for =5F, v503 in pairs(game.Players.LocalPlayer.Backpa=
ck:GetChildren()) do
                        if v503.ToolTip =3D=3D "Sword" then
                            =5FG.SelectWeapon =3D v503.Name
                        end
                    end
                end
            else
                for =5F, v505 in pairs(game.Players.LocalPlayer.Backpack:G=
etChildren()) do
                    if v505.ToolTip =3D=3D "Melee" then
                        =5FG.SelectWeapon =3D v505.Name
                    end
                end
            end
        end)
    end
end)
local =5F =3D v485:AddDropdown({
    Name =3D "Select Tool",
    Description =3D "Choose the tool you want to use",
    Options =3D {"Melee", "Sword", "Gun", "Blox Fruit"},
    Default =3D "Melee",
    Flag =3D "WeaponType",
    Callback =3D function(v506)
        =5FG.SelectWeapon =3D v506
    end
})

v485:AddDropdown({
    Name =3D "UI Scale",
    Description =3D "Adjust the user interface size",
    Options =3D {
        "Small",
        "Large",
        "Bigger"
    },
    Default =3D "Large",
    Callback =3D function(p36)
        if p36 =3D=3D "Small" then
            vu32:SetScale(900)
        elseif p36 =3D=3D "Large" then
            vu32:SetScale(450)
        elseif p36 =3D=3D "Bigger" then
            vu32:SetScale(300)  -- menor n=C3=BAmero =3D maior UI
        else
            vu32:SetScale(450)
        end
    end
})
local =5F =3D v485:AddSection({"Farm"})
-- Fun=C3=A7=C3=B5es auxiliares globais
local Players =3D game:GetService("Players")
local TweenService =3D game:GetService("TweenService")
local ReplicatedStorage =3D game:GetService("ReplicatedStorage")
local LocalPlayer =3D Players.LocalPlayer

-- Vari=C3=A1veis para o Farm submarino
local SUBMERGED=5FY =3D -1400
local SUB=5FNPC =3D CFrame.new(-16246.041, 38.48, 1376.539)
local TravelingSubmerged =3D false
local CurrentTween =3D nil

-- Fun=C3=A7=C3=B5es auxiliares
local function HRP()
    return LocalPlayer.Character and LocalPlayer.Character:FindFirstChild(=
"HumanoidRootPart")
end

local function IsInSubmerged()
    local hrp =3D HRP()
    return hrp and hrp.Position.Y < SUBMERGED=5FY
end

local function StopTween(state)
    if not state and CurrentTween then
        pcall(function() CurrentTween:Cancel() end)
        CurrentTween =3D nil
    end
end

local function TweenTo(cf)
    if not =5FG.AutoFarm then return end
    local hrp =3D HRP()
    if not hrp then return end

    if CurrentTween then
        pcall(function() CurrentTween:Cancel() end)
    end

    local dist =3D (hrp.Position - cf.Position).Magnitude
    local speed =3D 300
    local t =3D dist / speed

    CurrentTween =3D TweenService:Create(hrp, TweenInfo.new(t, Enum.Easing=
Style.Linear), {CFrame =3D cf})
    CurrentTween:Play()

    while =5FG.AutoFarm and CurrentTween and CurrentTween.PlaybackState =
=3D=3D Enum.PlaybackState.Playing do
        task.wait()
    end

    if CurrentTween then
        pcall(function() CurrentTween:Cancel() end)
    end
    CurrentTween =3D nil
end

local function GoSubmerged()
    if not =5FG.AutoFarm then return end
    if TravelingSubmerged or IsInSubmerged() or LocalPlayer.Data.Level.Val=
ue < 2600 then return end

    TravelingSubmerged =3D true
    TweenTo(SUB=5FNPC + Vector3.new(0, 60, 0))
    if not =5FG.AutoFarm then TravelingSubmerged =3D false return end
    TweenTo(SUB=5FNPC)
    if not =5FG.AutoFarm then TravelingSubmerged =3D false return end

    pcall(function()
        ReplicatedStorage.Modules.Net["RF/SubmarineWorkerSpeak"]:InvokeSer=
ver("TravelToSubmergedIsland")
    end)

    while =5FG.AutoFarm and not IsInSubmerged() do
        task.wait(0.5)
    end

    TravelingSubmerged =3D false
end

local function CheckQuestNew()
    local lvl =3D LocalPlayer.Data.Level.Value

    if lvl >=3D 2600 and lvl <=3D 2624 then
        MonNew =3D "Reef Bandit"
        LevelQuestNew =3D 1
        NameQuestNew =3D "SubmergedQuest1"
        NameMonNew =3D "Reef Bandit"
        CFrameQuestNew =3D CFrame.new(10882.264, -2086.322, 10034.226)
        CFrameMonNew =3D CFrame.new(10736.6191, -2087.8439, 9338.4882)

    elseif lvl >=3D 2650 and lvl <=3D 2674 then
        MonNew =3D "Sea Chanter"
        LevelQuestNew =3D 1
        NameQuestNew =3D "SubmergedQuest2"
        NameMonNew =3D "Sea Chanter"
        CFrameQuestNew =3D CFrame.new(10882.264, -2086.322, 10034.226)
        CFrameMonNew =3D CFrame.new(10621.0342, -2087.844, 10102.0332)

    elseif lvl >=3D 2675 and lvl <=3D 2699 then
        MonNew =3D "Ocean Prophet"
        LevelQuestNew =3D 2
        NameQuestNew =3D "SubmergedQuest2"
        NameMonNew =3D "Ocean Prophet"
        CFrameQuestNew =3D CFrame.new(10882.264, -2086.322, 10034.226)
        CFrameMonNew =3D CFrame.new(11056.1445, -2001.6717, 10117.4493)

    elseif lvl >=3D 2700 and lvl <=3D 2724 then
        MonNew =3D "High Disciple"
        LevelQuestNew =3D 1
        NameQuestNew =3D "SubmergedQuest3"
        NameMonNew =3D "High Disciple"
        CFrameQuestNew =3D CFrame.new(9636.524, -1992.195, 9609.528)
        CFrameMonNew =3D CFrame.new(9828.088, -1940.909, 9693.064)

    elseif lvl >=3D 2725 then
        MonNew =3D "Grand Devotee"
        LevelQuestNew =3D 2
        NameQuestNew =3D "SubmergedQuest3"
        NameMonNew =3D "Grand Devotee"
        CFrameQuestNew =3D CFrame.new(9636.524, -1992.195, 9609.528)
        CFrameMonNew =3D CFrame.new(9557.585, -1928.040, 9859.183)

    else
        MonNew =3D "Coral Pirate"
        LevelQuestNew =3D 2
        NameQuestNew =3D "SubmergedQuest1"
        NameMonNew =3D "Coral Pirate"
        CFrameQuestNew =3D CFrame.new(10882.264, -2086.322, 10034.226)
        CFrameMonNew =3D CFrame.new(10965.1025, -2158.8842, 9177.2597)
    end
end
v485:AddToggle({
    Name =3D "Auto Farm Level",
    Description =3D "Farm Level",
    Default =3D false,
    Callback =3D function(state)
        =5FG.AutoFarm =3D state
        StopTween(=5FG.AutoFarm)
    end
})
spawn(function()
    while task.wait() do
        if =5FG.AutoFarm then
            pcall(function()
                local currentLevel =3D LocalPlayer.Data.Level.Value       =
         
                if currentLevel >=3D 2600 and World3 then
                      if not IsInSubmerged() then
                           GoSubmerged()
                    end
              end                
                if currentLevel >=3D 2600 and World3 and IsInSubmerged() t=
hen
                    CheckQuestNew()
                    
                    local questGui =3D LocalPlayer.PlayerGui.Main.Quest
                    if not questGui.Visible then
                        StartBring =3D false
                        if (HRP().Position - CFrameQuestNew.Position).Magn=
itude > 20 then
                            TweenTo(CFrameQuestNew)
                        else
                            ReplicatedStorage.Remotes.CommF=5F:InvokeServe=
r("StartQuest", NameQuestNew, LevelQuestNew)
                        end
                    else
                        local questText =3D questGui.Container.QuestTitle.=
Title.Text
                        if not string.find(questText, NameMonNew) then
                            StartBring =3D false
                            ReplicatedStorage.Remotes.CommF=5F:InvokeServe=
r("AbandonQuest")
                        else
                            for =5F, mob in pairs(game:GetService("Workspa=
ce").Enemies:GetChildren()) do
                                if mob.Name =3D=3D MonNew and mob:FindFirs=
tChild("HumanoidRootPart") and mob:FindFirstChild("Humanoid") and mob.Huma=
noid.Health > 0 then
                                    repeat
                                        task.wait()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        AutoHaki()
                                        topos(mob.HumanoidRootPart.CFrame =
* CFrame.new(0, 30, 0))
                                        mob.HumanoidRootPart.CanCollide =
=3D false
                                        mob.Humanoid.WalkSpeed =3D 0
                                        mob.Head.CanCollide =3D false
                                        mob.HumanoidRootPart.Size =3D Vect=
or3.new(70, 70, 70)
                                        StartBring =3D true
                                        MonFarm =3D mob.Name
                                        game:GetService("VirtualUser"):Cap=
tureController()
                                        game:GetService("VirtualUser"):But=
ton1Down(Vector2.new(1280, 672))
                                    until not =5FG.AutoFarm or mob.Humanoi=
d.Health <=3D 0 or not mob.Parent or not questGui.Visible
                                end
                            end
                            
                            if not game:GetService("Workspace").Enemies:Fi=
ndFirstChild(MonNew) then
                                TweenTo(CFrameMonNew)
                                StartBring =3D false
                            end
                        end
                    end
                else
                    -- Farm Antigo (1-2599)
                    local l=5FText=5F0 =3D game:GetService("Players").Loca=
lPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    CheckQuest()
                    if not string.find(l=5FText=5F0, NameMon) then
                        StartBring =3D false
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Ma=
in.Quest.Visible ~=3D false then
                        if game:GetService("Players").LocalPlayer.PlayerGu=
i.Main.Quest.Visible =3D=3D true then
                            if not string.find(l=5FText=5F0, "kissed") the=
n
                                if game:GetService("Workspace").Enemies:Fi=
ndFirstChild(Mon) then
                                    for =5F, v512 in pairs(game:GetService=
("Workspace").Enemies:GetChildren()) do
                                        if v512:FindFirstChild("HumanoidRo=
otPart") and v512:FindFirstChild("Humanoid") and v512.Humanoid.Health > 0 =
and v512.Name =3D=3D Mon then
                                            if not string.find(l=5FText=5F=
0, NameMon) then
                                                StartBring =3D false
                                                game:GetService("Replicate=
dStorage").Remotes.CommF=5F:InvokeServer("AbandonQuest")
                                            else
                                                repeat
                                                    task.wait()
                                                    EquipWeapon(=5FG.Selec=
tWeapon)
                                                    AutoHaki()
                                                    PosMon =3D v512.Humano=
idRootPart.CFrame
                                                    topos(v512.HumanoidRoo=
tPart.CFrame * CFrame.new(0, 30, 0))
                                                    v512.HumanoidRootPart.=
CanCollide =3D false
                                                    v512.Humanoid.WalkSpee=
d =3D 0
                                                    v512.Head.CanCollide =
=3D false
                                                    v512.HumanoidRootPart.=
Size =3D Vector3.new(70, 70, 70)
                                                    StartBring =3D true
                                                    MonFarm =3D v512.Name
                                                    game:GetService("Virtu=
alUser"):CaptureController()
                                                    game:GetService("Virtu=
alUser"):Button1Down(Vector2.new(1280, 672))
                                                until not =5FG.AutoFarm or=
 v512.Humanoid.Health <=3D 0 or not v512.Parent or game:GetService("Player=
s").LocalPlayer.PlayerGui.Main.Quest.Visible =3D=3D false
                                            end
                                        end
                                    end
                                else
                                    TP1(CFrameMon)
                                    StartBring =3D false
                                    if game:GetService("ReplicatedStorage"=
):FindFirstChild(Mon) then
                                        TP1(game:GetService("ReplicatedSto=
rage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0, 20, 0))=

                                    end
                                end
                            else
                                for =5F, v514 in pairs(game:GetService("Wo=
rkspace").Enemies:GetChildren()) do
                                    if string.find(v514.Name, "kissed Warr=
ior") then
                                        if v514:FindFirstChild("HumanoidRo=
otPart") and v514:FindFirstChild("Humanoid") and v514.Humanoid.Health > 0 =
then
                                            if string.find(l=5FText=5F0, N=
ameMon) then
                                                repeat
                                                    task.wait()
                                                    EquipWeapon(=5FG.Selec=
tWeapon)
                                                    PosMon =3D v514.Humano=
idRootPart.CFrame
                                                    topos(v514.HumanoidRoo=
tPart.CFrame * CFrame.new(0, 30, 0))
                                                    v514.HumanoidRootPart.=
CanCollide =3D false
                                                    v514.Humanoid.WalkSpee=
d =3D 0
                                                    v514.Head.CanCollide =
=3D false
                                                    v514.HumanoidRootPart.=
Size =3D Vector3.new(70, 70, 70)
                                                    StartBring =3D true
                                                    MonFarm =3D v514.Name
                                                    game:GetService("Virtu=
alUser"):CaptureController()
                                                    game:GetService("Virtu=
alUser"):Button1Down(Vector2.new(1280, 672))
                                                until not =5FG.AutoFarm or=
 v514.Humanoid.Health <=3D 0 or not v514.Parent or game:GetService("Player=
s").LocalPlayer.PlayerGui.Main.Quest.Visible =3D=3D false
                                            else
                                                StartBring =3D false
                                                game:GetService("Replicate=
dStorage").Remotes.CommF=5F:InvokeServer("AbandonQuest")
                                            end
                                        end
                                    else
                                        TP1(CFrameMon)
                                        StartBring =3D false
                                        if game:GetService("ReplicatedStor=
age"):FindFirstChild(Mon) then
                                            TP1(game:GetService("Replicate=
dStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(0, 20,=
 0))
                                        end
                                    end
                                end
                            end
                        end
                    else
                        StartBring =3D false
                        if BypassTP then
                            if (game.Players.LocalPlayer.Character.Humanoi=
dRootPart.Position - CFrameQuest.Position).Magnitude <=3D 1500 then
                                TP1(CFrameQuest)
                            else
                                TP1(CFrameQuest)
                            end
                        else
                            TP1(CFrameQuest)
                        end
                        if (game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.Position - CFrameQuest.Position).Magnitude <=3D 20 then
                            game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("StartQuest", NameQuest, LevelQuest)
                        end
                    end
                end
            end)
        end
    end
end)
if World3 then
v485:AddToggle({
    Name =3D "Auto Pirates Sea",
    Description =3D "Farm Raid Pirate",
    Default =3D false,
    Callback =3D function(v543)
        =5FG.AutoRaidPirate =3D v543
        StopTween(=5FG.AutoRaidPirate)
    end
})
spawn(function()
    while wait() do
        if =5FG.AutoRaidPirate then
            pcall(function()
                local v544 =3D CFrame.new(-5496.17432, 313.768921, -2841.5=
3027, 0.924894512, 7.37058015E-9, 0.380223751, 3.5881019E-8, 1, -1.0666544=
6E-7, -0.380223751, 1.12297109E-7, 0.924894512)
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.3=
72314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPar=
t.Position).Magnitude <=3D 500 then
                    for =5F, v546 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if =5FG.AutoRaidPirate and v546:FindFirstChild("Hu=
manoidRootPart") and v546:FindFirstChild("Humanoid") and v546.Humanoid.Hea=
lth > 0 and (v546.HumanoidRootPart.Position - game.Players.LocalPlayer.Cha=
racter.HumanoidRootPart.Position).Magnitude < 2000 then
                            repeat
                                wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                NeedAttacking =3D true
                                StartMagnet =3D true
                                v546.HumanoidRootPart.CanCollide =3D false=

                                v546.HumanoidRootPart.Size =3D Vector3.new=
(60, 60, 60)
                                topos(v546.HumanoidRootPart.CFrame * CFram=
e.new(0, 30, 0))
                            until v546.Humanoid.Health <=3D 0 or not v546.=
Parent or =5FG.AutoRaidPirate =3D=3D false
                            NeedAttacking =3D false
                            StartMagnet =3D false
                        end
                    end
                elseif (v544.Position - game.Players.LocalPlayer.Character=
.HumanoidRootPart.Position).magnitude <=3D 1500 then
                    TP1(v544)
                else
                    TP1(v544)
                end
            end)
        end
    end
end)
end
if World2 then
    v485:AddToggle({
        Name =3D "Auto Factory",
        Description =3D "Spawns Every 1:30 [hours, Minutes]",
        Default =3D false,
        Callback =3D function(v732)
            =5FG.AutoFactory =3D v732
            StopTween(=5FG.AutoFactory)
        end
    })
    spawn(function()
        while wait() do
            spawn(function()
                if =5FG.AutoFactory then
                    if game:GetService("Workspace").Enemies:FindFirstChild=
("Core") then
                        for =5F, v734 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v734.Name =3D=3D "Core" and v734.Humanoid.H=
ealth > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    topos(CFrame.new(448.46756, 199.356781=
, -441.389252))
                                    game:GetService("VirtualUser"):Capture=
Controller()
                                    game:GetService("VirtualUser"):Button1=
Down(Vector2.new(1280, 672))
                                until v734.Humanoid.Health <=3D 0 or =5FG.=
AutoFactory =3D=3D false
                            end
                        end
                    else
                        topos(CFrame.new(448.46756, 199.356781, -441.38925=
2))
                    end
                end
            end)
        end
    end)
 end
v485:AddToggle({
    Name =3D "Auto Farm Nearest",
    Description =3D "Auto Farm Nearest Mobs",
    Default =3D false,
    Callback =3D function(v520)
        =5FG.AutoNear =3D v520
        StopTween(=5FG.AutoNear)
    end
})
spawn(function()
    while wait() do
        if =5FG.AutoNear then
            pcall(function()
                for =5F, v522 in pairs(game.Workspace.Enemies:GetChildren(=
)) do
                    if v522:FindFirstChild("Humanoid") and v522:FindFirstC=
hild("HumanoidRootPart") and v522.Humanoid.Health > 0 and (game.Players.Lo=
calPlayer.Character.HumanoidRootPart.Position - v522.HumanoidRootPart.Posi=
tion).Magnitude <=3D 5000 then
                        repeat
                            wait(=5FG.Fast=5FDelay)
                            StartBring =3D true
                            AutoHaki()
                            EquipWeapon(=5FG.SelectWeapon)
                            topos(v522.HumanoidRootPart.CFrame * CFrame.ne=
w(0, 30, 0))
                            v522.HumanoidRootPart.Size =3D Vector3.new(60,=
 60, 60)
                            v522.HumanoidRootPart.Transparency =3D 1
                            v522.Humanoid.JumpPower =3D 0
                            v522.Humanoid.WalkSpeed =3D 0
                            v522.HumanoidRootPart.CanCollide =3D false
                            FarmPos =3D v522.HumanoidRootPart.CFrame
                            MonFarm =3D v522.Name
                        until not =5FG.AutoNear or not v522.Parent or v522=
.Humanoid.Health <=3D 0 or not game.Workspace.Enemies:FindFirstChild(v522.=
Name)
                        StartBring =3D false
                    end
                end
            end)
        end
    end
end)
local =5F =3D v485:AddSection({"Valentine"})
local ReplicatedStorage =3D game:GetService("ReplicatedStorage")
local Remotes =3D ReplicatedStorage:WaitForChild("Remotes")
local CommF =3D Remotes:WaitForChild("CommF=5F")

=5FG.AutoValentineGacha =3D false

v485:AddToggle({
    Name =3D "Auto Valentine Random",
    Description =3D "Auto Gacha Valentine Roll",
    Default =3D false,
    Callback =3D function(Value)
        =5FG.AutoValentineGacha =3D Value
    end
})

local function fireActivity()
    local reportRemote =3D ReplicatedStorage:FindFirstChild("ReportActivit=
y", true)
    if reportRemote and reportRemote:IsA("RemoteEvent") then
        pcall(function()
            reportRemote:FireServer("GachaWindow")
        end)
    end
end

task.spawn(function()
    while task.wait(2.5) do
        if not =5FG.AutoValentineGacha then continue end

        pcall(function()
            CommF:InvokeServer("Cousin")
            task.wait(0.1)

            fireActivity()
            task.wait(0.1)

            CommF:InvokeServer("Cousin", "CheckCanBuyType", "ValentinesGac=
ha26")
            task.wait(0.1)

            CommF:InvokeServer("Cousin", "ValentinesGacha26")
        end)
    end
end)

if World3 then
local =5F =3D v485:AddSection({"Kill Player"})
local v1123 =3D {}
for =5F, v1125 in pairs(game.Players:GetPlayers()) do
    table.insert(v1123, v1125.Name)
end
local =5F =3D nil
v485:AddButton({
    Title =3D "Get Quest Elite Players",
    Description =3D "",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("PlayerHunter")
    end
})
v485:AddToggle({
    Title =3D "Auto Kill Player Quest",
    Description =3D "",
    Value =3D false,
    Callback =3D function(v1127)
        =5FG.AutoPlayerHunter =3D v1127
        StopTween(=5FG.AutoPlayerHunter)
    end
})
spawn(function()
    game:GetService("RunService").Heartbeat:connect(function()
        pcall(function()
            if =5FG.AutoPlayerHunter and game:GetService("Players").LocalP=
layer.Character:FindFirstChild("Humanoid") then
                game:GetService("Players").LocalPlayer.Character.Humanoid:=
ChangeState(11)
            end
        end)
    end)
end)
spawn(function()
    pcall(function()
        while wait(0.1) do
            if =5FG.AutoPlayerHunter and game:GetService("Players").LocalP=
layer.PlayerGui.Main.PvpDisabled.Visible =3D=3D true then
                game:GetService("ReplicatedStorage").Remotes.CommF=5F:Invo=
keServer("EnablePvp")
            end
        end
    end)
end)
spawn(function()
    while wait() do
        if =5FG.AutoPlayerHunter then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest=
.Visible =3D=3D false then
                wait(0.5)
                game:GetService("ReplicatedStorage").Remotes.CommF=5F:Invo=
keServer("PlayerHunter")
            else
                for =5F, v1129 in pairs(game:GetService("Workspace").Chara=
cters:GetChildren()) do
                    if string.find(game:GetService("Players").LocalPlayer.=
PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, v1129.Name) then
                        repeat
                            wait()
                            AutoHaki()
                            EquipWeapon(=5FG.SelectWeapon)
                            Useskill =3D true
                            topos(v1129.HumanoidRootPart.CFrame * CFrame.n=
ew(1, 7, 3))
                            v1129.HumanoidRootPart.Size =3D Vector3.new(60=
, 60, 60)
                            game:GetService("VirtualUser"):CaptureControll=
er()
                            game:GetService("VirtualUser"):Button1Down(Vec=
tor2.new(1280, 672))
                        until =5FG.AutoPlayerHunter =3D=3D false or v1129.=
Humanoid.Health <=3D 0
                        Useskill =3D false
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("AbandonQuest")
                    end
                end
            end
        end
    end
end)
v485:AddToggle({
    Name =3D "Auto Safe Mode",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1130)
        =5FG.SafeMode =3D v1130
        StopTween(=5FG.SafeMode)
    end
})
spawn(function()
    pcall(function()
        while wait() do
            if =5FG.SafeMode then
                game:GetService("Players").LocalPlayer.Character.HumanoidR=
ootPart.CFrame =3D game:GetService("Players").LocalPlayer.Character.Humano=
idRootPart.CFrame * CFrame.new(0, 200, 0)
            end
        end
    end)
end)
end

if World3 then
local =5F =3D v485:AddSection({"Tyrant of the Skies"})
local v548 =3D v485:AddParagraph({Title =3D "Check Eyes Status", Content =
=3D "Loading..."})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local v549 =3D 0
            local v550 =3D {
                workspace.Map.TikiOutpost.IslandModel:FindFirstChild("Eye1=
"),
                workspace.Map.TikiOutpost.IslandModel:FindFirstChild("Eye2=
"),
                workspace.Map.TikiOutpost.IslandModel:FindFirstChild("Eye3=
"),
                workspace.Map.TikiOutpost.IslandModel:FindFirstChild("Eye4=
")
            }
            for =5F, v552 in ipairs(v550) do
                if v552 and v552:IsA("BasePart") and v552.Transparency =3D=
=3D 0 then
                    v549 =3D v549 + 1
                end
            end
            v548:Set("Status: " .. v549 .. " Eye(s)" .. (not (v549 ~=3D 4)=
 and "       " or ""))
        end)
    end
end)
v485:AddToggle({
    Name =3D "Auto Farm Tyrant",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v553)
        =5FG.FarmDaiBan =3D v553
        StopTween(=5FG.FarmDaiBan)
    end
})
local v554 =3D CFrame.new(-16194.0048828125, 155.21844482421875, 1420.7199=
70703125)
local =5F =3D game:GetService("Workspace").Enemies
task.spawn(function()
    while task.wait() do
        if =5FG.FarmDaiBan then
            pcall(function()
                if not game:GetService("Workspace").Enemies:FindFirstChild=
("Tyrant of the Skies") then
                    local v556 =3D false
                    for =5F, v558 in pairs({"Isle Outlaw", "Island Boy", "=
Isle Champion", "Serpent Hunter", "Skull Slayer"}) do
                        if game:GetService("Workspace").Enemies:FindFirstC=
hild(v558) then
                            v556 =3D true
                            break
                        end
                    end
                    if not v556 then
                        local v559 =3D math.random(1, 3)
                        if v559 =3D=3D 1 then
                            topos(CFrame.new(-1436.86011, 167.753616, -122=
96.9512))
                        elseif v559 ~=3D 2 then
                            if v559 =3D=3D 3 then
                                topos(CFrame.new(-2231.2793, 168.256653, -=
12845.7559))
                            end
                        else
                            topos(CFrame.new(-2383.78979, 150.450592, -121=
26.4961))
                        end
                    else
                        for =5F, v561 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if (v561.Name =3D=3D "Isle Outlaw" or v561.Nam=
e =3D=3D "Island Boy" or v561.Name =3D=3D "Isle Champion" or v561.Name =3D=
=3D "Serpent Hunter" or v561.Name =3D=3D "Skull Slayer") and v561:FindFirs=
tChild("Humanoid") and v561:FindFirstChild("HumanoidRootPart") and v561.Hu=
manoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v561.HumanoidRootPart.CanCollide =3D f=
alse
                                    v561.Humanoid.WalkSpeed =3D 0
                                    StartBring =3D true
                                    v561.HumanoidRootPart.Size =3D Vector3=
.new(50, 50, 50)
                                    PosMon =3D v561.HumanoidRootPart.CFram=
e
                                    MonFarm =3D v561.Name
                                    v561.Head.CanCollide =3D false
                                    topos(v561.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    NeedAttacking =3D true
                                    if v561.Name ~=3D "Isle Outlaw" then
                                        if v561.Name =3D=3D "Island Boy" t=
hen
                                            Bring(v561.Name, CFrame.new(-1=
6901.26171875, 84.06756591796875, -192.88906860351562))
                                        elseif v561.Name ~=3D "Isle Champi=
on" then
                                            if v561.Name ~=3D "Serpent Hun=
ter" then
                                                if v561.Name =3D=3D "Skull=
 Slayer" then
                                                    Bring(v561.Name, CFram=
e.new(-16855.043, 122.457253, 1478.15308, -0.999392271, 0, -0.0348687991, =
0, 1, 0, 0.0348687991, 0, -0.999392271))
                                                end
                                            else
                                                Bring(v561.Name, CFrame.ne=
w(-16521.0625, 106.09285, 1488.78467, 0.469467044, 0, 0.882950008, 0, 1, 0=
, -0.882950008, 0, 0.469467044))
                                            end
                                        else
                                            Bring(v561.Name, CFrame.new(-1=
6641.6796875, 235.7825469970703, 1031.282958984375))
                                        end
                                    else
                                        Bring(v561.Name, CFrame.new(-16442=
.814453125, 116.13899993896484, -264.4637756347656))
                                    end
                                until not =5FG.FarmDaiBan or not v561.Pare=
nt or v561.Humanoid.Health <=3D 0 or game:GetService("Workspace").Map.Cake=
Loaf.BigMirror.Other.Transparency =3D=3D 0 or game:GetService("ReplicatedS=
torage"):FindFirstChild("Tyrant of the Skies [Lv. 2600] [Raid Boss]") or g=
ame:GetService("Workspace").Enemies:FindFirstChild("Tyrant of the Skies [L=
v. 2600] [Raid Boss]")
                                DamageAura =3D false
                            end
                        end
                    end
                    if not BypassTP then
                        topos(v554)
                    elseif (playerPos - v554.Position).Magnitude > 1500 th=
en
                        BTP(v554)
                    else
                        topos(v554)
                    end
                    UnEquipWeapon(=5FG.Selectweapon)
                    topos(CFrame.new(-16194.0048828125, 155.21844482421875=
, 1420.719970703125))
                else
                    for =5F, v563 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if v563.Name =3D=3D "Tyrant of the Skies" and v563=
:FindFirstChild("Humanoid") and v563:FindFirstChild("HumanoidRootPart") an=
d v563.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                v563.HumanoidRootPart.CanCollide =3D false=

                                v563.Humanoid.WalkSpeed =3D 0
                                v563.HumanoidRootPart.Size =3D Vector3.new=
(50, 50, 50)
                                topos(v563.HumanoidRootPart.CFrame * CFram=
e.new(0, 40, 0))
                                NeedAttacking =3D true
                            until not =5FG.FarmDaiBan or not v563.Parent o=
r v563.Humanoid.Health <=3D 0
                            wait(1)
                        end
                    end
                end
            end)
        end
    end
end)
v485:AddToggle({
    Name =3D "Summon Tyrant Of The Skies",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v564)
        =5FG.Farm8Binhs =3D v564
        StopTween(=5FG.Farm8Binhs)
    end
})
local v565 =3D {
    CFrame.new(-16250.2354, 158.167007, 1313.01904, 0.999388874, 0, 0.0349=
550731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16250.2354, 158.167007, 1313.01904, 0.999388874, 0, 0.0349=
550731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16297.0596, 159.322998, 1317.224, -0.463313937, 0, 0.88619=
4229, 0, 1, 0, -0.886194229, 0, -0.463313937),
    CFrame.new(-16335.0967, 159.334, 1324.88599, 0.999388874, 0, 0.0349550=
731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16288.6094, 158.167007, 1470.36804, 0.999388874, 0, 0.0349=
550731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16258.001, 156.761002, 1461.40405, 0.999388874, 0, 0.03495=
50731, 0, 1, 0, -0.0349550731, 0, 0.999388874),
    CFrame.new(-16245.4121, 158.436996, 1463.36597, -0.993159413, 0, 0.116=
766132, 0, 1, 0, -0.116766132, 0, -0.993159413),
    CFrame.new(-16212.4688, 158.167007, 1466.34399, 0.999388874, 0, 0.0349=
550731, 0, 1, 0, -0.0349550731, 0, 0.999388874)
}
function TweenToPosition(v566)
    local l=5FCharacter=5F5 =3D game.Players.LocalPlayer.Character
    local v568 =3D l=5FCharacter=5F5 and l=5FCharacter=5F5:FindFirstChild(=
"HumanoidRootPart")
    if not v568 then
        return 
    else
        local l=5FTweenService=5F0 =3D game:GetService("TweenService")
        local v570 =3D (v568.Position - v566.Position).Magnitude / 300
        local v571 =3D l=5FTweenService=5F0:Create(v568, TweenInfo.new(v57=
0, Enum.EasingStyle.Linear), {CFrame =3D v566})
        v571:Play()
        v571.Completed:Wait()
        return 
    end
end
function Skill(v572)
    local l=5FVirtualInputManager=5F0 =3D game:GetService("VirtualInputMan=
ager")
    l=5FVirtualInputManager=5F0:SendKeyEvent(true, Enum.KeyCode[v572], fal=
se, game)
    task.wait(0.05)
    l=5FVirtualInputManager=5F0:SendKeyEvent(false, Enum.KeyCode[v572], fa=
lse, game)
end
function Click()
    local l=5FVirtualInputManager=5F1 =3D game:GetService("VirtualInputMan=
ager")
    l=5FVirtualInputManager=5F1:SendMouseButtonEvent(0, 0, 0, true, game, =
1)
    task.wait(0.05)
    l=5FVirtualInputManager=5F1:SendMouseButtonEvent(0, 0, 0, false, game,=
 1)
end
function FindWeapon(v575)
    local l=5FBackpack=5F0 =3D game.Players.LocalPlayer.Backpack
    for =5F, v578 in ipairs(l=5FBackpack=5F0:GetChildren()) do
        if v578:IsA("Tool") then
            if v575 ~=3D "Melee" or v578.ToolTip ~=3D "Melee" and v578.Nam=
e ~=3D "Combat" then
                if v575 ~=3D "Sword" or v578.ToolTip ~=3D "Sword" then
                    if v575 =3D=3D "Gun" and v578.ToolTip =3D=3D "Gun" the=
n
                        return v578.Name
                    elseif v575 =3D=3D "Fruit" and v578.ToolTip =3D=3D "Bl=
ox Fruit" then
                        return v578.Name
                    end
                else
                    return v578.Name
                end
            else
                return v578.Name
            end
        end
    end
    return nil
end
function EquipWeapon(v579)
    if not v579 then
        return 
    else
        local l=5FLocalPlayer=5F7 =3D game.Players.LocalPlayer
        local l=5FFirstChild=5F1 =3D l=5FLocalPlayer=5F7:WaitForChild("Bac=
kpack"):FindFirstChild(v579)
        if l=5FFirstChild=5F1 then
            l=5FLocalPlayer=5F7.Character.Humanoid:EquipTool(l=5FFirstChil=
d=5F1)
        end
        return 
    end
end
function AttackAllSkills()
    local v582 =3D FindWeapon("Melee")
    local v583 =3D FindWeapon("Sword")
    local v584 =3D FindWeapon("Fruit")
    local v585 =3D FindWeapon("Gun")
    if v582 then
        EquipWeapon(v582)
        Skill("Z")
        Skill("X")
        Skill("C")
        Skill("V")
        Click()
    end
    if v583 then
        EquipWeapon(v583)
        Skill("Z")
        Skill("X")
        Click()
    end
    if v584 then
        EquipWeapon(v584)
        Skill("Z")
        Skill("X")
        Skill("C")
        Skill("F")
        Click()
    end
    if v585 then
        EquipWeapon(v585)
        Skill("Z")
        Skill("X")
        Click()
    end
end
task.spawn(function()
    while task.wait(1) do
        if =5FG.Farm8Binhs then
            for =5F, v587 in ipairs(v565) do
                if =5FG.Farm8Binhs then
                    TweenToPosition(v587 * CFrame.new(0, 5, 0))
                    task.wait(0.5)
                    AttackAllSkills()
                    task.wait(3)
                else
                    break
                end
            end
        end
    end
end)
end
local =5F =3D v485:AddSection({"Farm Bones"})
local v589 =3D v485:AddParagraph({Title =3D "Check Bone", Content =3D "Loa=
ding..."})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local v590 =3D game:GetService("ReplicatedStorage").Remotes.Co=
mmF=5F:InvokeServer("Bones", "Check")
            v589:Set("You Have: " .. tostring(v590) .. " Bones")
        end)
    end
end)
v485:AddToggle({
    Name =3D "Auto Farm Bones",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v591)
        =5FG.FarmBone =3D v591
        StopTween(=5FG.FarmBone)
    end
})
spawn(function()
    while wait() do
        local v592 =3D CFrame.new(-9508.5673828125, 142.1398468017578, 573=
7.3603515625)
        do
            local l=5Fv592=5F0 =3D v592
            if =5FG.FarmBone and World3 then
                pcall(function()
                    if not BypassTP then
                        TP1(l=5Fv592=5F0)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.Position - l=5Fv592=5F0.Position).Magnitude > 2000 then
                        TP1(l=5Fv592=5F0)
                        wait(0.1)
                        for =5F =3D 1, 8 do
                            game.Players.localPlayer.Character.HumanoidRoo=
tPart.CFrame =3D CFrame.new(l=5Fv592=5F0)
                            game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("SetSpawnPoint")
                            wait(0.1)
                        end
                    elseif (game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.Position - l=5Fv592=5F0.Position).Magnitude < 2000 then
                        TP1(l=5Fv592=5F0)
                    end
                    if not game:GetService("Workspace").Enemies:FindFirstC=
hild("Reborn Skeleton") and not game:GetService("Workspace").Enemies:FindF=
irstChild("Living Zombie") and not game:GetService("Workspace").Enemies:Fi=
ndFirstChild("Demonic Soul") and not game:GetService("Workspace").Enemies:=
FindFirstChild("Posessed Mummy") then
                        StartBring =3D false
                        topos(CFrame.new(-9506.234375, 172.130615234375, 6=
117.0771484375))
                        for =5F, v596 in pairs(game:GetService("Replicated=
Storage"):GetChildren()) do
                            if v596.Name =3D=3D "Reborn Skeleton" then
                                topos(v596.HumanoidRootPart.CFrame * CFram=
e.new(2, 20, 2))
                            elseif v596.Name ~=3D "Living Zombie" then
                                if v596.Name ~=3D "Demonic Soul" then
                                    if v596.Name =3D=3D "Posessed Mummy" t=
hen
                                        topos(v596.HumanoidRootPart.CFrame=
 * CFrame.new(2, 20, 2))
                                    end
                                else
                                    topos(v596.HumanoidRootPart.CFrame * C=
Frame.new(2, 20, 2))
                                end
                            else
                                topos(v596.HumanoidRootPart.CFrame * CFram=
e.new(2, 20, 2))
                            end
                        end
                    else
                        for =5F, v598 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if (v598.Name =3D=3D "Reborn Skeleton" or v598=
.Name =3D=3D "Living Zombie" or v598.Name =3D=3D "Demonic Soul" or v598.Na=
me =3D=3D "Posessed Mummy") and v598:FindFirstChild("Humanoid") and v598:F=
indFirstChild("HumanoidRootPart") and v598.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    NoAttackAnimation =3D true
                                    NeedAttacking =3D true
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v598.HumanoidRootPart.CanCollide =3D f=
alse
                                    v598.Humanoid.WalkSpeed =3D 0
                                    v598.Head.CanCollide =3D false
                                    StartBring =3D true
                                    MonFarm =3D v598.Name
                                    PosMon =3D v598.HumanoidRootPart.CFram=
e
                                    topos(v598.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    sethiddenproperty(game.Players.LocalPl=
ayer, "SimulationRadius", math.huge)
                                until not =5FG.FarmBone or not v598.Parent=
 or v598.Humanoid.Health <=3D 0
                            end
                        end
                    end
                end)
            end
        end
    end
end)
v485:AddToggle({
    Name =3D "Auto Kill Soul Reaper",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v599)
        =5FG.Hallow =3D v599
        StopTween(=5FG.Hallow)
    end
})
spawn(function()
    while wait() do
        if =5FG.Hallow then
            pcall(function()
                if not game:GetService("Workspace").Enemies:FindFirstChild=
("Soul Reaper") then
                    if game:GetService("Players").LocalPlayer.Backpack:Fin=
dFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Ch=
aracter:FindFirstChild("Hallow Essence") then
                        repeat
                            TP1(CFrame.new(-8932.322265625, 146.8315429687=
5, 6062.55078125))
                            wait()
                        until (CFrame.new(-8932.322265625, 146.83154296875=
, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.Position).Magnitude <=3D 8
                        EquipWeapon("Hallow Essence")
                    elseif game:GetService("ReplicatedStorage"):FindFirstC=
hild("Soul Reaper") then
                        TP1(game:GetService("ReplicatedStorage"):FindFirst=
Child("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                else
                    for =5F, v601 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if string.find(v601.Name, "Soul Reaper") then
                            repeat
                                task.wait()
                                EquipWeapon(=5FG.SelectWeapon)
                                AutoHaki()
                                v601.HumanoidRootPart.Size =3D Vector3.new=
(50, 50, 50)
                                topos(v601.HumanoidRootPart.CFrame * CFram=
e.new(0, 30, 0))
                                game:GetService("VirtualUser"):CaptureCont=
roller()
                                game:GetService("VirtualUser"):Button1Down=
(Vector2.new(1280, 670))
                                v601.HumanoidRootPart.Transparency =3D 1
                            until v601.Humanoid.Health <=3D 0 or =5FG.Hall=
ow =3D=3D false
                        end
                    end
                end
            end)
        end
    end
end)
v485:AddToggle({
    Name =3D "Auto Trade Bones",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v602)
        =5FG.Rdbone =3D v602
        StopTween(=5FG.Rdbone)
    end
})
spawn(function()
    while wait(0.1) do
        if =5FG.Rdbone then
            game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeSe=
rver("Bones", "Buy", 1, 1)
        end
    end
end)
v485:AddToggle({
    Name =3D "Auto Pray",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v603)
        =5FG.Pray =3D v603
        StopTween(=5FG.Pray)
    end
})
spawn(function()
    pcall(function()
        while wait(0.1) do
            if =5FG.Pray then
                TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983=
064115, -2.48005533E-10, 0.18326205, -1.78910387E-9, 1, -8.24392288E-9, -0=
.18326205, -8.43218029E-9, -0.983064115))
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF=5F:Invo=
keServer("gravestoneEvent", 1)
            end
        end
    end)
end)
v485:AddToggle({
    Name =3D "Auto Try Luck",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v604)
        =5FG.Trylux =3D v604
        StopTween(=5FG.Trylux)
    end
})
spawn(function()
    pcall(function()
        while wait(0.1) do
            if =5FG.Trylux then
                TP1(CFrame.new(-8652.99707, 143.450119, 6170.50879, -0.983=
064115, -2.48005533E-10, 0.18326205, -1.78910387E-9, 1, -8.24392288E-9, -0=
.18326205, -8.43218029E-9, -0.983064115))
                wait()
                game:GetService("ReplicatedStorage").Remotes.CommF=5F:Invo=
keServer("gravestoneEvent", 2)
            end
        end
    end)
end)
local =5F =3D v485:AddSection({"Katakuri"})
local v606 =3D v485:AddParagraph({Title =3D "Check Cake Prince", Content =
=3D "Loading..."})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            local v607 =3D game:GetService("ReplicatedStorage").Remotes.Co=
mmF=5F:InvokeServer("CakePrinceSpawner")
            if string.len(v607) =3D=3D 88 then
                v606:Set("Killed : " .. string.sub(v607, 39, 41) .. " / 50=
0")
            elseif string.len(v607) ~=3D 87 then
                if string.len(v607) =3D=3D 86 then
                    v606:Set("Killed : " .. string.sub(v607, 39, 39) .. " =
/ 500")
                else
                    v606:Set("Prince King Spawned    ")
                end
            else
                v606:Set("Killed : " .. string.sub(v607, 39, 40) .. " / 50=
0")
            end
        end)
    end
end)
v485:AddToggle({
    Name =3D "Farm Katakuri",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v608)
        =5FG.FarmCake =3D v608
        StopTween(=5FG.FarmCake)
    end
})
local v609 =3D CFrame.new(-2130.80712890625, 69.95634460449219, -12327.839=
84375)
local =5F =3D game:GetService("Workspace").Enemies
task.spawn(function()
    while task.wait() do
        if =5FG.FarmCake then
            pcall(function()
                if not game:GetService("Workspace").Enemies:FindFirstChild=
("Cake Prince") then
                    local v611 =3D false
                    for =5F, v613 in pairs({"Cookie Crafter", "Cake Guard"=
, "Baking Staff", "Head Baker"}) do
                        if game:GetService("Workspace").Enemies:FindFirstC=
hild(v613) then
                            v611 =3D true
                            break
                        end
                    end
                    if v611 then
                        for =5F, v615 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if (v615.Name =3D=3D "Cookie Crafter" or v615.=
Name =3D=3D "Cake Guard" or v615.Name =3D=3D "Baking Staff" or v615.Name =
=3D=3D "Head Baker") and v615:FindFirstChild("Humanoid") and v615:FindFirs=
tChild("HumanoidRootPart") and v615.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v615.HumanoidRootPart.CanCollide =3D f=
alse
                                    v615.Humanoid.WalkSpeed =3D 0
                                    StartBring =3D true
                                    v615.HumanoidRootPart.Size =3D Vector3=
.new(50, 50, 50)
                                    PosMon =3D v615.HumanoidRootPart.CFram=
e
                                    MonFarm =3D v615.Name
                                    v615.Head.CanCollide =3D false
                                    topos(v615.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    NeedAttacking =3D true
                                    if v615.Name ~=3D "Cookie Crafter" the=
n
                                        if v615.Name =3D=3D "Cake Guard" t=
hen
                                            Bring(v615.Name, CFrame.new(-1=
693.98047, 35.2188225, -12436.8438, -0.716115236, 0, -0.697982132, 0, 1, 0=
, 0.697982132, 0, -0.716115236))
                                        elseif v615.Name =3D=3D "Baking St=
aff" then
                                            Bring(v615.Name, CFrame.new(-1=
980.4375, 34.6653099, -12983.8408, -0.254338264, 0, -0.967115223, 0, 1, 0,=
 0.967115223, 0, -0.254338264))
                                        elseif v615.Name =3D=3D "Head Bake=
r" then
                                            Bring(v615.Name, CFrame.new(-2=
151.37793, 51.0095749, -13033.3975, -0.996587753, 0, 0.0825396702, 0, 1, 0=
, -0.0825396702, 0, -0.996587753))
                                        end
                                    else
                                        Bring(v615.Name, CFrame.new(-2212.=
88965, 37.0051041, -11969.2568, 0.458114207, 0, -0.888893366, 0, 1, 0, 0.8=
88893366, 0, 0.458114207))
                                    end
                                until not =5FG.FarmCake or not v615.Parent=
 or v615.Humanoid.Health <=3D 0 or game:GetService("Workspace").Map.CakeLo=
af.BigMirror.Other.Transparency =3D=3D 0 or game:GetService("ReplicatedSto=
rage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetSer=
vice("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Bos=
s]")
                                DamageAura =3D false
                            end
                        end
                    else
                        local v616 =3D math.random(1, 3)
                        if v616 ~=3D 1 then
                            if v616 ~=3D 2 then
                                if v616 =3D=3D 3 then
                                    topos(CFrame.new(-2231.2793, 168.25665=
3, -12845.7559))
                                end
                            else
                                topos(CFrame.new(-2383.78979, 150.450592, =
-12126.4961))
                            end
                        else
                            topos(CFrame.new(-1436.86011, 167.753616, -122=
96.9512))
                        end
                    end
                    if BypassTP then
                        if (playerPos - v609.Position).Magnitude <=3D 1500=
 then
                            topos(v609)
                        else
                            BTP(v609)
                        end
                    else
                        topos(v609)
                    end
                    UnEquipWeapon(=5FG.Selectweapon)
                    topos(CFrame.new(-2130.80712890625, 69.95634460449219,=
 -12327.83984375))
                else
                    for =5F, v618 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if v618.Name =3D=3D "Cake Prince" and v618:FindFir=
stChild("Humanoid") and v618:FindFirstChild("HumanoidRootPart") and v618.H=
umanoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                v618.HumanoidRootPart.CanCollide =3D false=

                                v618.Humanoid.WalkSpeed =3D 0
                                v618.HumanoidRootPart.Size =3D Vector3.new=
(50, 50, 50)
                                if game:GetService("Workspace").=5FWorldOr=
igin:FindFirstChild("Ring") or game:GetService("Workspace").=5FWorldOrigin=
:FindFirstChild("Fist") or game:GetService("Workspace").=5FWorldOrigin:Fin=
dFirstChild("MochiSwirl") then
                                    topos(v618.HumanoidRootPart.CFrame * C=
Frame.new(0, -40, 0))
                                else
                                    topos(v618.HumanoidRootPart.CFrame * C=
Frame.new(4, 10, 10))
                                end
                                NeedAttacking =3D true
                            until not =5FG.FarmCake or not v618.Parent or =
v618.Humanoid.Health <=3D 0
                            wait(1)
                        end
                    end
                end
            end)
        end
    end
end)
v485:AddToggle({
    Name =3D "Farm Katakuri V2",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v619)
        =5FG.Fullykatakuri =3D v619
        StopTween(=5FG.Fullykatakuri)
    end
})
spawn(function()
    while wait() do
        if =5FG.Fullykatakuri then
            pcall(function()
                if not game.Players.LocalPlayer.Backpack:FindFirstChild("G=
od's Chalice") and not game.Players.LocalPlayer.Character:FindFirstChild("=
God's Chalice") then
                    if game.Players.LocalPlayer.Backpack:FindFirstChild("S=
weet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet=
 Chalice") then
                        if string.find(game:GetService("ReplicatedStorage"=
).Remotes.CommF=5F:InvokeServer("CakePrinceSpawner"), "Do you want to open=
 the portal now=3F") then
                            game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("CakePrinceSpawner")
                        elseif game.Workspace.Enemies:FindFirstChild("Baki=
ng Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.=
Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:F=
indFirstChild("Cookie Crafter") then
                            for =5F, v621 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if (v621.Name =3D=3D "Baking Staff" or v62=
1.Name =3D=3D "Head Baker" or v621.Name =3D=3D "Cake Guard" or v621.Name =
=3D=3D "Cookie Crafter") and v621.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        AutoHaki()
                                        PosMon =3D v621.HumanoidRootPart.C=
Frame
                                        topos(v621.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        v621.HumanoidRootPart.CanCollide =
=3D false
                                        v621.Humanoid.WalkSpeed =3D 0
                                        v621.Head.CanCollide =3D false
                                        attackGunEnemies(v621.Name, 5)
                                        v621.HumanoidRootPart.Size =3D Vec=
tor3.new(70, 70, 70)
                                        StartBring =3D false
                                        MonFarm =3D v621.Name
                                        game:GetService("VirtualUser"):Cap=
tureController()
                                        game:GetService("VirtualUser"):But=
ton1Down(Vector2.new(1280, 672))
                                    until =5FG.Fullykatakuri =3D=3D false =
or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or n=
ot v621.Parent or v621.Humanoid.Health <=3D 0
                                end
                            end
                        else
                            CakeBring =3D false
                            StartBring =3D false
                            topos(CFrame.new(-1820.0634765625, 210.7478179=
9316406, -12297.49609375))
                        end
                    elseif game.ReplicatedStorage:FindFirstChild("Dough Ki=
ng") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") =
then
                        if not game:GetService("Workspace").Enemies:FindFi=
rstChild("Dough King") then
                            topos(CFrame.new(-2009.2802734375, 4532.972167=
96875, -14937.3076171875))
                        else
                            for =5F, v623 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v623.Name =3D=3D "Dough King" then
                                    repeat
                                        wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v623.HumanoidRootPart.Size =3D Vec=
tor3.new(70, 70, 70)
                                        v623.HumanoidRootPart.CanCollide =
=3D false
                                        StartBring =3D false
                                        topos(v623.HumanoidRootPart.CFrame=
 * CFrame.new(0, -40, 0))
                                        game:GetService("VirtualUser"):Cap=
tureController()
                                        game:GetService("VirtualUser"):But=
ton1Down(Vector2.new(1280, 672))
                                    until =5FG.Fullykatakuri =3D=3D false =
or not v623.Parent or v623.Humanoid.Health <=3D 0
                                end
                            end
                        end
                    elseif game.Players.LocalPlayer.Backpack:FindFirstChil=
d("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key=
") then
                        local v624 =3D {[1] =3D "CakeScientist", [2] =3D "=
Check"}
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer(unpack(v624))
                    elseif game:GetService("Players").LocalPlayer.PlayerGu=
i.Main.Quest.Visible ~=3D true then
                        wait(0.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("EliteHunter")
                    elseif string.find(game:GetService("Players").LocalPla=
yer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or str=
ing.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Conta=
iner.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Pla=
yers").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "=
Urban") then
                        if not game:GetService("Workspace").Enemies:FindFi=
rstChild("Diablo") and not game:GetService("Workspace").Enemies:FindFirstC=
hild("Deandre") and not game:GetService("Workspace").Enemies:FindFirstChil=
d("Urban") then
                            if game:GetService("ReplicatedStorage"):FindFi=
rstChild("Diablo") then
                                topos(game:GetService("ReplicatedStorage")=
:FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                            elseif not game:GetService("ReplicatedStorage"=
):FindFirstChild("Deandre") then
                                if game:GetService("ReplicatedStorage"):Fi=
ndFirstChild("Urban") then
                                    topos(game:GetService("ReplicatedStora=
ge"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2=
))
                                end
                            else
                                topos(game:GetService("ReplicatedStorage")=
:FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))=

                            end
                        else
                            for =5F, v626 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if (v626.Name =3D=3D "Diablo" or v626.Name=
 =3D=3D "Deandre" or v626.Name =3D=3D "Urban") and v626:FindFirstChild("Hu=
manoid") and v626:FindFirstChild("HumanoidRootPart") and v626.Humanoid.Hea=
lth > 0 then
                                    repeat
                                        wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        PosMon =3D v626.HumanoidRootPart.C=
Frame
                                        topos(v626.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        v626.HumanoidRootPart.CanCollide =
=3D false
                                        v626.Humanoid.WalkSpeed =3D 0
                                        v626.Head.CanCollide =3D false
                                        attackGunEnemies(v626.Name, 5)
                                        v626.HumanoidRootPart.Size =3D Vec=
tor3.new(70, 70, 70)
                                        StartBring =3D false
                                        MonFarm =3D v626.Name
                                        game:GetService("VirtualUser"):Cap=
tureController()
                                        game:GetService("VirtualUser"):But=
ton1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService(=
"Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until =5FG.Fullykatakuri =3D=3D false =
or v626.Humanoid.Health <=3D 0 or not v626.Parent or game.Players.LocalPla=
yer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.C=
haracter:FindFirstChild("God's Chalice")
                                end
                            end
                        end
                    end
                elseif string.find(game:GetService("ReplicatedStorage").Re=
motes.CommF=5F:InvokeServer("SweetChaliceNpc"), "Where") then
                    game:GetService("ReplicatedStorage").Remotes.CommF=5F:=
InvokeServer("SweetChaliceNpc")
                end
            end)
        end
    end
end)
local =5F =3D v485:AddSection({"Auto Farm Chest And Berry"})

v485:AddToggle({
    Name =3D "Auto Collect Berry",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v628)
        =5FG.CollectBerry =3D v628
        StopTween(=5FG.CollectBerry)
    end
})
spawn(function()
    while wait() do
        if =5FG.CollectBerry then
            local l=5FLocalPlayer=5F8 =3D game:GetService("Players").Local=
Player
            local l=5FPosition=5F2 =3D (l=5FLocalPlayer=5F8.Character or l=
=5FLocalPlayer=5F8.CharacterAdded:Wait()):GetPivot().Position
            local l=5FTagged=5F1 =3D game:GetService("CollectionService"):=
GetTagged("BerryBush")
            local l=5Fhuge=5F1 =3D math.huge
            local v633 =3D nil
            local v634 =3D nil
            for =5F, v636 in ipairs(l=5FTagged=5F1) do
                for v637, =5F in pairs(v636:GetAttributes()) do
                    local l=5FMagnitude=5F4 =3D (v636.Parent:GetPivot().Po=
sition - l=5FPosition=5F2).Magnitude
                    if l=5FMagnitude=5F4 < l=5Fhuge=5F1 then
                        l=5Fhuge=5F1 =3D l=5FMagnitude=5F4
                        v633 =3D v636
                        v634 =3D v637
                    end
                end
            end
            if v633 and v634 then
                local l=5FParent=5F0 =3D v633.Parent
                local l=5FPosition=5F3 =3D l=5FParent=5F0:GetPivot().Posit=
ion
                TP1(CFrame.new(l=5FPosition=5F3 + Vector3.new(0, 2, 0)))
                task.wait(0.5)
                local l=5Fl=5FParent=5F0=5FFirstChild=5F0 =3D l=5FParent=
=5F0:FindFirstChild(v634)
                if l=5Fl=5FParent=5F0=5FFirstChild=5F0 and l=5Fl=5FParent=
=5F0=5FFirstChild=5F0:IsA("BasePart") then
                    TP1(l=5Fl=5FParent=5F0=5FFirstChild=5F0.CFrame + Vecto=
r3.new(0, 1, 0))
                    task.wait(0.3)
                    local l=5FVirtualInputManager=5F2 =3D game:GetService(=
"VirtualInputManager")
                    l=5FVirtualInputManager=5F2:SendKeyEvent(true, Enum.Ke=
yCode.E, false, game)
                    task.wait(0.1)
                    l=5FVirtualInputManager=5F2:SendKeyEvent(false, Enum.K=
eyCode.E, false, game)
                end
            elseif =5FG.CollectBerryHop then
                Hop()
            end
        end
    end
end)
v485:AddToggle({
    Name =3D "Auto Farm Chest [ Tween ]",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v644)
        =5FG.FarmChest =3D v644
        StopTween(=5FG.FarmChest)
    end
})
spawn(function()
    while wait() do
        if =5FG.FarmChest then
            local l=5FLocalPlayer=5F9 =3D game:GetService("Players").Local=
Player
            local l=5FPosition=5F4 =3D (l=5FLocalPlayer=5F9.Character or l=
=5FLocalPlayer=5F9.CharacterAdded:Wait()):GetPivot().Position
            local l=5FTagged=5F2 =3D game:GetService("CollectionService"):=
GetTagged("=5FChestTagged")
            local l=5Fhuge=5F2 =3D math.huge
            local v649 =3D nil
            for v650 =3D 1, #l=5FTagged=5F2 do
                local v651 =3D l=5FTagged=5F2[v650]
                local l=5FMagnitude=5F5 =3D (v651:GetPivot().Position - l=
=5FPosition=5F4).Magnitude
                if not v651:GetAttribute("IsDisabled") and l=5FMagnitude=
=5F5 < l=5Fhuge=5F2 then
                    local l=5Fl=5FMagnitude=5F5=5F0 =3D l=5FMagnitude=5F5
                    v649 =3D v651
                    l=5Fhuge=5F2 =3D l=5Fl=5FMagnitude=5F5=5F0
                end
            end
            if v649 then
                local l=5FPosition=5F5 =3D v649.GetPivot(v649).Position
                local v655 =3D CFrame.new(l=5FPosition=5F5)
                topos(v655)
            end
        end
    end
end)
local ChestBypass =3D false

v485:AddToggle({
    Title =3D "Auto Farm Chest [ Bypass ]",
    Value =3D false,
    Callback =3D function(v)
        ChestBypass =3D v
    end
})

task.spawn(function()
    while task.wait() do
        if ChestBypass then
            local Players =3D game:GetService("Players")
            local LocalPlayer =3D Players.LocalPlayer
            local CollectionService =3D game:GetService("CollectionService=
")

            local character =3D LocalPlayer.Character or LocalPlayer.Chara=
cterAdded:Wait()
            local startTick =3D tick()

            while ChestBypass and (tick() - startTick) < 4 do
                character =3D LocalPlayer.Character or LocalPlayer.Charact=
erAdded:Wait()
                local charPos =3D character:GetPivot().Position
                local chests =3D CollectionService:GetTagged("=5FChestTagg=
ed")

                local closest, dist =3D nil, math.huge
                for i =3D 1, #chests do
                    local chest =3D chests[i]
                    if not chest:GetAttribute("IsDisabled") then
                        local d =3D (chest:GetPivot().Position - charPos).=
Magnitude
                        if d < dist then
                            dist =3D d
                            closest =3D chest
                        end
                    end
                end

                if closest then
                    character:PivotTo(CFrame.new(closest:GetPivot().Positi=
on))
                    task.wait(0.2)
                else
                    break
                end
            end

            if ChestBypass and LocalPlayer.Character then
                LocalPlayer.Character:BreakJoints()
                LocalPlayer.CharacterAdded:Wait()
            end
        end
    end
end)

local =5F =3D v485:AddSection({"Boss Farm"})
local v657 =3D v485:AddParagraph({Title =3D "Boss Spawn Status", Content =
=3D "Initializing..."})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if =5FG.SelectBoss and (game:GetService("ReplicatedStorage"):F=
indFirstChild(=5FG.SelectBoss) or game:GetService("Workspace").Enemies:Fin=
dFirstChild(=5FG.SelectBoss)) then
                v657:Set("Status: Boss Spawn    ")
            else
                v657:Set("Status: Boss Not Spawn    ")
            end
        end)
    end
end)
local v658 =3D {}
if World1 then
    v658 =3D {
        "The Gorilla King",
        "Bobby",
        "Yeti",
        "Mob Leader",
        "Vice Admiral",
        "Warden",
        "Chief Warden",
        "Swan",
        "Magma Admiral",
        "Fishman Lord",
        "Wysper",
        "Thunder God",
        "Cyborg",
        "Saber Expert"
    }
elseif not World2 then
    if World3 then
        v658 =3D {
            "",
            "Tyrant of the Skies",
            "Stone",
            "Island Empress",
            "Kilo Admiral",
            "Captain Elephant",
            "Beautiful Pirate",
            "rip=5Findra True Form",
            "Longma",
            "Soul Reaper",
            "Cake Queen"
        }
    end
else
    v658 =3D {
        "Diamond",
        "Jeremy",
        "Fajita",
        "Don Swan",
        "Smoke Admiral",
        "Cursed Captain",
        "Darkbeard",
        "Order",
        "Awakened Ice Admiral",
        "Tide Keeper"
    }
end
v485:AddDropdown({
    Name =3D "Boss List",
    Description =3D "",
    Options =3D v658,
    Default =3D v658[1],
    Callback =3D function(v659)
        =5FG.SelectBoss =3D v659
    end
})
v485:AddToggle({
    Name =3D "Auto Kill Boss Selected",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v660)
        =5FG.AutoBoss =3D v660
        StopTween(=5FG.AutoBoss)
    end
})
task.spawn(function()
    while task.wait() do
        if =5FG.AutoBoss and =5FG.SelectBoss then
            pcall(function()
                if not game:GetService("Workspace").Enemies:FindFirstChild=
(=5FG.SelectBoss) then
                    if game:GetService("ReplicatedStorage"):FindFirstChild=
(=5FG.SelectBoss) then
                        topos(game:GetService("ReplicatedStorage"):FindFir=
stChild(=5FG.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                else
                    for =5F, v662 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if v662.Name =3D=3D =5FG.SelectBoss and v662:FindF=
irstChild("Humanoid") and v662:FindFirstChild("HumanoidRootPart") and v662=
.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                v662.HumanoidRootPart.CanCollide =3D false=

                                v662.Humanoid.WalkSpeed =3D 0
                                v662.HumanoidRootPart.Size =3D Vector3.new=
(80, 80, 80)
                                topos(v662.HumanoidRootPart.CFrame * CFram=
e.new(0, 30, 0))
                                sethiddenproperty(game:GetService("Players=
").LocalPlayer, "SimulationRadius", math.huge)
                            until not =5FG.AutoBoss or not v662.Parent or =
v662.Humanoid.Health <=3D 0
                        end
                    end
                end
            end)
        end
    end
end)
local =5F =3D v485:AddSection({"Material"})
local v664 =3D {}
if not World1 then
    if World2 then
        v664 =3D {"Radioactive", "Mystic Droplet", "Magma Ore", "Leather",=
 "Ectoplasm", "Scrap Metal"}
    elseif World3 then
        v664 =3D {"Leather", "Scrap Metal", "Conjured Cocoa", "Dragon Scal=
e", "Gunpowder", "Fish Tail", "Mini Tusk"}
    end
else
    v664 =3D {"Magma Ore", "Angel Wings", "Leather", "Scrap Metal"}
end
function getConfigMaterial(v665)
    if v665 ~=3D "Radioactive" or not World2 then
        if v665 ~=3D "Mystic Droplet" or not World2 then
            if v665 =3D=3D "Magma Ore" and World1 then
                MaterialMon =3D {"Military Spy"}
                MaterialPos =3D CFrame.new(-5850.28, 77.28, 8848.67)
            elseif v665 ~=3D "Magma Ore" or not World2 then
                if v665 ~=3D "Angel Wings" or not World1 then
                    if v665 ~=3D "Leather" or not World1 then
                        if v665 ~=3D "Leather" or not World2 then
                            if v665 ~=3D "Leather" or not World3 then
                                if v665 ~=3D "Ectoplasm" or not World2 the=
n
                                    if v665 ~=3D "Scrap Metal" or not Worl=
d1 then
                                        if v665 =3D=3D "Scrap Metal" and W=
orld2 then
                                            MaterialMon =3D {"Mercenary"}
                                            MaterialPos =3D CFrame.new(-97=
2.3, 73.04, 1419.29)
                                        elseif v665 =3D=3D "Scrap Metal" a=
nd World3 then
                                            MaterialMon =3D {"Pirate Milli=
onaire"}
                                            MaterialPos =3D CFrame.new(-28=
9.63, 43.82, 5583.66)
                                        elseif v665 ~=3D "Conjured Cocoa" =
or not World3 then
                                            if v665 =3D=3D "Dragon Scale" =
and World3 then
                                                MaterialMon =3D {"Dragon C=
rew Warrior"}
                                                MaterialPos =3D CFrame.new=
(5824.06, 51.38, -1106.69)
                                            elseif v665 =3D=3D "Gunpowder"=
 and World3 then
                                                MaterialMon =3D {"Pistol B=
illionaire"}
                                                MaterialPos =3D CFrame.new=
(-379.61, 73.84, 5928.52)
                                            elseif v665 ~=3D "Fish Tail" o=
r not World3 then
                                                if v665 =3D=3D "Mini Tusk"=
 and World3 then
                                                    MaterialMon =3D {"Mith=
ological Pirate"}
                                                    MaterialPos =3D CFrame=
.new(-13516.04, 469.81, -6899.16)
                                                end
                                            else
                                                MaterialMon =3D {"Fishman =
Captain"}
                                                MaterialPos =3D CFrame.new=
(-10961.01, 331.79, -8914.29)
                                            end
                                        else
                                            MaterialMon =3D {"Chocolate Ba=
r Battler"}
                                            MaterialPos =3D CFrame.new(744=
.79, 24.76, -12637.72)
                                        end
                                    else
                                        MaterialMon =3D {"Brute"}
                                        MaterialPos =3D CFrame.new(-1132.4=
2, 14.84, 4293.3)
                                    end
                                else
                                    MaterialMon =3D {"Ship Deckhand", "Shi=
p Engineer", "Ship Steward", "Ship Officer"}
                                    MaterialPos =3D CFrame.new(911.35, 125=
.95, 33159.53)
                                end
                            else
                                MaterialMon =3D {"Jungle Pirate"}
                                MaterialPos =3D CFrame.new(-11975.78, 331.=
77, -10620.03)
                            end
                        else
                            MaterialMon =3D {"Marine Captain"}
                            MaterialPos =3D CFrame.new(-2010.5, 73, -3326.=
62)
                        end
                    else
                        MaterialMon =3D {"Pirate"}
                        MaterialPos =3D CFrame.new(-1211.87, 4.78, 3916.83=
)
                    end
                else
                    MaterialMon =3D {"Royal Soldier"}
                    MaterialPos =3D CFrame.new(-7827.15, 5606.91, -1705.58=
)
                end
            else
                MaterialMon =3D {"Lava Pirate"}
                MaterialPos =3D CFrame.new(-5234.6, 51.95, -4732.27)
            end
        else
            MaterialMon =3D {"Water Fighter"}
            MaterialPos =3D CFrame.new(-3352.9, 285.01, -10534.84)
        end
    else
        MaterialMon =3D {"Factory Staff"}
        MaterialPos =3D CFrame.new(-507.78, 73, -126.45)
    end
end
v485:AddDropdown({
    Name =3D "Material List",
    Description =3D "",
    Options =3D v664,
    Default =3D v664[1],
    Callback =3D function(v666)
        =5FG.SelectMaterial =3D v666
    end
})
v485:AddToggle({
    Name =3D "Auto Farm Material",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v667)
        =5FG.AutoFarmMaterial =3D v667
        StopTween(=5FG.AutoFarmMaterial)
    end
})
task.spawn(function()
    while task.wait(0.2) do
        if =5FG.AutoFarmMaterial and =5FG.SelectMaterial then
            pcall(function()
                getConfigMaterial(=5FG.SelectMaterial)
                for =5F, v669 in pairs(MaterialMon) do
                    if workspace.Enemies:FindFirstChild(v669) then
                        for =5F, v671 in pairs(workspace.Enemies:GetChildr=
en()) do
                            if v671.Name =3D=3D v669 and v671:FindFirstChi=
ld("Humanoid") and v671:FindFirstChild("HumanoidRootPart") and v671.Humano=
id.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    PosMon =3D v671.HumanoidRootPart.CFram=
e
                                    MonFarm =3D v671.Name
                                    topos(v671.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                until not =5FG.AutoFarmMaterial or not v67=
1.Parent or v671.Humanoid.Health <=3D 0
                            end
                        end
                    else
                        UnEquipWeapon(=5FG.SelectWeapon)
                        if =5FG.SelectMaterial =3D=3D "Ectoplasm" and (Mat=
erialPos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Po=
sition).Magnitude > 18000 then
                            game.ReplicatedStorage.Remotes.CommF=5F:Invoke=
Server("requestEntrance", Vector3.new(923.21, 126.97, 32852.83))
                        end
                        topos(MaterialPos)
                    end
                end
            end)
        end
    end
end)

local =5F =3D v486:AddSection({"Auto Fishing"})
v486:AddToggle({
    Title =3D "Auto Fishing",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v673)
        =5FG.AutoFishing =3D v673
    end
})
local =5F =3D workspace
local l=5FLocalPlayer=5F10 =3D game.Players.LocalPlayer
local l=5FFishReplicated=5F0 =3D game.ReplicatedStorage:WaitForChild("Fish=
Replicated")
local l=5FFishingRequest=5F0 =3D l=5FFishReplicated=5F0:WaitForChild("Fish=
ingRequest")
local l=5FMaxLaunchDistance=5F0 =3D require(l=5FFishReplicated=5F0.Fishing=
Client.Config).Rod.MaxLaunchDistance
local v679 =3D require(game.ReplicatedStorage.Util.GetWaterHeightAtLocatio=
n)
task.spawn(function()
    while task.wait() do
        if =5FG.AutoFishing then
            local l=5FCharacter=5F6 =3D l=5FLocalPlayer=5F10.Character
            local v681 =3D l=5FCharacter=5F6 and l=5FCharacter=5F6:FindFir=
stChild("HumanoidRootPart")
            local v682 =3D l=5FCharacter=5F6 and l=5FCharacter=5F6:FindFir=
stChildOfClass("Tool")
            if =5FG.SelectedRod and (not v682 or v682.Name ~=3D =5FG.Selec=
tedRod) then
                local l=5FFirstChild=5F2 =3D l=5FLocalPlayer=5F10.Backpack=
:FindFirstChild(=5FG.SelectedRod)
                if l=5FFirstChild=5F2 then
                    l=5FLocalPlayer=5F10.Character.Humanoid:EquipTool(l=5F=
FirstChild=5F2)
                    v682 =3D l=5FFirstChild=5F2
                end
            end
            if l=5FCharacter=5F6 and v681 and v682 then
                local v684 =3D v679(v681.Position)
                local =5F, v686 =3D workspace:FindPartOnRayWithIgnoreList(=
Ray.new(l=5FCharacter=5F6.Head.Position, v681.CFrame.LookVector * l=5FMaxL=
aunchDistance=5F0), {l=5FCharacter=5F6, workspace.Characters, workspace.En=
emies})
                local v687 =3D v686 and Vector3.new(v686.X, math.max(v686.=
Y, v684), v686.Z)
                local v688 =3D v682.GetAttribute(v682, "State")
                local v689 =3D v682.GetAttribute(v682, "ServerState")
                if v688 ~=3D "ReeledIn" and v689 ~=3D "ReeledIn" or not v6=
87 then
                    if v689 =3D=3D "Biting" then
                        l=5FFishingRequest=5F0:InvokeServer("Catching", tr=
ue)
                        task.wait(0.1)
                        l=5FFishingRequest=5F0:InvokeServer("Catch", 1)
                    end
                else
                    l=5FFishingRequest=5F0:InvokeServer("StartCasting")
                    task.wait()
                    l=5FFishingRequest=5F0:InvokeServer("CastLineAtLocatio=
n", v687, 100, true)
                end
            end
        end
    end
end)
v486:AddDropdown({
    Name =3D "Select Fishing Lure",
    Description =3D "",
    Options =3D {"Basic Bait", "Kelp Bait", "Good Bait", "Abyssal Bait", "=
Frozen Bait", "Epic Bait", "Carnivore Bait"},
    Default =3D "Basic Bait",
    Callback =3D function(v690)
        =5FG.SelectedBait =3D v690
        l=5FFishingRequest=5F0:InvokeServer("SelectBait", v690)
    end
})
v486:AddDropdown({
    Name =3D "Select Fishing Rod",
    Description =3D "",
    Options =3D {"Fishing Rod", "Gold Rod", "Shark Rod", "Shell Rod", "Tre=
asure Rod"},
    Default =3D "Fishing Rod",
    Callback =3D function(v691)
        =5FG.SelectedRod =3D v691
    end
})
if World1 then
    local =5F =3D v487:AddSection({"Quest Sea 1"})
    v487:AddToggle({
        Name =3D "AutoSecondSea",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v693)
            =5FG.AutoSecondSea =3D v693
            StopTween(=5FG.AutoSecondSea)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.AutoSecondSea then
                pcall(function()
                    if game.Players.LocalPlayer.Data.Level.Value >=3D 700 =
and World1 then
                        =5FG.AutoFarm =3D false
                        if game.Workspace.Map.Ice.Door.CanCollide =3D=3D t=
rue and game.Workspace.Map.Ice.Door.Transparency =3D=3D 0 then
                            repeat
                                wait()
                                topos(CFrame.new(4851.8720703125, 5.651434=
8983765, 718.47094726563))
                            until (CFrame.new(4851.8720703125, 5.651434898=
3765, 718.47094726563).Position - game:GetService("Players").LocalPlayer.C=
haracter.HumanoidRootPart.Position).Magnitude <=3D 3 or not =5FG.AutoSecon=
dSea
                            wait(1)
                            game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("DressrosaQuestProgress", "Detective")
                            EquipWeapon("Key")
                            local v694 =3D CFrame.new(1347.7124, 37.375160=
2, -1325.6488)
                            repeat
                                wait()
                                topos(v694)
                            until (v694.Position - game:GetService("Player=
s").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <=3D 3 or n=
ot =5FG.AutoSecondSea
                            wait(3)
                        elseif game.Workspace.Map.Ice.Door.CanCollide ~=3D=
 false or game.Workspace.Map.Ice.Door.Transparency ~=3D 1 then
                            game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("TravelDressrosa")
                        elseif game:GetService("Workspace").Enemies:FindFi=
rstChild("Ice Admiral") then
                            for =5F, v696 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v696.Name =3D=3D "Ice Admiral" and v696=
.Humanoid.Health > 0 then
                                    repeat
                                        wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v696.HumanoidRootPart.CanCollide =
=3D false
                                        StartBring =3D true
                                        v696.HumanoidRootPart.Size =3D Vec=
tor3.new(60, 60, 60)
                                        v696.HumanoidRootPart.Transparency=
 =3D 1
                                        topos(v696.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        game:GetService("VirtualUser"):Cap=
tureController()
                                        game:GetService("VirtualUser"):But=
ton1Down(Vector2.new(1280, 870), workspace.CurrentCamera.CFrame)
                                    until v696.Humanoid.Health <=3D 0 or n=
ot v696.Parent or not =5FG.AutoSecondSea
                                    game:GetService("ReplicatedStorage").R=
emotes.CommF=5F:InvokeServer("TravelDressrosa")
                                end
                            end
                        else
                            topos(CFrame.new(1347.7124, 37.3751602, -1325.=
6488))
                        end
                    end
                end)
            end
        end
    end)
    local =5F =3D v487:AddSection({"Boss Greybeard"})
    v487:AddToggle({
        Name =3D "Kill Greybeard",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v698)
            =5FG.Greybeard =3D v698
            StopTween(=5FG.Greybeard)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.Greybeard then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild=
("Greybeard") then
                        for =5F, v700 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v700.Name =3D=3D "Greybeard" and v700:FindF=
irstChild("Humanoid") and v700:FindFirstChild("HumanoidRootPart") and v700=
.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v700.HumanoidRootPart.CanCollide =3D f=
alse
                                    v700.Humanoid.WalkSpeed =3D 0
                                    v700.HumanoidRootPart.Size =3D Vector3=
.new(50, 50, 50)
                                    topos(v700.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    game:GetService("VirtualUser"):Capture=
Controller()
                                    game:GetService("VirtualUser"):Button1=
Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game.Players.LocalPl=
ayer, "SimulationRadius", math.huge)
                                until not =5FG.Greybeard or not v700.Paren=
t or v700.Humanoid.Health <=3D 0
                            end
                        end
                    else
                        topos(CFrame.new(-5023.38330078125, 28.65203285217=
285, 4332.3818359375))
                        if not game:GetService("ReplicatedStorage"):FindFi=
rstChild("Greybeard") then
                            if =5FG.Greybeardhop then
                                Hop()
                            end
                        else
                            topos(game:GetService("ReplicatedStorage"):Fin=
dFirstChild("Greybeard").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                        end
                    end
                end)
            end
        end
    end)
    local =5F =3D v487:AddSection({"Quest Sword"})
    v487:AddToggle({
        Name =3D "Auto Get Saber",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v702)
            =5FG.AutoSaber =3D v702
            StopTween(=5FG.AutoSaber)
        end
    })
    spawn(function()
        while task.wait() do
            if =5FG.AutoSaber and game.Players.LocalPlayer.Data.Level.Valu=
e >=3D 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.=
Transparency ~=3D 0 then
                        if game:GetService("Workspace").Enemies:FindFirstC=
hild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChil=
d("Saber Expert") then
                            for =5F, v704 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v704:FindFirstChild("Humanoid") and v70=
4:FindFirstChild("HumanoidRootPart") and v704.Humanoid.Health > 0 and v704=
.Name =3D=3D "Saber Expert" then
                                    repeat
                                        task.wait()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        topos(v704.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        v704.HumanoidRootPart.Size =3D Vec=
tor3.new(60, 60, 60)
                                        v704.HumanoidRootPart.Transparency=
 =3D 1
                                        v704.Humanoid.JumpPower =3D 0
                                        v704.Humanoid.WalkSpeed =3D 0
                                        v704.HumanoidRootPart.CanCollide =
=3D false
                                        FarmPos =3D v704.HumanoidRootPart.=
CFrame
                                        MonFarm =3D v704.Name
                                        game:GetService("VirtualUser"):Cap=
tureController()
                                        game:GetService("VirtualUser"):But=
ton1Down(Vector2.new(1280, 672), workspace.CurrentCamera.CFrame)
                                    until v704.Humanoid.Health <=3D 0 or n=
ot =5FG.AutoSaber
                                    if v704.Humanoid.Health <=3D 0 then
                                        game:GetService("ReplicatedStorage=
").Remotes.CommF=5F:InvokeServer("ProQuestProgress", "PlaceRelic")
                                    end
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Map.Jungle.QuestPl=
ates.Door.Transparency =3D=3D 0 then
                        if (CFrame.new(-1612.55884, 36.9774132, 148.719543=
, 0.37091279, 3.0717151E-9, -0.928667724, 3.97099491E-8, 1, 1.91679348E-8,=
 0.928667724, -4.39869794E-8, 0.37091279).Position - game.Players.LocalPla=
yer.Character.HumanoidRootPart.Position).Magnitude > 100 then
                            topos(CFrame.new(-1612.55884, 36.9774132, 148.=
719543, 0.37091279, 3.0717151E-9, -0.928667724, 3.97099491E-8, 1, 1.916793=
48E-8, 0.928667724, -4.39869794E-8, 0.37091279))
                        else
                            topos(game:GetService("Players").LocalPlayer.C=
haracter.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.CFrame =3D game:GetService("Workspace").Map.Jungle.QuestPlates.Plate=
1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.CFrame =3D game:GetService("Workspace").Map.Jungle.QuestPlates.Plate=
2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.CFrame =3D game:GetService("Workspace").Map.Jungle.QuestPlates.Plate=
3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.CFrame =3D game:GetService("Workspace").Map.Jungle.QuestPlates.Plate=
4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRoo=
tPart.CFrame =3D game:GetService("Workspace").Map.Jungle.QuestPlates.Plate=
5.Button.CFrame
                            wait(1)
                        end
                    elseif game:GetService("Workspace").Map.Desert.Burn.Pa=
rt.Transparency =3D=3D 0 then
                        if game:GetService("Players").LocalPlayer.Backpack=
:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstCh=
ild("Torch") then
                            EquipWeapon("Torch")
                            topos(CFrame.new(1114.61475, 5.04679728, 4350.=
22803, -0.648466587, -1.28799094E-9, 0.761243105, -5.70652914E-10, 1, 1.20=
584542E-9, -0.761243105, 3.47544882E-10, -0.648466587))
                        else
                            topos(CFrame.new(-1610.00757, 11.5049858, 164.=
001587, 0.984807551, -0.167722285, -0.0449818149, 0.17364943, 0.951244235,=
 0.254912198, 3.42372805E-5, -0.258850515, 0.965917408))
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.Co=
mmF=5F:InvokeServer("ProQuestProgress", "SickMan") ~=3D 0 then
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("ProQuestProgress", "GetCup")
                        wait(0.5)
                        EquipWeapon("Cup")
                        wait(0.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players")=
.LocalPlayer.Character.Cup)
                        wait(0)
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("ProQuestProgress", "SickMan")
                    elseif game:GetService("ReplicatedStorage").Remotes.Co=
mmF=5F:InvokeServer("ProQuestProgress", "RichSon") =3D=3D "RichSon" then
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("ProQuestProgress", "RichSon")
                    elseif game:GetService("ReplicatedStorage").Remotes.Co=
mmF=5F:InvokeServer("ProQuestProgress", "RichSon") ~=3D 0 then
                        if game:GetService("ReplicatedStorage").Remotes.Co=
mmF=5F:InvokeServer("ProQuestProgress", "RichSon") =3D=3D 1 then
                            game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("ProQuestProgress", "RichSon")
                            wait(0.5)
                            EquipWeapon("Relic")
                            wait(0.5)
                            topos(CFrame.new(-1404.91504, 29.9773273, 3.80=
598116, 0.876514494, 5.66906877E-9, 0.481375456, 2.53851997E-8, 1, -5.7999=
5607E-8, -0.481375456, 6.30572643E-8, 0.876514494))
                        end
                    elseif game:GetService("Workspace").Enemies:FindFirstC=
hild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild(=
"Mob Leader") then
                        topos(CFrame.new(-2967.59521, -4.91089821, 5328.70=
703, 0.342208564, -0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0=
.0150796166, -0.939287126, 0.0184739735, 0.342634559))
                        for =5F, v706 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v706.Name =3D=3D "Mob Leader" then
                                if game:GetService("Workspace").Enemies:Fi=
ndFirstChild("Mob Leader") and v706:FindFirstChild("Humanoid") and v706:Fi=
ndFirstChild("HumanoidRootPart") and v706.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v706.HumanoidRootPart.CanCollide =
=3D false
                                        v706.Humanoid.WalkSpeed =3D 0
                                        v706.HumanoidRootPart.Size =3D Vec=
tor3.new(80, 80, 80)
                                        topos(v706.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        game:GetService("VirtualUser"):Cap=
tureController()
                                        game:GetService("VirtualUser"):But=
ton1Down(Vector2.new(1280, 672))
                                        sethiddenproperty(game:GetService(=
"Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until v706.Humanoid.Health <=3D 0 or n=
ot =5FG.AutoSaber
                                end
                                if game:GetService("ReplicatedStorage"):Fi=
ndFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                    topos(game:GetService("ReplicatedStora=
ge"):FindFirstChild("Mob Leader [Lv. 120] [Boss]").HumanoidRootPart.CFrame=
 * Farm=5FMode)
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)
    v487:AddToggle({
        Name =3D "Auto Get Sword Pole",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v707)
            =5FG.Autopole =3D v707
            StopTween(=5FG.Autopole)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.Autopole then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild=
("Thunder God") then
                        for =5F, v709 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v709.Name =3D=3D "Thunder God" and v709:Fin=
dFirstChild("Humanoid") and v709:FindFirstChild("HumanoidRootPart") and v7=
09.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v709.HumanoidRootPart.CanCollide =3D f=
alse
                                    StartBring =3D true
                                    v709.Humanoid.WalkSpeed =3D 0
                                    v709.HumanoidRootPart.Size =3D Vector3=
.new(80, 80, 80)
                                    topos(v709.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService("Pla=
yers").LocalPlayer, "SimulationRadius", math.huge)
                                until not =5FG.Autopole or not v709.Parent=
 or v709.Humanoid.Health <=3D 0
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstC=
hild("Thunder God") then
                        TP1(game:GetService("ReplicatedStorage"):FindFirst=
Child("Thunder God").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v487:AddToggle({
        Name =3D "Auto Get Sword Saw",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v710)
            =5FG.Autosaw =3D v710
            StopTween(=5FG.Autosaw)
        end
    })
    local v711 =3D CFrame.new(-690.33081054688, 15.09425163269, 1582.23803=
71094)
    do
        local l=5Fv711=5F0 =3D v711
        spawn(function()
            while wait() do
                if =5FG.Autosaw then
                    pcall(function()
                        if not game:GetService("Workspace").Enemies:FindFi=
rstChild("The Saw") then
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.Hum=
anoidRootPart.Position - l=5Fv711=5F0.Position).Magnitude > 1500 then
                                    BTP(l=5Fv711=5F0)
                                elseif (game.Players.LocalPlayer.Character=
.HumanoidRootPart.Position - l=5Fv711=5F0.Position).Magnitude < 1500 then
                                    topos(l=5Fv711=5F0)
                                end
                            else
                                topos(l=5Fv711=5F0)
                            end
                            EquipWeapon(=5FG.SelectWeapon)
                            topos(CFrame.new(-690.33081054688, 15.09425163=
269, 1582.2380371094))
                            if game:GetService("ReplicatedStorage"):FindFi=
rstChild("The Saw") then
                                topos(game:GetService("ReplicatedStorage")=
:FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2, 40, 2))=

                            end
                        else
                            for =5F, v714 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v714.Name =3D=3D "The Saw" and v714:Fin=
dFirstChild("Humanoid") and v714:FindFirstChild("HumanoidRootPart") and v7=
14.Humanoid.Health > 0 then
                                    repeat
                                        task.wait(=5FG.FastAttackDelay)
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v714.HumanoidRootPart.CanCollide =
=3D false
                                        v714.Humanoid.WalkSpeed =3D 0
                                        v714.HumanoidRootPart.Size =3D Vec=
tor3.new(50, 50, 50)
                                        topos(v714.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        AttackNoCD()
                                    until not =5FG.Autosaw or not v714.Par=
ent or v714.Humanoid.Health <=3D 0
                                end
                            end
                        end
                    end)
                end
            end
        end)
        v487:AddToggle({
            Name =3D "Auto Get Sword Wardens",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v715)
                =5FG.ChiefWarden =3D v715
                StopTween(=5FG.ChiefWarden)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.ChiefWarden then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstC=
hild("Chief Warden") then
                            for =5F, v717 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v717.Name =3D=3D "Chief Warden" and v71=
7:FindFirstChild("Humanoid") and v717:FindFirstChild("HumanoidRootPart") a=
nd v717.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v717.HumanoidRootPart.CanCollide =
=3D false
                                        StartBring =3D true
                                        v717.Humanoid.WalkSpeed =3D 0
                                        v717.HumanoidRootPart.Size =3D Vec=
tor3.new(80, 80, 80)
                                        topos(v717.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService(=
"Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until not =5FG.ChiefWarden or not v717=
.Parent or v717.Humanoid.Health <=3D 0
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFi=
rstChild("Chief Warden") then
                            TP1(game:GetService("ReplicatedStorage"):FindF=
irstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                        end
                    end)
                end
            end
        end)
        v487:AddToggle({
            Name =3D "Auto Get Sword Trident",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v718)
                =5FG.Trident =3D v718
                StopTween(=5FG.Trident)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.Trident then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstC=
hild("Fishman Lord") then
                            for =5F, v720 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v720.Name =3D=3D "Fishman Lord" and v72=
0:FindFirstChild("Humanoid") and v720:FindFirstChild("HumanoidRootPart") a=
nd v720.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v720.HumanoidRootPart.CanCollide =
=3D false
                                        StartBring =3D true
                                        v720.Humanoid.WalkSpeed =3D 0
                                        v720.HumanoidRootPart.Size =3D Vec=
tor3.new(80, 80, 80)
                                        topos(v720.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService(=
"Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until not =5FG.Trident or not v720.Par=
ent or v720.Humanoid.Health <=3D 0
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFi=
rstChild("Fishman Lord") then
                            TP1(game:GetService("ReplicatedStorage"):FindF=
irstChild("Fishman Lord").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                        end
                    end)
                end
            end
        end)
    end
end
if World2 then
    local =5F =3D v487:AddSection({"Quest Sea 2"})
    v487:AddToggle({
        Name =3D "Auto Quest Sea Bartilo",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v722)
            =5FG.AutoBartilo =3D v722
            StopTween(=5FG.AutoBartilo)
        end
    })
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if =5FG.AutoBartilo then
                    if game:GetService("Players").LocalPlayer.Data.Level.V=
alue >=3D 800 and game:GetService("ReplicatedStorage").Remotes.CommF=5F:In=
vokeServer("BartiloQuestProgress", "Bartilo") =3D=3D 0 then
                        if not string.find(game:GetService("Players").Loca=
lPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate=
s") or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Ma=
in.Quest.Container.QuestTitle.Title.Text, "50") or game:GetService("Player=
s").LocalPlayer.PlayerGui.Main.Quest.Visible ~=3D true then
                            repeat
                                topos(CFrame.new(-456.28952, 73.0200958, 2=
99.895966))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-456.28952, 73.0200958, 299.895966)).Magnitude <=3D 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("StartQuest", "BartiloQuest", 1)
                        elseif game:GetService("Workspace").Enemies:FindFi=
rstChild("Swan Pirate") then
                            Ms =3D "Swan Pirate"
                            for =5F, v724 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                do
                                    local l=5Fv724=5F0 =3D v724
                                    if l=5Fv724=5F0.Name =3D=3D Ms then
                                        pcall(function()
                                            repeat
                                                task.wait()
                                                sethiddenproperty(game:Get=
Service("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                EquipWeapon(=5FG.SelectWea=
pon)
                                                AutoHaki()
                                                l=5Fv724=5F0.HumanoidRootP=
art.Transparency =3D 1
                                                l=5Fv724=5F0.HumanoidRootP=
art.CanCollide =3D false
                                                l=5Fv724=5F0.HumanoidRootP=
art.Size =3D Vector3.new(50, 50, 50)
                                                topos(l=5Fv724=5F0.Humanoi=
dRootPart.CFrame * CFrame.new(0, 30, 0))
                                                PosMonBarto =3D l=5Fv724=
=5F0.HumanoidRootPart.CFrame
                                                game:GetService("VirtualUs=
er"):CaptureController()
                                                game:GetService("VirtualUs=
er"):Button1Down(Vector2.new(1280, 672))
                                                StartBring =3D true
                                            until not l=5Fv724=5F0.Parent =
or l=5Fv724=5F0.Humanoid.Health <=3D 0 or =5FG.AutoBartilo =3D=3D false or=
 game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible =3D=
=3D false
                                            StartBring =3D false
                                        end)
                                    end
                                end
                            end
                        else
                            repeat
                                topos(CFrame.new(932.624451, 156.106079, 1=
180.27466, -0.973085582, 4.55137119E-8, -0.230443969, 2.67024713E-8, 1, 8.=
47491108E-8, 0.230443969, 7.63147128E-8, -0.973085582))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
932.624451, 156.106079, 1180.27466, -0.973085582, 4.55137119E-8, -0.230443=
969, 2.67024713E-8, 1, 8.47491108E-8, 0.230443969, 7.63147128E-8, -0.97308=
5582)).Magnitude <=3D 10
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Lev=
el.Value < 800 or game:GetService("ReplicatedStorage").Remotes.CommF=5F:In=
vokeServer("BartiloQuestProgress", "Bartilo") ~=3D 1 then
                        if game:GetService("Players").LocalPlayer.Data.Lev=
el.Value >=3D 800 and game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("BartiloQuestProgress", "Bartilo") =3D=3D 2 then
                            repeat
                                topos(CFrame.new(-1850.49329, 13.1789551, =
1750.89685))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-1850.49329, 13.1789551, 1750.89685)).Magnitude <=3D 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1858.87305, 19.3777466, =
1712.01807))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-1858.87305, 19.3777466, 1712.01807)).Magnitude <=3D 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1803.94324, 16.5789185, =
1750.89685))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-1803.94324, 16.5789185, 1750.89685)).Magnitude <=3D 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1858.55835, 16.8604317, =
1724.79541))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-1858.55835, 16.8604317, 1724.79541)).Magnitude <=3D 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1869.54224, 15.987854, 1=
681.00659))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-1869.54224, 15.987854, 1681.00659)).Magnitude <=3D 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1800.0979, 16.4978027, 1=
684.52368))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-1800.0979, 16.4978027, 1684.52368)).Magnitude <=3D 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1819.26343, 14.795166, 1=
717.90625))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-1819.26343, 14.795166, 1717.90625)).Magnitude <=3D 10
                            wait(1)
                            repeat
                                topos(CFrame.new(-1813.51843, 14.8604736, =
1724.79541))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-1813.51843, 14.8604736, 1724.79541)).Magnitude <=3D 10
                        end
                    elseif not game:GetService("Workspace").Enemies:FindFi=
rstChild("Jeremy") then
                        if not game:GetService("ReplicatedStorage"):FindFi=
rstChild("Jeremy") then
                            repeat
                                topos(CFrame.new(2099.88159, 448.931, 648.=
997375))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
2099.88159, 448.931, 648.997375)).Magnitude <=3D 10
                        else
                            repeat
                                topos(CFrame.new(-456.28952, 73.0200958, 2=
99.895966))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
-456.28952, 73.0200958, 299.895966)).Magnitude <=3D 10
                            wait(1.1)
                            game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("BartiloQuestProgress", "Bartilo")
                            wait(1)
                            repeat
                                topos(CFrame.new(2099.88159, 448.931, 648.=
997375))
                                wait()
                            until not =5FG.AutoBartilo or (game:GetService=
("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(=
2099.88159, 448.931, 648.997375)).Magnitude <=3D 10
                            wait(2)
                        end
                    else
                        Ms =3D "Jeremy"
                        for =5F, v727 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v727.Name =3D=3D Ms then
                                OldCFrameBartlio =3D v727.HumanoidRootPart=
.CFrame
                                repeat
                                    task.wait()
                                    sethiddenproperty(game:GetService("Pla=
yers").LocalPlayer, "SimulationRadius", math.huge)
                                    EquipWeapon(=5FG.SelectWeapon)
                                    AutoHaki()
                                    v727.HumanoidRootPart.Transparency =3D=
 1
                                    v727.HumanoidRootPart.CanCollide =3D f=
alse
                                    v727.HumanoidRootPart.Size =3D Vector3=
.new(50, 50, 50)
                                    v727.HumanoidRootPart.CFrame =3D OldCF=
rameBartlio
                                    topos(v727.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    game:GetService("VirtualUser"):Capture=
Controller()
                                    game:GetService("VirtualUser"):Button1=
Down(Vector2.new(1280, 672))
                                    sethiddenproperty(game:GetService("Pla=
yers").LocalPlayer, "SimulationRadius", math.huge)
                                until not v727.Parent or v727.Humanoid.Hea=
lth <=3D 0 or =5FG.AutoBartilo =3D=3D false
                            end
                        end
                    end
                end
            end
        end)
    end)
    v487:AddToggle({
        Name =3D "Auto Quest Sea 3",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v728)
            =5FG.ThirdSea =3D v728
            StopTween(=5FG.ThirdSea)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.ThirdSea then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.Data.Level.V=
alue >=3D 1500 and World2 then
                        =5FG.AutoFarm =3D false
                        if game:GetService("ReplicatedStorage").Remotes.Co=
mmF=5F:InvokeServer("ZQuestProgress", "General") =3D=3D 0 then
                            topos(CFrame.new(-1926.3221435547, 12.81985187=
5305, 1738.3092041016))
                            if (CFrame.new(-1926.3221435547, 12.8198518753=
05, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Cha=
racter.HumanoidRootPart.Position).Magnitude <=3D 10 then
                                wait(1.5)
                                game:GetService("ReplicatedStorage").Remot=
es.CommF=5F:InvokeServer("ZQuestProgress", "Begin")
                            end
                            wait(1.8)
                            if not game:GetService("Workspace").Enemies:Fi=
ndFirstChild("rip=5Findra") then
                                if not game:GetService("Workspace").Enemie=
s:FindFirstChild("rip=5Findra") and (CFrame.new(-26880.93359375, 22.848554=
611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer=
.Character.HumanoidRootPart.Position).Magnitude <=3D 1000 then
                                    TP1(CFrame.new(-26880.93359375, 22.848=
554611206, 473.18951416016))
                                end
                            else
                                for =5F, v730 in pairs(game:GetService("Wo=
rkspace").Enemies:GetChildren()) do
                                    if v730.Name =3D=3D "rip=5Findra" then=

                                        OldCFrameThird =3D v730.HumanoidRo=
otPart.CFrame
                                        repeat
                                            task.wait()
                                            AutoHaki()
                                            EquipWeapon(=5FG.SelectWeapon)=

                                            topos(v730.HumanoidRootPart.CF=
rame * CFrame.new(0, 30, 0))
                                            v730.HumanoidRootPart.CFrame =
=3D OldCFrameThird
                                            v730.HumanoidRootPart.Size =3D=
 Vector3.new(50, 50, 50)
                                            v730.HumanoidRootPart.CanColli=
de =3D false
                                            StartBring =3D true
                                            v730.Humanoid.WalkSpeed =3D 0
                                            game:GetService("ReplicatedSto=
rage").Remotes.CommF=5F:InvokeServer("TravelZou")
                                            sethiddenproperty(game:GetServ=
ice("Players").LocalPlayer, "SimulationRadius", math.huge)
                                        until =5FG.ThirdSea =3D=3D false o=
r v730.Humanoid.Health <=3D 0 or not v730.Parent
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)

    local =5F =3D v487:AddSection({"Boss Dark Beard"})
    v487:AddToggle({
        Name =3D "Auto Kill Dark Beard",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v736)
            =5FG.AutoDarkBoss =3D v736
            StopTween(=5FG.AutoDarkBoss)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.AutoDarkBoss then
                pcall(function()
                    if not game:GetService("Workspace").Enemies:FindFirstC=
hild("Darkbeard") then
                        NeedAttacking =3D true
                        if game:GetService("ReplicatedStorage"):FindFirstC=
hild("Darkbeard") then
                            topos(game:GetService("ReplicatedStorage"):Fin=
dFirstChild("Darkbeard").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                        end
                    else
                        for =5F, v738 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v738.Name =3D=3D "Darkbeard" and v738:FindF=
irstChild("Humanoid") and v738:FindFirstChild("HumanoidRootPart") and v738=
.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    NeedAttacking =3D true
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v738.HumanoidRootPart.CanCollide =3D f=
alse
                                    v738.Humanoid.WalkSpeed =3D 0
                                    topos(v738.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService("Pla=
yers").LocalPlayer, "SimulationRadius", math.huge)
                                until not =5FG.AutoDarkBoss or not v738.Pa=
rent or v738.Humanoid.Health <=3D 0
                            end
                        end
                    end
                end)
            end
        end
    end)
    v487:AddToggle({
        Name =3D "Auto Kill Cursed Captain",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v739)
            =5FG.CursedCaptain =3D v739
            StopTween(=5FG.CursedCaptain)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.CursedCaptain then
                pcall(function()
                    if not game:GetService("Workspace").Enemies:FindFirstC=
hild("Cursed Captain") then
                        NeedAttacking =3D true
                        if (Vector3.new(911.35827636719, 125.95812988281, =
33159.5390625) - game:GetService("Players").LocalPlayer.Character.Humanoid=
RootPart.Position).Magnitude <=3D 18000 and game:GetService("ReplicatedSto=
rage"):FindFirstChild("Cursed Captain") then
                            topos(game:GetService("ReplicatedStorage"):Fin=
dFirstChild("Cursed Captain").HumanoidRootPart.CFrame * CFrame.new(5, 10, =
2))
                        end
                    else
                        for =5F, v741 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v741.Name =3D=3D "Cursed Captain" and v741:=
FindFirstChild("Humanoid") and v741:FindFirstChild("HumanoidRootPart") and=
 v741.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    NeedAttacking =3D true
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v741.HumanoidRootPart.CanCollide =3D f=
alse
                                    v741.Humanoid.WalkSpeed =3D 0
                                    topos(v741.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService("Pla=
yers").LocalPlayer, "SimulationRadius", math.huge)
                                until not =5FG.CursedCaptain or not v741.P=
arent or v741.Humanoid.Health <=3D 0
                            end
                        end
                    end
                end)
            end
        end
    end)
    local =5F =3D v487:AddSection({"Auto Buy Haki  "})
    v487:AddToggle({
        Name =3D "Auto Buy Haki Colors",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v743)
            =5FG.AutoBuyEnchancementColour =3D v743
            StopTween(=5FG.AutoBuyEnchancementColour)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.AutoBuyEnchancementColour then
                local v744 =3D {[1] =3D "ColorsDealer", [2] =3D "2"}
                game:GetService("ReplicatedStorage").Remotes.CommF=5F:Invo=
keServer(unpack(v744))
            end
        end
    end)
    v487:AddToggle({
        Title =3D "Auto Buy Legendary Sword",
        Value =3D false,
        Callback =3D function(v745)
            =5FG.AutoBuyLegendarySword =3D v745
        end
    })
    spawn(function()
        while wait() do
            if =5FG.AutoBuyLegendarySword then
                pcall(function()
                    local v746 =3D {[1] =3D "LegendarySwordDealer", [2] =
=3D "1"}
                    game:GetService("ReplicatedStorage").Remotes.CommF=5F:=
InvokeServer(unpack(v746))
                    local v747 =3D {[1] =3D "LegendarySwordDealer", [2] =
=3D "2"}
                    game:GetService("ReplicatedStorage").Remotes.CommF=5F:=
InvokeServer(unpack(v747))
                    local v748 =3D {[1] =3D "LegendarySwordDealer", [2] =
=3D "3"}
                    game:GetService("ReplicatedStorage").Remotes.CommF=5F:=
InvokeServer(unpack(v748))
                end)
            end
        end
    end)
    local =5F =3D v487:AddSection({"Quest Sword"})
    v487:AddToggle({
        Name =3D "Auto Get Longsword",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v750)
            =5FG.Longsword =3D v750
            StopTween(=5FG.Longsword)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.Longsword then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild=
("Diamond") then
                        for =5F, v752 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v752.Name =3D=3D "Diamond" and v752:FindFir=
stChild("Humanoid") and v752:FindFirstChild("HumanoidRootPart") and v752.H=
umanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v752.HumanoidRootPart.CanCollide =3D f=
alse
                                    StartBring =3D true
                                    v752.Humanoid.WalkSpeed =3D 0
                                    v752.HumanoidRootPart.Size =3D Vector3=
.new(80, 80, 80)
                                    topos(v752.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService("Pla=
yers").LocalPlayer, "SimulationRadius", math.huge)
                                until not =5FG.Longsword or not v752.Paren=
t or v752.Humanoid.Health <=3D 0
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstC=
hild("Diamond") then
                        TP1(game:GetService("ReplicatedStorage"):FindFirst=
Child("Diamond").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v487:AddToggle({
        Name =3D "Auto Get Sword Gravity Blade",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v753)
            =5FG.GravityBlade =3D v753
            StopTween(=5FG.GravityBlade)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.GravityBlade then
                pcall(function()
                    if not game:GetService("Workspace").Enemies:FindFirstC=
hild("Fajita") then
                        if game:GetService("ReplicatedStorage"):FindFirstC=
hild("Fajita") then
                            TP1(game:GetService("ReplicatedStorage"):FindF=
irstChild("Fajita").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                        end
                    else
                        for =5F, v755 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v755.Name =3D=3D "Fajita" and v755:FindFirs=
tChild("Humanoid") and v755:FindFirstChild("HumanoidRootPart") and v755.Hu=
manoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v755.HumanoidRootPart.CanCollide =3D f=
alse
                                    StartBring =3D true
                                    v755.Humanoid.WalkSpeed =3D 0
                                    v755.HumanoidRootPart.Size =3D Vector3=
.new(80, 80, 80)
                                    topos(v755.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService("Pla=
yers").LocalPlayer, "SimulationRadius", math.huge)
                                until not =5FG.GravityBlade or not v755.Pa=
rent or v755.Humanoid.Health <=3D 0
                            end
                        end
                    end
                end)
            end
        end
    end)
    v487:AddToggle({
        Name =3D "Auto Get Sword Flail",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v756)
            =5FG.SwodsFlail =3D v756
            StopTween(=5FG.SwodsFlail)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.SwodsFlail then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild=
("Smoke Admiral") then
                        for =5F, v758 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v758.Name =3D=3D "Smoke Admiral" and v758:F=
indFirstChild("Humanoid") and v758:FindFirstChild("HumanoidRootPart") and =
v758.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v758.HumanoidRootPart.CanCollide =3D f=
alse
                                    StartBring =3D true
                                    v758.Humanoid.WalkSpeed =3D 0
                                    v758.HumanoidRootPart.Size =3D Vector3=
.new(80, 80, 80)
                                    topos(v758.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService("Pla=
yers").LocalPlayer, "SimulationRadius", math.huge)
                                until not =5FG.SwodsFlail or not v758.Pare=
nt or v758.Humanoid.Health <=3D 0
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstC=
hild("Smoke Admiral") then
                        TP1(game:GetService("ReplicatedStorage"):FindFirst=
Child("Smoke Admiral").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
    v487:AddToggle({
        Name =3D "Auto Get Sword Rengoku",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v759)
            =5FG.AutoRengoku =3D v759
            StopTween(=5FG.AutoRengoku)
        end
    })
    spawn(function()
        pcall(function()
            while wait() do
                if =5FG.AutoRengoku then
                    if game:GetService("Players").LocalPlayer.Backpack:Fin=
dFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Charac=
ter:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        topos(CFrame.new(6571.1201171875, 299.23028564453,=
 -6967.841796875))
                    elseif not game:GetService("Workspace").Enemies:FindFi=
rstChild("Awakened Ice Admiral") then
                        StartBring =3D false
                        topos(CFrame.new(5439.716796875, 84.420944213867, =
-6715.1635742188))
                    else
                        for =5F, v761 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v761.Name =3D=3D "Awakened Ice Admiral" and=
 v761:FindFirstChild("Humanoid") and v761:FindFirstChild("HumanoidRootPart=
") and v761.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    AutoHaki()
                                    v761.HumanoidRootPart.CanCollide =3D f=
alse
                                    v761.HumanoidRootPart.Size =3D Vector3=
.new(50, 50, 50)
                                    PosMon =3D v761.HumanoidRootPart.CFram=
e
                                    MonFarm =3D v761.Name
                                    topos(v761.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    AttackNoCD()
                                    StartBring =3D true
                                until game:GetService("Players").LocalPlay=
er.Backpack:FindFirstChild("Hidden Key") or =5FG.AutoRengoku =3D=3D false =
or not v761.Parent or v761.Humanoid.Health <=3D 0
                                StartBring =3D false
                            end
                        end
                    end
                end
            end
        end)
    end)
    v487:AddToggle({
        Name =3D "Auto Get Sword Dragon Trident",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v762)
            =5FG.SwodsDRTrident =3D v762
            StopTween(=5FG.SwodsDRTrident)
        end
    })
    spawn(function()
        while wait() do
            if =5FG.SwodsDRTrident then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild=
("Tide Keeper") then
                        for =5F, v764 in pairs(game:GetService("Workspace"=
).Enemies:GetChildren()) do
                            if v764.Name =3D=3D "Tide Keeper" and v764:Fin=
dFirstChild("Humanoid") and v764:FindFirstChild("HumanoidRootPart") and v7=
64.Humanoid.Health > 0 then
                                repeat
                                    task.wait()
                                    AutoHaki()
                                    EquipWeapon(=5FG.SelectWeapon)
                                    v764.HumanoidRootPart.CanCollide =3D f=
alse
                                    StartBring =3D true
                                    v764.Humanoid.WalkSpeed =3D 0
                                    v764.HumanoidRootPart.Size =3D Vector3=
.new(80, 80, 80)
                                    topos(v764.HumanoidRootPart.CFrame * C=
Frame.new(0, 30, 0))
                                    sethiddenproperty(game:GetService("Pla=
yers").LocalPlayer, "SimulationRadius", math.huge)
                                until not =5FG.SwodsDRTrident or not v764.=
Parent or v764.Humanoid.Health <=3D 0
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstC=
hild("Tide Keeper") then
                        TP1(game:GetService("ReplicatedStorage"):FindFirst=
Child("Tide Keeper").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end)
            end
        end
    end)
end
if World3 then
    local =5F =3D v487:AddSection({"Quest Sea 3"})
    local =5F =3D v487:AddSection({"Boss Rip indra"})
    v487:AddToggle({
        Name =3D "Auto kill Rip Indra",
        Description =3D "",
        Default =3D false,
        Callback =3D function(v767)
            =5FG.RipIndraKill =3D v767
            StopTween(=5FG.RipIndraKill)
        end
    })
    local v768 =3D CFrame.new(-5344.822265625, 423.98541259766, -2725.0930=
175781)
    do
        local l=5Fv768=5F0 =3D v768
        spawn(function()
            pcall(function()
                while wait() do
                    if =5FG.RipIndraKill then
                        if not game:GetService("Workspace").Enemies:FindFi=
rstChild("rip=5Findra True Form") and not game:GetService("Workspace").Ene=
mies:FindFirstChild("rip=5Findra") then
                            if BypassTP then
                                if (game.Players.LocalPlayer.Character.Hum=
anoidRootPart.Position - l=5Fv768=5F0.Position).Magnitude > 1500 then
                                    TP1(l=5Fv768=5F0)
                                elseif (game.Players.LocalPlayer.Character=
.HumanoidRootPart.Position - l=5Fv768=5F0.Position).Magnitude < 1500 then
                                    TP1(l=5Fv768=5F0)
                                end
                            else
                                TP1(l=5Fv768=5F0)
                            end
                            TP1(CFrame.new(-5344.822265625, 423.9854125976=
6, -2725.0930175781))
                        else
                            for =5F, v771 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                local l=5FName=5F0 =3D v771.Name
                                local v773 =3D "rip=5Findra True Form"
                                if not v773 then
                                    if v771.Name ~=3D "rip=5Findra" then
                                        v773 =3D false
                                    end
                                    v773 =3D true
                                end
                                do
                                    local l=5Fv771=5F0 =3D v771
                                    if l=5FName=5F0 =3D=3D v773 and l=5Fv7=
71=5F0.Humanoid.Health > 0 and l=5Fv771=5F0:IsA("Model") and l=5Fv771=5F0:=
FindFirstChild("Humanoid") and l=5Fv771=5F0:FindFirstChild("HumanoidRootPa=
rt") then
                                        repeat
                                            task.wait()
                                            pcall(function()
                                                AutoHaki()
                                                EquipWeapon(=5FG.SelectWea=
pon)
                                                l=5Fv771=5F0.HumanoidRootP=
art.CanCollide =3D false
                                                l=5Fv771=5F0.HumanoidRootP=
art.Size =3D Vector3.new(50, 50, 50)
                                                topos(l=5Fv771=5F0.Humanoi=
dRootPart.CFrame * CFrame.new(0, -40, 0))
                                                game:GetService("VirtualUs=
er"):CaptureController()
                                                game:GetService("VirtualUs=
er"):Button1Down(Vector2.new(1280, 670), workspace.CurrentCamera.CFrame)
                                            end)
                                        until =5FG.RipIndraKill =3D=3D fal=
se or l=5Fv771=5F0.Humanoid.Health <=3D 0
                                    end
                                end
                            end
                        end
                    end
                end
            end)
        end)
        v487:AddToggle({
            Name =3D "Auto Haki Colors",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v775)
                =5FG.RipIndraKill =3D v775
                StopTween(=5FG.RipIndraKill)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.AutoBuyEnchancementColour then
                    local v776 =3D {[1] =3D "ColorsDealer", [2] =3D "2"}
                    game:GetService("ReplicatedStorage").Remotes.CommF=5F:=
InvokeServer(unpack(v776))
                end
            end
        end)
        local =5F =3D v487:AddSection({"Quest Skull Guitar"})
        v487:AddToggle({
            Name =3D "Auto Skull Guitar",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v778)
                =5FG.AutoSkullGuitar =3D v778
                StopTween(=5FG.AutoSkullGuitar)
            end
        })
        spawn(function()
            while task.wait() do
                if getgenv().AutoSkullGuitar then
                    pcall(function()
                        if not GetWeaponInventory("Skull Guitar") then
                            local l=5FLocalPlayer=5F11 =3D game:GetService=
("Players").LocalPlayer
                            local v780 =3D l=5FLocalPlayer=5F11.Character =
and l=5FLocalPlayer=5F11.Character:FindFirstChild("HumanoidRootPart")
                            if v780 and (Vector3.new(-9681.458, 6.139, 634=
1.372) - v780.Position).Magnitude <=3D 5000 then
                                if game:GetService("Workspace").NPCs:FindF=
irstChild("Skeleton Machine") then
                                    game:GetService("ReplicatedStorage").R=
emotes.CommF:InvokeServer("soulGuitarBuy", true)
                                else
                                    local l=5FFirstChild=5F3 =3D game:GetS=
ervice("Workspace").Map:FindFirstChild("Haunted Castle")
                                    if not l=5FFirstChild=5F3 or l=5FFirst=
Child=5F3.Candle1.Transparency ~=3D 0 then
                                        if not l=5FFirstChild=5F3 or not l=
=5FFirstChild=5F3.Tablet or not l=5FFirstChild=5F3.Tablet:FindFirstChild("=
Segment1") then
                                            if game:GetService("Workspace"=
).NPCs:FindFirstChild("Ghost") then
                                                game:GetService("Replicate=
dStorage").Remotes.CommF:InvokeServer("GuitarPuzzleProgress", "Ghost")
                                            end
                                            local l=5FEnemies=5F2 =3D game=
.Workspace:FindFirstChild("Enemies")
                                            if l=5FEnemies=5F2 and l=5FEne=
mies=5F2:FindFirstChild("Living Zombie") then
                                                for =5F, v784 in pairs(l=
=5FEnemies=5F2:GetChildren()) do
                                                    if v784:FindFirstChild=
("HumanoidRootPart") and v784:FindFirstChild("Humanoid") and v784.Humanoid=
.Health > 0 and v784.Name =3D=3D "Living Zombie" then
                                                        AutoHaki()
                                                        EquipWeapon(getgen=
v().SelectWeapon)
                                                        v784.HumanoidRootP=
art.Size =3D Vector3.new(60, 60, 60)
                                                        v784.HumanoidRootP=
art.Transparency =3D 1
                                                        v784.Humanoid.Jump=
Power =3D 0
                                                        v784.Humanoid.Walk=
Speed =3D 0
                                                        v784.HumanoidRootP=
art.CanCollide =3D false
                                                        v784.HumanoidRootP=
art.CFrame =3D v780.CFrame * CFrame.new(0, 20, 0)
                                                        topos(CFrame.new(-=
10160.787, 138.662, 5955.031))
                                                        task.wait(0.5)
                                                        local l=5FVirtualU=
ser=5F0 =3D game:GetService("VirtualUser")
                                                        l=5FVirtualUser=5F=
0:CaptureController()
                                                        l=5FVirtualUser=5F=
0:Button1Down(Vector2.new(1280, 672))
                                                    end
                                                end
                                            else
                                                topos(CFrame.new(-10160.78=
7, 138.662, 5955.031))
                                            end
                                        else
                                            local l=5Fl=5FFirstChild=5F3=
=5FFirstChild=5F0 =3D l=5FFirstChild=5F3:FindFirstChild("Lab Puzzle")
                                            if not l=5Fl=5FFirstChild=5F3=
=5FFirstChild=5F0 or not l=5Fl=5FFirstChild=5F3=5FFirstChild=5F0.ColorFloo=
r.Model.Part1:FindFirstChild("ClickDetector") then
                                                Quest3 =3D true
                                            else
                                                Quest4 =3D true
                                                topos(CFrame.new(-9553.599=
, 65.623, 6041.588))
                                                task.wait(1)
                                                for =5F, v788 in ipairs({3=
, 4, 4, 4, 6, 6, 8, 10, 10, 10}) do
                                                    local l=5FFirstChild=
=5F4 =3D l=5Fl=5FFirstChild=5F3=5FFirstChild=5F0.ColorFloor.Model:FindFirs=
tChild("Part" .. v788)
                                                    if l=5FFirstChild=5F4 =
and l=5FFirstChild=5F4:FindFirstChild("ClickDetector") then
                                                        topos(l=5FFirstChi=
ld=5F4.CFrame)
                                                        task.wait(1)
                                                        fireclickdetector(=
l=5FFirstChild=5F4.ClickDetector)
                                                        task.wait(0.5)
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        local l=5FPlacard1=5F0 =3D l=5FFir=
stChild=5F3:FindFirstChild("Placard1")
                                        if l=5FPlacard1=5F0 and l=5FPlacar=
d1=5F0.Left.Part.Transparency =3D=3D 0 then
                                            Quest2 =3D true
                                            topos(CFrame.new(-8762.691, 17=
6.847, 6171.308))
                                            task.wait(1)
                                            for v791 =3D 7, 1, -1 do
                                                local l=5Fl=5FFirstChild=
=5F3=5FFirstChild=5F1 =3D l=5FFirstChild=5F3:FindFirstChild("Placard" .. v=
791)
                                                if l=5Fl=5FFirstChild=5F3=
=5FFirstChild=5F1 and l=5Fl=5FFirstChild=5F3=5FFirstChild=5F1:FindFirstChi=
ld("Left") and l=5Fl=5FFirstChild=5F3=5FFirstChild=5F1.Left:FindFirstChild=
("ClickDetector") then
                                                    fireclickdetector(l=5F=
l=5FFirstChild=5F3=5FFirstChild=5F1.Left.ClickDetector)
                                                    task.wait(0.5)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        elseif not string.find(game:GetService("Replicated=
Storage").Remotes.CommF:InvokeServer("gravestoneEvent", 2), "Error") then
                            if string.find(game:GetService("ReplicatedStor=
age").Remotes.CommF:InvokeServer("gravestoneEvent", 2), "Nothing") then
                                topos("Wait Full Moon")
                            else
                                game:GetService("ReplicatedStorage").Remot=
es.CommF:InvokeServer("gravestoneEvent", 2, true)
                            end
                        else
                            topos(CFrame.new(-8653.206, 140.985, 6160.033)=
)
                        end
                    end)
                end
            end
        end)
        v487:AddToggle({
            Name =3D "Kill Elite Hunter",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v793)
                =5FG.AutoElitehunter =3D v793
                StopTween(=5FG.AutoElitehunter)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.AutoElitehunter and World3 then
                    pcall(function()
                        if game:GetService("Players").LocalPlayer.PlayerGu=
i.Main.Quest.Visible =3D=3D true then
                            if string.find(game:GetService("Players").Loca=
lPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or=
 string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.C=
ontainer.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService(=
"Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Tex=
t, "Urban") then
                                if game:GetService("Workspace").Enemies:Fi=
ndFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstCh=
ild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urb=
an") then
                                    for =5F, v795 in pairs(game:GetService=
("Workspace").Enemies:GetChildren()) do
                                        if (v795.Name =3D=3D "Diablo" or v=
795.Name =3D=3D "Deandre" or v795.Name =3D=3D "Urban") and v795:FindFirstC=
hild("Humanoid") and v795:FindFirstChild("HumanoidRootPart") and v795.Huma=
noid.Health > 0 then
                                            repeat
                                                wait()
                                                AutoHaki()
                                                EquipWeapon(=5FG.SelectWea=
pon)
                                                NeedAttacking =3D true
                                                StartBring =3D true
                                                v795.HumanoidRootPart.CanC=
ollide =3D false
                                                v795.Humanoid.WalkSpeed =
=3D 0
                                                topos(v795.HumanoidRootPar=
t.CFrame * CFrame.new(0, 30, 0))
                                                game:GetService("VirtualUs=
er"):CaptureController()
                                                game:GetService("VirtualUs=
er"):Button1Down(Vector2.new(1280, 672))
                                                sethiddenproperty(game:Get=
Service("Players").LocalPlayer, "SimulationRadius", math.huge)
                                            until =5FG.AutoElitehunter =3D=
=3D false or v795.Humanoid.Health <=3D 0 or not v795.Parent
                                        end
                                    end
                                else
                                    NeedAttacking =3D false
                                    if game:GetService("ReplicatedStorage"=
):FindFirstChild("Diablo") then
                                        TP1(game:GetService("ReplicatedSto=
rage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20=
, 2))
                                    elseif game:GetService("ReplicatedStor=
age"):FindFirstChild("Deandre") then
                                        TP1(game:GetService("ReplicatedSto=
rage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 2=
0, 2))
                                    elseif game:GetService("ReplicatedStor=
age"):FindFirstChild("Urban") then
                                        TP1(game:GetService("ReplicatedSto=
rage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20,=
 2))
                                    end
                                end
                            end
                        elseif =5FG.AutoEliteHunterHop and game:GetService=
("ReplicatedStorage").Remotes.CommF=5F:InvokeServer("EliteHunter") =3D=3D =
"I don't have anything for you right now. Come back later." then
                            Hop()
                        else
                            game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("EliteHunter")
                        end
                    end)
                end
            end
        end)
        local =5F =3D v487:AddSection({"Auto CDK"})
        v487:AddToggle({
            Name =3D "Auto Cdk [Beta]",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v797)
                =5FG.AutoGetCDK =3D v797
                StopTween(=5FG.AutoGetCDK)
            end
        })
        task.spawn(function()
            repeat
                task.wait()
            until getgenv().AutoGetCDK
            local v798 =3D false
            local l=5FLocalPlayer=5F12 =3D game.Players.LocalPlayer
            local l=5FReplicatedStorage=5F0 =3D game:GetService("Replicate=
dStorage")
            local l=5FWorkspace=5F0 =3D game:GetService("Workspace")
            local l=5FEnemies=5F3 =3D l=5FWorkspace=5F0.Enemies
            while getgenv().AutoGetCDK do
                task.wait(0.2)
                pcall(function()
                    l=5FReplicatedStorage=5F0.Remotes.CommF=5F:InvokeServe=
r("CDKQuest", "Progress", "Good")
                    task.wait(0.2)
                    l=5FReplicatedStorage=5F0.Remotes.CommF=5F:InvokeServe=
r("CDKQuest", "Progress", "Evil")
                    task.wait(0.2)
                    l=5FReplicatedStorage=5F0.Remotes.CommF=5F:InvokeServe=
r("CDKQuest", "StartTrial", "Boss")
                    task.wait(0.2)
                    if not l=5FEnemies=5F3:FindFirstChild("Cursed Skeleton=
 Boss") then
                        topos(CFrame.new(-12318.193, 601.951, -6538.662))
                        task.wait(0.5)
                        topos(l=5FWorkspace=5F0.Map.Turtle.Cursed.BossDoor=
.CFrame)
                    else
                        for =5F, v804 in pairs(l=5FEnemies=5F3:GetChildren=
()) do
                            if v804.Name =3D=3D "Cursed Skeleton Boss" and=
 v804:FindFirstChild("Humanoid") and v804:FindFirstChild("HumanoidRootPart=
") and v804.Humanoid.Health > 0 then
                                local l=5FCharacter=5F7 =3D l=5FLocalPlaye=
r=5F12.Character
                                local l=5FBackpack=5F1 =3D l=5FLocalPlayer=
=5F12.Backpack
                                if not l=5FCharacter=5F7:FindFirstChild("Y=
ama") and not l=5FBackpack=5F1:FindFirstChild("Yama") then
                                    if not l=5FCharacter=5F7:FindFirstChil=
d("Tushita") and not l=5FBackpack=5F1:FindFirstChild("Tushita") then
                                        if not v798 then
                                            game.StarterGui:SetCore("SendN=
otification", {
                                                Title =3D "Tu   n Anh IOS"=
,
                                                Text =3D "Use! - Yama or T=
ushita",
                                                con =3D "rbxassetid://1311=
85267344742",
                                                Duration =3D 10
                                            })
                                            v798 =3D true
                                        end
                                    else
                                        EquipWeapon("Tushita")
                                    end
                                else
                                    EquipWeapon("Yama")
                                end
                                Buso()
                                v804.HumanoidRootPart.CanCollide =3D false=

                                v804.Humanoid.WalkSpeed =3D 0
                                topos(v804.HumanoidRootPart.CFrame * CFram=
e.new(0, 30, 0))
                                if syn and not getgenv().SimulationSet the=
n
                                    sethiddenproperty(l=5FLocalPlayer=5F12=
, "SimulationRadius", math.huge)
                                    getgenv().SimulationSet =3D true
                                end
                                repeat
                                    task.wait()
                                until not getgenv().AutoGetCDK or not v804=
.Parent or v804.Humanoid.Health <=3D 0
                            end
                        end
                    end
                end)
            end
        end)
        v487:AddToggle({
            Name =3D "Auto Get Yama",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v807)
                =5FG.AutoYama =3D v807
                StopTween(=5FG.AutoYama)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.AutoYama and game:GetService("ReplicatedStorage").=
Remotes.CommF=5F:InvokeServer("EliteHunter", "Progress") >=3D 30 then
                    repeat
                        wait()
                        fireclickdetector(game:GetService("Workspace").Map=
.Waterfall.SealedKatana.Handle.ClickDetector)
                    until game:GetService("Players").LocalPlayer.Backpack:=
FindFirstChild("Yama") or not =5FG.AutoYama
                end
            end
        end)
        v487:AddToggle({
            Name =3D "Auto Holy Torch Tushita",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v808)
                =5FG.AutoHolyTorch =3D v808
                StopTween(=5FG.AutoHolyTorch)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.AutoHolyTorch then
                    pcall(function()
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("requestEntrance", Vector3.new(5657.88623046875, 1013.079=
0405273438, -335.4996337890625))
                        wait(1)
                        topos(CFrame.new(5711.87451171875, 45.828029632568=
36, 254.17005920410156))
                        wait(15)
                        EquipWeapon("Holy Torch")
                        repeat
                            topos(CFrame.new(-10752, 417, -9366))
                            wait()
                        until not =5FG.AutoHolyTorch or (game.Players.Loca=
lPlayer.Character.HumanoidRootPart.Position - Vector3.new(-10752, 417, -93=
66)).Magnitude <=3D 10
                        wait(1)
                        repeat
                            topos(CFrame.new(-11672, 334, -9474))
                            wait()
                        until not =5FG.AutoHolyTorch or (game.Players.Loca=
lPlayer.Character.HumanoidRootPart.Position - Vector3.new(-11672, 334, -94=
74)).Magnitude <=3D 10
                        wait(1)
                        repeat
                            topos(CFrame.new(-12132, 521, -10655))
                            wait()
                        until not =5FG.AutoHolyTorch or (game.Players.Loca=
lPlayer.Character.HumanoidRootPart.Position - Vector3.new(-12132, 521, -10=
655)).Magnitude <=3D 10
                        wait(1)
                        repeat
                            topos(CFrame.new(-13336, 486, -6985))
                            wait()
                        until not =5FG.AutoHolyTorch or (game.Players.Loca=
lPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13336, 486, -69=
85)).Magnitude <=3D 10
                        wait(1)
                        repeat
                            topos(CFrame.new(-13489, 332, -7925))
                            wait()
                        until not =5FG.AutoHolyTorch or (game.Players.Loca=
lPlayer.Character.HumanoidRootPart.Position - Vector3.new(-13489, 332, -79=
25)).Magnitude <=3D 10
                    end)
                end
            end
        end)
        v487:AddToggle({
            Name =3D "Auto Get Tushita",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v809)
                =5FG.AutoGetTushita =3D v809
                StopTween(=5FG.AutoGetTushita)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.AutoGetTushita then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstC=
hild("Longma") then
                            for =5F, v811 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v811.Name =3D=3D "Longma" and v811:Find=
FirstChild("Humanoid") and v811:FindFirstChild("HumanoidRootPart") and v81=
1.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v811.HumanoidRootPart.CanCollide =
=3D false
                                        StartBring =3D true
                                        v811.Humanoid.WalkSpeed =3D 0
                                        v811.HumanoidRootPart.Size =3D Vec=
tor3.new(80, 80, 80)
                                        topos(v811.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService(=
"Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until not =5FG.AutoGetTushita or not v=
811.Parent or v811.Humanoid.Health <=3D 0
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFi=
rstChild("Longma") then
                            TP1(game:GetService("ReplicatedStorage"):FindF=
irstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                        end
                    end)
                end
            end
        end)
        local =5F =3D v487:AddSection({"Quest Sword"})
        v487:AddToggle({
            Name =3D "Auto Get Sword Twin Hooks",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v813)
                =5FG.SwodTwinHooks =3D v813
                StopTween(=5FG.SwodTwinHooks)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.SwodTwinHooks then
                    pcall(function()
                        if not game:GetService("Workspace").Enemies:FindFi=
rstChild("Captain Elephant") then
                            if game:GetService("ReplicatedStorage"):FindFi=
rstChild("Captain Elephant") then
                                TP1(game:GetService("ReplicatedStorage"):F=
indFirstChild("Captain Elephant").HumanoidRootPart.CFrame * CFrame.new(5, =
10, 2))
                            end
                        else
                            for =5F, v815 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v815.Name =3D=3D "Captain Elephant" and=
 v815:FindFirstChild("Humanoid") and v815:FindFirstChild("HumanoidRootPart=
") and v815.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v815.HumanoidRootPart.CanCollide =
=3D false
                                        StartBring =3D true
                                        v815.Humanoid.WalkSpeed =3D 0
                                        v815.HumanoidRootPart.Size =3D Vec=
tor3.new(80, 80, 80)
                                        topos(v815.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService(=
"Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until not =5FG.SwodTwinHooks or not v8=
15.Parent or v815.Humanoid.Health <=3D 0
                                end
                            end
                        end
                    end)
                end
            end
        end)
        v487:AddToggle({
            Name =3D "Auto Get Sword Canvander",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v816)
                =5FG.SwodCanvander =3D v816
                StopTween(=5FG.SwodCanvander)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.SwodCanvander then
                    pcall(function()
                        if game:GetService("Workspace").Enemies:FindFirstC=
hild("Beautiful Pirate") then
                            for =5F, v818 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v818.Name =3D=3D "Beautiful Pirate" and=
 v818:FindFirstChild("Humanoid") and v818:FindFirstChild("HumanoidRootPart=
") and v818.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v818.HumanoidRootPart.CanCollide =
=3D false
                                        StartBring =3D true
                                        v818.Humanoid.WalkSpeed =3D 0
                                        v818.HumanoidRootPart.Size =3D Vec=
tor3.new(80, 80, 80)
                                        topos(v818.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService(=
"Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until not =5FG.SwodCanvander or not v8=
18.Parent or v818.Humanoid.Health <=3D 0
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFi=
rstChild("Beautiful Pirate") then
                            TP1(game:GetService("ReplicatedStorage"):FindF=
irstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(5, 10, =
2))
                        end
                    end)
                end
            end
        end)
        v487:AddToggle({
            Name =3D "Auto Get Sword Buddy",
            Description =3D "",
            Default =3D false,
            Callback =3D function(v819)
                =5FG.SwodsBuddy =3D v819
                StopTween(=5FG.SwodsBuddy)
            end
        })
        spawn(function()
            while wait() do
                if =5FG.SwodsBuddy then
                    pcall(function()
                        if not game:GetService("Workspace").Enemies:FindFi=
rstChild("Cake Queen") then
                            if game:GetService("ReplicatedStorage"):FindFi=
rstChild("Cake Queen") then
                                TP1(game:GetService("ReplicatedStorage"):F=
indFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2)=
)
                            end
                        else
                            for =5F, v821 in pairs(game:GetService("Worksp=
ace").Enemies:GetChildren()) do
                                if v821.Name =3D=3D "Cake Queen" and v821:=
FindFirstChild("Humanoid") and v821:FindFirstChild("HumanoidRootPart") and=
 v821.Humanoid.Health > 0 then
                                    repeat
                                        task.wait()
                                        AutoHaki()
                                        EquipWeapon(=5FG.SelectWeapon)
                                        v821.HumanoidRootPart.CanCollide =
=3D false
                                        StartBring =3D true
                                        v821.Humanoid.WalkSpeed =3D 0
                                        v821.HumanoidRootPart.Size =3D Vec=
tor3.new(80, 80, 80)
                                        topos(v821.HumanoidRootPart.CFrame=
 * CFrame.new(0, 30, 0))
                                        sethiddenproperty(game:GetService(=
"Players").LocalPlayer, "SimulationRadius", math.huge)
                                    until not =5FG.SwodsBuddy or not v821.=
Parent or v821.Humanoid.Health <=3D 0
                                end
                            end
                        end
                    end)
                end
            end
        end)
    end
local =5F =3D v487:AddSection({"Teleport V4"})
v487:AddButton({
    Title =3D "Teleport To Top GreatTree",
    Value =3D false,
    Callback =3D function()
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.=
CFrame =3D CFrame.new(3030.39453125, 2280.6171875, -7320.18359375)
    end
})
v487:AddButton({
    Title =3D "Teleport Temple Of Time",
    Value =3D false,
    Callback =3D function()
        Game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.=
CFrame =3D CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875=
)
    end
})
v487:AddButton({
    Title =3D "Teleport Lever Pull",
    Value =3D false,
    Callback =3D function()
        topos(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302=
734))
    end
})
v487:AddButton({
    Title =3D "Teleport To The Clock",
    Value =3D false,
    Callback =3D function()
        topos(CFrame.new(29553.7812, 15066.6133, -88.2750015, 1, 0, 0, 0, =
1, 0, 0, 0, 1))
    end
})
local =5F =3D v487:AddSection({"Trial V4"})
v487:AddButton({
    Title =3D "Auto Race Door",
    Value =3D false,
    Callback =3D function()
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.=
CFrame =3D CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875=
)
        wait(0.1)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.=
CFrame =3D CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875=
)
        wait(0.1)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.=
CFrame =3D CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875=
)
        wait(0.1)
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.=
CFrame =3D CFrame.new(28286.35546875, 14895.3017578125, 102.62469482421875=
)
        wait(0.5)
        if game:GetService("Players").LocalPlayer.Data.Race.Value =3D=3D "=
Human" then
            topos(CFrame.new(29221.822265625, 14890.9755859375, -205.99114=
990234375))
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value ~=3D=
 "Skypiea" then
            if game:GetService("Players").LocalPlayer.Data.Race.Value =3D=
=3D "Fishman" then
                topos(CFrame.new(28231.17578125, 14890.9755859375, -211.64=
173889160156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value =
=3D=3D "Cyborg" then
                topos(CFrame.new(28502.681640625, 14895.9755859375, -423.7=
279357910156))
            elseif game:GetService("Players").LocalPlayer.Data.Race.Value =
~=3D "Ghoul" then
                if game:GetService("Players").LocalPlayer.Data.Race.Value =
=3D=3D "Mink" then
                    topos(CFrame.new(29012.341796875, 14890.9755859375, -3=
80.1492614746094))
                end
            else
                topos(CFrame.new(28674.244140625, 14890.6767578125, 445.43=
10607910156))
            end
        else
            topos(CFrame.new(28960.158203125, 14919.6240234375, 235.039489=
74609375))
        end
    end
})
v487:AddButton({
    Title =3D "Buy Acient One Quest",
    Value =3D false,
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("UpgradeRace", "Buy")
    end
})
v487:AddToggle({
    Name =3D "Auto Trial Human Ghost",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v998)
        =5FG.Kill=5FAura =3D v998
        StopTween(=5FG.Kill=5FAura)
    end
})
v487:AddToggle({
    Name =3D "Auto Trial All Race",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v999)
        =5FG.AutoQuestRace =3D v999
        StopTween(=5FG.AutoQuestRace)
    end
})
spawn(function()
    pcall(function()
        while wait() do
            if =5FG.AutoQuestRace then
                if game:GetService("Players").LocalPlayer.Data.Race.Value =
=3D=3D "Human" then
                    for =5F, v1001 in pairs(game.Workspace.Enemies:GetDesc=
endants()) do
                        do
                            local l=5Fv1001=5F0 =3D v1001
                            if l=5Fv1001=5F0:FindFirstChild("Humanoid") an=
d l=5Fv1001=5F0:FindFirstChild("HumanoidRootPart") and l=5Fv1001=5F0.Human=
oid.Health > 0 then
                                pcall(function()
                                    repeat
                                        wait(0.1)
                                        l=5Fv1001=5F0.Humanoid.Health =3D =
0
                                        l=5Fv1001=5F0.HumanoidRootPart.Can=
Collide =3D false
                                        sethiddenproperty(game.Players.Loc=
alPlayer, "SimulationRadius", math.huge)
                                    until not =5FG.AutoQuestRace or not l=
=5Fv1001=5F0.Parent or l=5Fv1001=5F0.Humanoid.Health <=3D 0
                                end)
                            end
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Va=
lue =3D=3D "Skypiea" then
                    for =5F, v1004 in pairs(game:GetService("Workspace").M=
ap.SkyTrial.Model:GetDescendants()) do
                        if v1004.Name =3D=3D "snowisland=5FCylinder.081" t=
hen
                            topos(v1004.CFrame * CFrame.new(0, 0, 0))
                        end
                    end
                elseif game:GetService("Players").LocalPlayer.Data.Race.Va=
lue ~=3D "Fishman" then
                    if game:GetService("Players").LocalPlayer.Data.Race.Va=
lue =3D=3D "Cyborg" then
                        topos(CFrame.new(28654, 14898.7832, -30, 1, 0, 0, =
0, 1, 0, 0, 0, 1))
                    elseif game:GetService("Players").LocalPlayer.Data.Rac=
e.Value =3D=3D "Ghoul" then
                        for =5F, v1006 in pairs(game.Workspace.Enemies:Get=
Descendants()) do
                            do
                                local l=5Fv1006=5F0 =3D v1006
                                if l=5Fv1006=5F0:FindFirstChild("Humanoid"=
) and l=5Fv1006=5F0:FindFirstChild("HumanoidRootPart") and l=5Fv1006=5F0.H=
umanoid.Health > 0 then
                                    pcall(function()
                                        repeat
                                            wait(0.1)
                                            l=5Fv1006=5F0.Humanoid.Health =
=3D 0
                                            l=5Fv1006=5F0.HumanoidRootPart=
.CanCollide =3D false
                                            sethiddenproperty(game.Players=
.LocalPlayer, "SimulationRadius", math.huge)
                                        until not =5FG.AutoQuestRace or no=
t l=5Fv1006=5F0.Parent or l=5Fv1006=5F0.Humanoid.Health <=3D 0
                                    end)
                                end
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Data.Rac=
e.Value =3D=3D "Mink" then
                        for =5F, v1009 in pairs(game:GetService("Workspace=
"):GetDescendants()) do
                            if v1009.Name =3D=3D "StartPoint" then
                                topos(v1009.CFrame * CFrame.new(0, 3, 0))
                                =5FG.AutoQuestRace =3D false
                                StopTween(=5FG.AutoQuestRace)
                            end
                        end
                    end
                else
                    for =5F, v1011 in pairs(game:GetService("Workspace").S=
eaBeasts.SeaBeast1:GetDescendants()) do
                        if v1011.Name =3D=3D "HumanoidRootPart" then
                            topos(v1011.CFrame * Pos)
                            for =5F, v1013 in pairs(game.Players.LocalPlay=
er.Backpack:GetChildren()) do
                                if v1013:IsA("Tool") and v1013.ToolTip =3D=
=3D "Melee" then
                                    game.Players.LocalPlayer.Character.Hum=
anoid:EquipTool(v1013)
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPa=
rt)
                            wait(0.2)
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPa=
rt)
                            wait(0.2)
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart=
)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            for =5F, v1015 in pairs(game.Players.LocalPlay=
er.Backpack:GetChildren()) do
                                if v1015:IsA("Tool") and v1015.ToolTip =3D=
=3D "Blox Fruit" then
                                    game.Players.LocalPlayer.Character.Hum=
anoid:EquipTool(v1015)
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPa=
rt)
                            wait(0.2)
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPa=
rt)
                            wait(0.2)
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart=
)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            wait(0.5)
                            for =5F, v1017 in pairs(game.Players.LocalPlay=
er.Backpack:GetChildren()) do
                                if v1017:IsA("Tool") and v1017.ToolTip =3D=
=3D "Sword" then
                                    game.Players.LocalPlayer.Character.Hum=
anoid:EquipTool(v1017)
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPa=
rt)
                            wait(0.2)
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPa=
rt)
                            wait(0.2)
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart=
)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            wait(0.5)
                            for =5F, v1019 in pairs(game.Players.LocalPlay=
er.Backpack:GetChildren()) do
                                if v1019:IsA("Tool") and v1019.ToolTip =3D=
=3D "Gun" then
                                    game.Players.LocalPlayer.Character.Hum=
anoid:EquipTool(v1019)
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPa=
rt)
                            wait(0.2)
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPa=
rt)
                            wait(0.2)
                            game:GetService("VirtualInputManager"):SendKey=
Event(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart=
)
                            game:GetService("VirtualInputManager"):SendKey=
Event(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPar=
t)
                        end
                    end
                end
            end
        end
    end)
end)
v487:AddToggle({
    Name =3D "Auto Kill Player after Trial  V4",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1020)
        =5FG.AutoKillV4 =3D v1020
        StopTween(=5FG.AutoKillV4)
    end
})
spawn(function()
    while task.wait() do
        if =5FG.AutoKillV4 then
            pcall(function()
                for =5F, v1022 in pairs(game.Workspace.Characters:GetChild=
ren()) do
                    if v1022.Name ~=3D game.Players.LocalPlayer.Name and v=
1022:FindFirstChild("Humanoid") and v1022:FindFirstChild("HumanoidRootPart=
") and v1022.Humanoid.Health > 0 and v1022.Parent and (game.Players.LocalP=
layer.Character.HumanoidRootPart.Position - v1022.HumanoidRootPart.Positio=
n).Magnitude <=3D 230 then
                        repeat
                            task.wait()
                            AutoHaki()
                            EquipWeapon(=5FG.SelectWeapon)
                            topos(v1022.HumanoidRootPart.CFrame * CFrame.n=
ew(1, 1, 2))
                            v1022.HumanoidRootPart.Size =3D Vector3.new(60=
, 60, 60)
                            v1022.HumanoidRootPart.CanCollide =3D false
                            v1022.Head.CanCollide =3D false
                            v1022.Humanoid.WalkSpeed =3D 0
                            sethiddenproperty(game.Players.LocalPlayer, "S=
imulationRadius", math.huge)
                        until not =5FG.AutoKillV4 or v1022.Humanoid.Health=
 <=3D 0 or not v1022.Parent or not v1022:FindFirstChild("HumanoidRootPart"=
) or not v1022:FindFirstChild("Humanoid")
                    end
                end
            end)
        end
    end
end)
local =5F =3D v487:AddSection({"Auto Skill"})
v487:AddToggle({
    Name =3D "Auto Skill Z",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1024)
        =5FG.XaiSkillZ =3D v1024
        StopTween(=5FG.XaiSkillZ)
    end
})
v487:AddToggle({
    Name =3D "Auto Skill X",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1025)
        =5FG.XaiSkillX =3D v1025
        StopTween(=5FG.XaiSkillX)
    end
})
v487:AddToggle({
    Name =3D "Auto Skill C",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1026)
        =5FG.XaiSkillC =3D v1026
        StopTween(=5FG.XaiSkillC)
    end
})
end
local =5F =3D v489:AddSection({"Sea Events"})
v489:AddToggle({
    Name =3D "Auto Drive Boats",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v948)
        =5FG.SailBoat =3D v948
        StopTween(=5FG.SailBoat)
    end
})
spawn(function()
    while wait() do
        pcall(function()
            if =5FG.SailBoat and (not game:GetService("Workspace").Enemies=
:FindFirstChild("Shark") or not game:GetService("Workspace").Enemies:FindF=
irstChild("Terrorshark") or not game:GetService("Workspace").Enemies:FindF=
irstChild("Piranha") or not game:GetService("Workspace").Enemies:FindFirst=
Child("Fish Crew Member")) then
                if game:GetService("Workspace").Boats:FindFirstChild("Pira=
teBrigade") then
                    if game:GetService("Workspace").Boats:FindFirstChild("=
PirateBrigade") then
                        if game.Players.LocalPlayer.Character:WaitForChild=
("Humanoid").Sit =3D=3D false then
                            TPP(game:GetService("Workspace").Boats.PirateB=
rigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
                        else
                            for =5F, v950 in pairs(game:GetService("Worksp=
ace").Boats:GetChildren()) do
                                if v950.Name =3D=3D "PirateBrigade" then
                                    repeat
                                        wait()
                                        if (CFrame.new(-17013.80078125, 10=
.962434768676758, 438.0169982910156).Position - game.Players.LocalPlayer.C=
haracter.HumanoidRootPart.Position).magnitude <=3D 10 then
                                            TPB(CFrame.new(-37813.6953, -0=
.3221744, 6105.16895, -0.252362996, 4.13621581E-9, 0.967632651, 2.87320709=
E-8, 1, 3.21888249E-9, -0.967632651, 2.86144175E-8, -0.252362996))
                                        elseif (CFrame.new(-37813.6953, -0=
.3221744, 6105.16895, -0.252362996, 4.13621581E-9, 0.967632651, 2.87320709=
E-8, 1, 3.21888249E-9, -0.967632651, 2.86144175E-8, -0.252362996).Position=
 - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude=
 > 10 then
                                            if (CFrame.new(-42250.2227, -0=
.3221744, 9247.07715, -0.45916447, 6.39043236E-8, 0.888351262, -3.36711423=
E-8, 1, -8.93395651E-8, -0.888351262, -7.09333605E-8, -0.45916447).Positio=
n - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitud=
e <=3D 10 then
                                                TPB(CFrame.new(-37813.6953=
, -0.3221744, 6105.16895, -0.252362996, 4.13621581E-9, 0.967632651, 2.8732=
0709E-8, 1, 3.21888249E-9, -0.967632651, 2.86144175E-8, -0.252362996))
                                            end
                                        else
                                            TPB(CFrame.new(-42250.2227, -0=
.3221744, 9247.07715, -0.45916447, 6.39043236E-8, 0.888351262, -3.36711423=
E-8, 1, -8.93395651E-8, -0.888351262, -7.09333605E-8, -0.45916447))
                                        end
                                    until game:GetService("Workspace").Ene=
mies:FindFirstChild("Shark") or game:GetService("Workspace").Enemies:FindF=
irstChild("Terrorshark") or game:GetService("Workspace").Enemies:FindFirst=
Child("Piranha") or game:GetService("Workspace").Enemies:FindFirstChild("F=
ish Crew Member") or =5FG.SailBoat =3D=3D false
                                end
                            end
                        end
                    end
                else
                    buyb =3D TPP(CFrame.new(-16927.451171875, 9.0863618850=
708, 433.8642883300781))
                    if (CFrame.new(-16927.451171875, 9.0863618850708, 433.=
8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootP=
art.Position).magnitude <=3D 10 then
                        if buyb then
                            buyb:Stop()
                        end
                        local v951 =3D {[1] =3D "BuyBoat", [2] =3D "Pirate=
Brigade"}
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer(unpack(v951))
                    end
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if =5FG.SailBoat and (game:GetService("Workspace").Enemies:Fin=
dFirstChild("Shark") or game:GetService("Workspace").Enemies:FindFirstChil=
d("Terrorshark") or game:GetService("Workspace").Enemies:FindFirstChild("P=
iranha") or game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew=
 Member")) then
                game.Players.LocalPlayer.Character.Humanoid.Sit =3D false
            end
        end
    end)
end)
v489:AddToggle({
    Name =3D "Auto Kill Terror Shank",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v952)
        =5FG.Autoterrorshark =3D v952
        StopTween(=5FG.Autoterrorshark)
    end
})
spawn(function()
    while wait() do
        if =5FG.Autoterrorshark and World3 then
            pcall(function()
                if not game:GetService("Workspace").Enemies:FindFirstChild=
("Terrorshark") and not game:GetService("Workspace").Enemies:FindFirstChil=
d("Piranha") and not game:GetService("Workspace").Enemies:FindFirstChild("=
Fish Crew Member") and not game:GetService("Workspace").Enemies:FindFirstC=
hild("Shark") and not game:GetService("Workspace").SeaBeasts:FindFirstChil=
d("SeaBeast1") and not game:GetService("Workspace").Enemies:FindFirstChild=
("PirateBrigade") and not game:GetService("Workspace").Enemies:FindFirstCh=
ild("PirateBasic") then
                    topos(game:GetService("Workspace").Boats.PirateBrigade=
.VehicleSeat.CFrame * CFrame.new(0, -1, 0))
                    for =5F, v954 in pairs(game:GetService("ReplicatedStor=
age"):GetChildren()) do
                        if v954.Name ~=3D "Terrorshark" then
                            game:GetService("Workspace").Boats.VehicleSeat=
.CFrame =3D game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        else
                            topos(v954.HumanoidRootPart.CFrame * CFrame.ne=
w(2, 20, 2))
                        end
                    end
                else
                    for =5F, v956 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if v956.Name =3D=3D "Terrorshark" and v956:FindFir=
stChild("Humanoid") and v956:FindFirstChild("HumanoidRootPart") and v956.H=
umanoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                v956.HumanoidRootPart.CanCollide =3D false=

                                v956.Humanoid.WalkSpeed =3D 0
                                v956.Head.CanCollide =3D false
                                topos(v956.HumanoidRootPart.CFrame * CFram=
e.new(5, 40, 10))
                                MonFarm =3D v956.Name
                                PosMon =3D v956.HumanoidRootPart.CFrame
                                game.Players.LocalPlayer.Character.Humanoi=
d.Sit =3D false
                                if game:GetService("Workspace").=5FWorldOr=
igin:FindFirstChild("Typhoon Splash") then
                                    topos(v956.HumanoidRootPart.CFrame * C=
Frame.new(0, 300, 0))
                                else
                                    topos(v956.HumanoidRootPart.CFrame * C=
Frame.new(0, 60, 0))
                                end
                            until not =5FG.Autoterrorshark or not v956.Par=
ent or v956.Humanoid.Health <=3D 0
                        end
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if =5FG.dao then
            pcall(function()
                if not game:GetService("Workspace").Boats:FindFirstChild("=
PirateBrigade") then
                    game:GetService("ReplicatedStorage").Remotes.CommF=5F:=
InvokeServer("BuyBoat", "PirateBrigade")
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        if =5FG.dao and game.Players.LocalPlayer.Character.Humanoid.Sit =
=3D=3D true then
            TPB(CFrame.new(-25351.8418, 10.7575607, 26430.791, -0.99837976=
7, -0.00721008703, -0.0564435199, -0.00722159958, 0.999973953, -1.53919405=
E-10, 0.0564420484, 4.07612359E-4, -0.998405814))
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if getgenv().SafeMode then
                local l=5FCharacter=5F9 =3D game.Players.LocalPlayer.Chara=
cter
                if l=5FCharacter=5F9 and l=5FCharacter=5F9:FindFirstChild(=
"Humanoid") and l=5FCharacter=5F9:FindFirstChild("HumanoidRootPart") then
                    local l=5FHumanoid=5F2 =3D l=5FCharacter=5F9.Humanoid
                    local l=5FHumanoidRootPart=5F5 =3D l=5FCharacter=5F9.H=
umanoidRootPart
                    if l=5FHumanoid=5F2.Health < 5500 then
                        while getgenv().SafeMode and l=5FHumanoid=5F2.Heal=
th < 5500 do
                            task.wait(0.1)
                            l=5FHumanoidRootPart=5F5.CFrame =3D l=5FHumano=
idRootPart=5F5.CFrame + Vector3.new(0, 200, 0)
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if =5FG.Nocliprock then
            if game.Players.LocalPlayer.Character.Humanoid.Sit =3D=3D true=
 then
                for =5F, v961 in pairs(game.Workspace.Boats:GetDescendants=
()) do
                    if v961:IsA("BasePart") and v961.CanCollide =3D=3D tru=
e then
                        v961.CanCollide =3D false
                    end
                end
                for =5F, v963 in pairs(game.Players.LocalPlayer.Character:=
GetDescendants()) do
                    if v963:IsA("BasePart") and v963.CanCollide =3D=3D tru=
e then
                        v963.CanCollide =3D false
                    end
                end
            elseif game.Players.LocalPlayer.Character.Humanoid.Sit =3D=3D =
false then
                for =5F, v965 in pairs(game.Workspace.Boats:GetDescendants=
()) do
                    if v965:IsA("BasePart") and v965.CanCollide =3D=3D fal=
se then
                        v965.CanCollide =3D true
                    end
                end
                for =5F, v967 in pairs(game.Players.LocalPlayer.Character:=
GetDescendants()) do
                    if v967:IsA("BasePart") and v967.CanCollide =3D=3D fal=
se then
                        v967.CanCollide =3D true
                    end
                end
            end
        end
    end
end)
v489:AddToggle({
    Name =3D "Auto Kill Shark",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v968)
        =5FG.KillShark =3D v968
        StopTween(=5FG.KillShark)
    end
})
spawn(function()
    while wait() do
        if =5FG.KillShark and World3 and =5FG.SailBoat then
            pcall(function()
                if not game:GetService("Workspace").Enemies:FindFirstChild=
("Shark") and not game:GetService("Workspace").Enemies:FindFirstChild("Pir=
anha") and not game:GetService("Workspace").Enemies:FindFirstChild("Fish C=
rew Member") and not game:GetService("Workspace").Enemies:FindFirstChild("=
Terrorshark") and not game:GetService("Workspace").SeaBeasts:FindFirstChil=
d("SeaBeast1") and not game:GetService("Workspace").Enemies:FindFirstChild=
("PirateBrigade") and not game:GetService("Workspace").Enemies:FindFirstCh=
ild("PirateBasic") then
                    topos(game:GetService("Workspace").Boats.PirateBrigade=
.VehicleSeat.CFrame * CFrame.new(0, -1, 0))
                    for =5F, v970 in pairs(game:GetService("ReplicatedStor=
age"):GetChildren()) do
                        if not v970.Name =3D=3D "Shark" then
                            game:GetService("Workspace").Boats.VehicleSeat=
.CFrame =3D game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        elseif v970.Name =3D=3D "Shark" then
                            topos(v970.HumanoidRootPart.CFrame * CFrame.ne=
w(2, 20, 2))
                        end
                    end
                else
                    for =5F, v972 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if v972.Name =3D=3D "Shark" and v972:FindFirstChil=
d("Humanoid") and v972:FindFirstChild("HumanoidRootPart") and v972.Humanoi=
d.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                v972.HumanoidRootPart.CanCollide =3D false=

                                v972.Humanoid.WalkSpeed =3D 0
                                v972.Head.CanCollide =3D false
                                topos(v972.HumanoidRootPart.CFrame * CFram=
e.new(5, 40, 10))
                                MonFarm =3D v972.Name
                                PosMon =3D v972.HumanoidRootPart.CFrame
                                game.Players.LocalPlayer.Character.Humanoi=
d.Sit =3D false
                            until not =5FG.KillShark or not v972.Parent or=
 v972.Humanoid.Health <=3D 0
                        end
                    end
                end
            end)
        end
    end
end)
v489:AddToggle({
    Name =3D "Auto Kill Piranha",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v973)
        =5FG.KillPiranha =3D v973
        StopTween(=5FG.KillPiranha)
    end
})
spawn(function()
    while wait() do
        if =5FG.KillPiranha and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Pi=
ranha") or game:GetService("Workspace").Enemies:FindFirstChild("Shark") or=
 game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") o=
r game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") or ga=
me:GetService("Workspace").SeaBeasts:FindFirstChild("SeaBeast1") or game:G=
etService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:Get=
Service("Workspace").Enemies:FindFirstChild("PirateBasic") then
                    for =5F, v975 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if v975.Name =3D=3D "Piranha" and v975:FindFirstCh=
ild("Humanoid") and v975:FindFirstChild("HumanoidRootPart") and v975.Human=
oid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                v975.HumanoidRootPart.CanCollide =3D false=

                                v975.Humanoid.WalkSpeed =3D 0
                                v975.Head.CanCollide =3D false
                                topos(v975.HumanoidRootPart.CFrame * CFram=
e.new(5, 40, 10))
                                MonFarm =3D v975.Name
                                PosMon =3D v975.HumanoidRootPart.CFrame
                                game.Players.LocalPlayer.Character.Humanoi=
d.Sit =3D false
                            until not =5FG.KillPiranha or not v975.Parent =
or v975.Humanoid.Health <=3D 0
                        end
                    end
                else
                    topos(game:GetService("Workspace").Boats.PirateBrigade=
.VehicleSeat.CFrame * CFrame.new(0, -1, 0))
                    for =5F, v977 in pairs(game:GetService("ReplicatedStor=
age"):GetChildren()) do
                        if not v977.Name =3D=3D "Piranha" then
                            game:GetService("Workspace").Boats.VehicleSeat=
.CFrame =3D game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        elseif v977.Name =3D=3D "Piranha" then
                            topos(v977.HumanoidRootPart.CFrame * CFrame.ne=
w(2, 20, 2))
                        end
                    end
                end
            end)
        end
    end
end)
v489:AddToggle({
    Name =3D "Auto Kill Fish Crew Member",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v978)
        =5FG.KillFishCrew =3D v978
        StopTween(=5FG.KillFishCrew)
    end
})
spawn(function()
    while wait() do
        if =5FG.KillFishCrew and World3 then
            pcall(function()
                if not game:GetService("Workspace").Enemies:FindFirstChild=
("Fish Crew Member") and not game:GetService("Workspace").Enemies:FindFirs=
tChild("Piranha") and not game:GetService("Workspace").Enemies:FindFirstCh=
ild("Shark") and not game:GetService("Workspace").Enemies:FindFirstChild("=
Terrorshark") and not game:GetService("Workspace").SeaBeasts:FindFirstChil=
d("SeaBeast1") and not game:GetService("Workspace").Enemies:FindFirstChild=
("PirateBrigade") and not game:GetService("Workspace").Enemies:FindFirstCh=
ild("PirateBasic") then
                    topos(game:GetService("Workspace").Boats.PirateBrigade=
.VehicleSeat.CFrame * CFrame.new(0, -1, 0))
                    for =5F, v980 in pairs(game:GetService("ReplicatedStor=
age"):GetChildren()) do
                        if not v980.Name =3D=3D "Fish Crew Member" then
                            game:GetService("Workspace").Boats.VehicleSeat=
.CFrame =3D game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        end
                    end
                else
                    for =5F, v982 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if v982.Name =3D=3D "Fish Crew Member" and v982:Fi=
ndFirstChild("Humanoid") and v982:FindFirstChild("HumanoidRootPart") and v=
982.Humanoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                v982.HumanoidRootPart.CanCollide =3D false=

                                v982.Humanoid.WalkSpeed =3D 0
                                v982.Head.CanCollide =3D false
                                topos(v982.HumanoidRootPart.CFrame * CFram=
e.new(5, 40, 10))
                                MonFarm =3D v982.Name
                                PosMon =3D v982.HumanoidRootPart.CFrame
                                game.Players.LocalPlayer.Character.Humanoi=
d.Sit =3D false
                            until not =5FG.KillFishCrew or not v982.Parent=
 or v982.Humanoid.Health <=3D 0
                        end
                    end
                end
            end)
        end
    end
end)

local =5F =3D v489:AddSection({"Volcanic Island"})
v489:AddButton({
    Title =3D "Tween Dragon Dojo",
    Value =3D false,
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("requestEntrance", Vector3.new(5661.53, 1013.09, -334.96))
        topos(CFrame.new(5841.29, 1208.32, 884.31))
    end
})
v489:AddToggle({
    Name =3D "Auto Dragon Huntery",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v822)
        =5FG.FarmBlazeEM =3D v822
        StopTween(=5FG.FarmBlazeEM)
    end
})
function checkQuesta()
    local v823 =3D {[1] =3D {Context =3D "Check"}}
    local v824 =3D nil
    pcall(function()
        local v825 =3D {[1] =3D {Context =3D "RequestQuest"}}
        game:GetService("ReplicatedStorage").Modules.Net["RF/DragonHunter"=
]:InvokeServer(unpack(v825))
    end)
    local =5F, =5F =3D pcall(function()
        v824 =3D game:GetService("ReplicatedStorage").Modules.Net["RF/Drag=
onHunter"]:InvokeServer(unpack(v823))
    end)
    local v828 =3D false
    local v829 =3D nil
    local v830 =3D nil
    local v831 =3D nil
    if v824 and v824.Text then
        v828 =3D true
        local l=5FText=5F1 =3D v824.Text
        if string.find(l=5FText=5F1, "Defeat") then
            v831 =3D 1
            v830 =3D tonumber(string.sub(l=5FText=5F1, 8, 9))
            for =5F, v834 in pairs({"Hydra Enforcer", "Venomous Assailant"=
}) do
                if string.find(l=5FText=5F1, v834) then
                    v829 =3D v834
                    break
                end
            end
        elseif string.find(l=5FText=5F1, "Destroy") then
            v831 =3D 2
            v830 =3D 10
        end
    end
    return v828, v829, v830, v831
end
function BackTODoJo()
    for =5F, v836 in pairs(game:GetService("Players").LocalPlayer.PlayerGu=
i.Notifications:GetChildren()) do
        if v836.Name =3D=3D "NotificationTemplate" and string.find(v836.Te=
xt, "Head back to the Dojo to complete more tasks") then
            return true
        end
    end
    return false
end
function DragonMobClear(v837, v838, v839)
    if not workspace.Enemies:FindFirstChild(v838) then
        if v839 then
            topos(v839)
        end
    else
        for =5F, v841 in pairs(workspace.Enemies:GetChildren()) do
            if v841.Name =3D=3D v838 and Attack.Alive(v841) and v837 then
                Attack.Kill(v841, v837)
            end
        end
    end
end
spawn(function()
    while task.wait() do
        if =5FG.FarmBlazeEM then
            pcall(function()
                local v842, v843, =5F, v845 =3D checkQuesta()
                if not v842 or BackTODoJo() then
                    topos(CFrame.new(5864.88, 1209.43, 806.5))
                    DragonMobClear(false, nil, nil)
                elseif v845 ~=3D 1 then
                    if v845 =3D=3D 2 then
                        local l=5FFirstChild=5F5 =3D workspace.Map.Waterfa=
ll.IslandModel:FindFirstChild("Meshes/bambootree", true)
                        do
                            local l=5Fl=5FFirstChild=5F5=5F0 =3D l=5FFirst=
Child=5F5
                            if l=5Fl=5FFirstChild=5F5=5F0 then
                                repeat
                                    task.wait()
                                    spawn(function()
                                        topos(l=5Fl=5FFirstChild=5F5=5F0.C=
Frame * CFrame.new(4, 0, 0))
                                    end)
                                    if (l=5Fl=5FFirstChild=5F5=5F0.Positio=
n - Root.Position).Magnitude <=3D 200 then
                                        MousePos =3D l=5Fl=5FFirstChild=5F=
5=5F0.Position
                                        Useskills("Melee", "Z")
                                        Useskills("Melee", "X")
                                        Useskills("Melee", "C")
                                        task.wait(0.5)
                                        Useskills("Sword", "Z")
                                        Useskills("Sword", "X")
                                        task.wait(0.5)
                                        Useskills("Blox Fruit", "Z")
                                        Useskills("Blox Fruit", "X")
                                        Useskills("Blox Fruit", "C")
                                        task.wait(0.5)
                                        Useskills("Gun", "Z")
                                        Useskills("Gun", "X")
                                    end
                                until not =5FG.FarmBlazeEM or not v842 or =
BackTODoJo()
                            end
                        end
                    end
                elseif v843 =3D=3D "Hydra Enforcer" or v843 =3D=3D "Venomo=
us Assailant" then
                    repeat
                        task.wait()
                        DragonMobClear(true, v843, CFrame.new(4620.61, 100=
2.29, 399.08))
                    until not =5FG.FarmBlazeEM or not v842 or BackTODoJo()=

                end
            end)
        end
    end
end)
spawn(function()
    while task.wait(0.1) do
        if =5FG.FarmBlazeEM then
            pcall(function()
                if workspace:FindFirstChild("EmberTemplate") and workspace=
.EmberTemplate:FindFirstChild("Part") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CF=
rame =3D workspace.EmberTemplate.Part.CFrame
                end
            end)
        end
    end
end)
v489:AddButton({
    Title =3D "Craft Volcanic Magnet",
    Value =3D false,
    Callback =3D function()
        local v849 =3D {[1] =3D "CraftItem", [2] =3D "Craft", [3] =3D "Vol=
canic Magnet"}
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
(unpack(v849))
    end
})
local v850 =3D v489:AddParagraph({Title =3D "Check Prehistoric Island", Co=
ntent =3D "Loading..."})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild("Prehistori=
cIsland") then
                v850:Set("Prehistoric Island Spawning    ")
            else
                v850:Set("Prehistoric Island Not Spawn    ")
            end
        end)
    end
end)
v489:AddToggle({
    Name =3D "Auto Find Prehistoric",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v851)
        =5FG.Nocliprock =3D v851
        StopTween(=5FG.Nocliprock)
    end
})
local v852 =3D {}
local l=5FPlayers=5F0 =3D game:GetService("Players")
local l=5FRunService=5F0 =3D game:GetService("RunService")
local l=5FVirtualInputManager=5F3 =3D game:GetService("VirtualInputManager=
")
local l=5FWorkspace=5F1 =3D game:GetService("Workspace")
local v857 =3D 350
l=5FRunService=5F0.RenderStepped:Connect(function()
    for v858, v859 in pairs(v852) do
        if v859 and v859.Parent and v859.Name =3D=3D "VehicleSeat" and not=
 v859.Occupant then
            v852[v858] =3D v859
        end
    end
end)
local =5F =3D function()
    for =5F, v861 in pairs(v852) do
        if v861 and v861.Parent and v861.Name =3D=3D "VehicleSeat" and not=
 v861.Occupant then
            topos(v861.CFrame)
        end
    end
end
local v863 =3D false
local v864 =3D false
l=5FRunService=5F0.RenderStepped:Connect(function()
    if =5FG.AutoFindPrehistoric then
        local l=5FCharacter=5F8 =3D l=5FPlayers=5F0.LocalPlayer.Character
        if l=5FCharacter=5F8 and l=5FCharacter=5F8:FindFirstChild("Humanoi=
d") then
            local function v868()
                if not v863 then
                    v863 =3D true
                    for =5F, v867 in pairs(v852) do
                        if v867 and v867.Parent and v867.Name =3D=3D "Vehi=
cleSeat" and not v867.Occupant then
                            topos(v867.CFrame)
                            break
                        end
                    end
                    v863 =3D false
                    return 
                else
                    return 
                end
            end
            local l=5FHumanoid=5F1 =3D l=5FCharacter=5F8.Humanoid
            local v870 =3D false
            local v871 =3D nil
            for =5F, v873 in pairs(l=5FWorkspace=5F1.Boats:GetChildren()) =
do
                local l=5FVehicleSeat=5F0 =3D v873:FindFirstChild("Vehicle=
Seat")
                if l=5FVehicleSeat=5F0 and l=5FVehicleSeat=5F0.Occupant =
=3D=3D l=5FHumanoid=5F1 then
                    v870 =3D true
                    v871 =3D l=5FVehicleSeat=5F0
                    v852[v873.Name] =3D l=5FVehicleSeat=5F0
                elseif l=5FVehicleSeat=5F0 and l=5FVehicleSeat=5F0.Occupan=
t =3D=3D "Name" then
                    v868()
                end
            end
            if v870 then
                v871.MaxSpeed =3D v857
                v871.CFrame =3D CFrame.new(Vector3.new(v871.Position.X, v8=
71.Position.Y, v871.Position.Z)) * v871.CFrame.Rotation
                l=5FVirtualInputManager=5F3:SendKeyEvent(true, "W", false,=
 game)
                for =5F, v876 in pairs(l=5FWorkspace=5F1.Boats:GetDescenda=
nts()) do
                    if v876:IsA("BasePart") then
                        v876.CanCollide =3D false
                    end
                end
                for =5F, v878 in pairs(l=5FCharacter=5F8:GetDescendants())=
 do
                    if v878:IsA("BasePart") then
                        v878.CanCollide =3D false
                    end
                end
                for =5F, v880 in ipairs({
                    "ShipwreckIsland",
                    "SandIsland",
                    "TreeIsland",
                    "TinyIsland",
                    "MysticIsland",
                    "KitsuneIsland",
                    "FrozenDimension"
                }) do
                    local l=5FFirstChild=5F6 =3D l=5FWorkspace=5F1.Map:Fin=
dFirstChild(v880)
                    if l=5FFirstChild=5F6 and l=5FFirstChild=5F6:IsA("Mode=
l") then
                        l=5FFirstChild=5F6:Destroy()
                    end
                end
                if l=5FWorkspace=5F1.Map:FindFirstChild("PrehistoricIsland=
") then
                    l=5FVirtualInputManager=5F3:SendKeyEvent(false, "W", f=
alse, game)
                    =5FG.AutoFindPrehistoric =3D false
                    if not v864 then
                        v864 =3D true
                    end
                    return 
                else
                    return 
                end
            else
                return 
            end
        else
            return 
        end
    else
        v864 =3D false
        return 
    end
end)
v489:AddToggle({
    Name =3D "Auto Tween Prehistoric Island",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v882)
        =5FG.TweenVolcano =3D v882
        StopTween(=5FG.TweenVolcano)
    end
})
spawn(function()
    local v883 =3D nil
    while not v883 do
        v883 =3D game:GetService("Workspace").Map:FindFirstChild("Prehisto=
ricIsland")
        wait()
    end
    while wait() do
        if =5FG.TweenVolcano then
            local l=5FPrehistoricIsland=5F0 =3D game:GetService("Workspace=
").Map:FindFirstChild("PrehistoricIsland")
            if l=5FPrehistoricIsland=5F0 then
                local v885 =3D l=5FPrehistoricIsland=5F0:FindFirstChild("C=
ore") and l=5FPrehistoricIsland=5F0.Core:FindFirstChild("PrehistoricRelic"=
)
                local v886 =3D v885 and v885:FindFirstChild("Skull")
                if v886 then
                    TP1(CFrame.new(v886.Position))
                    =5FG.TweenVolcano =3D false
                end
            end
        end
    end
end)
v489:AddToggle({
    Name =3D "Auto Defend Prehistoric",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v887)
        =5FG.DefendVolcano =3D v887
        StopTween(=5FG.DefendVolcano)
    end
})
local function v889(v888)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, v888, false,=
 game)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, v888, false=
, game)
end
local function v898()
    local l=5FInteriorLava=5F0 =3D game.Workspace.Map.PrehistoricIsland.Co=
re:FindFirstChild("InteriorLava")
    if l=5FInteriorLava=5F0 and l=5FInteriorLava=5F0:IsA("Model") then
        l=5FInteriorLava=5F0:Destroy()
    end
    local l=5FPrehistoricIsland=5F1 =3D game.Workspace.Map:FindFirstChild(=
"PrehistoricIsland")
    if l=5FPrehistoricIsland=5F1 then
        for =5F, v893 in pairs(l=5FPrehistoricIsland=5F1:GetDescendants())=
 do
            if v893:IsA("Part") and v893.Name:lower():find("lava") then
                v893:Destroy()
            end
        end
    end
    if l=5FPrehistoricIsland=5F1 then
        for =5F, v895 in pairs(l=5FPrehistoricIsland=5F1:GetDescendants())=
 do
            if v895:IsA("Model") then
                for =5F, v897 in pairs(v895:GetDescendants()) do
                    if v897:IsA("MeshPart") and v897.Name:lower():find("la=
va") then
                        v897:Destroy()
                    end
                end
            end
        end
    end
end
local function v904()
    local l=5FVolcanoRocks=5F0 =3D game.Workspace.Map.PrehistoricIsland.Co=
re.VolcanoRocks
    for =5F, v901 in pairs(l=5FVolcanoRocks=5F0:GetChildren()) do
        if v901:IsA("Model") then
            local l=5Fvolcanorock=5F0 =3D v901:FindFirstChild("volcanorock=
")
            if l=5Fvolcanorock=5F0 and l=5Fvolcanorock=5F0:IsA("MeshPart")=
 then
                local l=5FColor=5F0 =3D l=5Fvolcanorock=5F0.Color
                if l=5FColor=5F0 =3D=3D Color3.fromRGB(185, 53, 56) or l=
=5FColor=5F0 =3D=3D Color3.fromRGB(185, 53, 57) then
                    return l=5Fvolcanorock=5F0
                end
            end
        end
    end
    return nil
end
local function v913(v905)
    local l=5FLocalPlayer=5F13 =3D game.Players.LocalPlayer
    local l=5FBackpack=5F2 =3D l=5FLocalPlayer=5F13.Backpack
    for =5F, v909 in pairs(l=5FBackpack=5F2:GetChildren()) do
        if v909:IsA("Tool") and v909.ToolTip =3D=3D v905 then
            v909.Parent =3D l=5FLocalPlayer=5F13.Character
            for =5F, v911 in ipairs({"Z", "X", "C", "V", "F"}) do
                wait()
                do
                    local l=5Fv911=5F0 =3D v911
                    pcall(function()
                        v889(l=5Fv911=5F0)
                    end)
                end
            end
            v909.Parent =3D l=5FBackpack=5F2
            break
        end
    end
end
spawn(function()
    while wait() do
        if =5FG.DefendVolcano then
            AutoHaki()
            pcall(v898)
            local v914 =3D v904()
            if not v914 then
                =5FG.TpPrehistoric =3D true
            else
                local v915 =3D CFrame.new(v914.Position)
                TP1(v915)
                local l=5FColor=5F1 =3D v914.Color
                if l=5FColor=5F1 =3D=3D Color3.fromRGB(185, 53, 56) or l=
=5FColor=5F1 =3D=3D Color3.fromRGB(185, 53, 57) then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPar=
t.Position - v914.Position).Magnitude <=3D 1 then
                        if =5FG.UseMelee then
                            v913("Melee")
                        end
                        if =5FG.UseSword then
                            v913("Sword")
                        end
                        if =5FG.UseGun then
                            v913("Gun")
                        end
                    end
                    =5FG.TpPrehistoric =3D false
                else
                    v914 =3D v904()
                end
            end
        end
    end
end)
local =5F =3D v489:AddSection({"Auto Skill"})
v489:AddToggle({
    Name =3D "Auto Use Melee",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v918)
        =5FG.UseMelee =3D v918
        StopTween(=5FG.UseMelee)
    end
})
v489:AddToggle({
    Name =3D "Auto Use Sword",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v919)
        =5FG.UseSword =3D v919
        StopTween(=5FG.UseSword)
    end
})
v489:AddToggle({
    Name =3D "Auto Use Gun",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v920)
        =5FG.UseGun =3D v920
        StopTween(=5FG.UseGun)
    end
})
local =5F =3D v489:AddSection({"Auto Kill Golem"})
v489:AddToggle({
    Name =3D "Auto Kill Golem",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v922)
        =5FG.KillGolem =3D v922
        StopTween(=5FG.KillGolem)
    end
})
spawn(function()
    while wait() do
        if =5FG.KillGolem and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("La=
va Golem") then
                    for =5F, v924 in pairs(game:GetService("Workspace").En=
emies:GetChildren()) do
                        if v924.Name =3D=3D "Lava Golem" and v924:FindFirs=
tChild("Humanoid") and v924:FindFirstChild("HumanoidRootPart") and v924.Hu=
manoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                v924.HumanoidRootPart.CanCollide =3D false=

                                v924.Humanoid.WalkSpeed =3D 0
                                v924.HumanoidRootPart.Size =3D Vector3.new=
(50, 50, 50)
                                topos(v924.HumanoidRootPart.CFrame * CFram=
e.new(0, 30, 0))
                                sethiddenproperty(game.Players.LocalPlayer=
, "SimulationRadius", math.huge)
                            until not =5FG.KillGolem or not v924.Parent or=
 v924.Humanoid.Health <=3D 0
                        end
                    end
                else
                    UnEquipWeapon(=5FG.SelectWeapon)
                    if game:GetService("ReplicatedStorage"):FindFirstChild=
("Lava Golem") then
                        topos(game:GetService("ReplicatedStorage"):FindFir=
stChild("Lava Golem").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2))
                    end
                end
            end)
        end
    end
end)
v489:AddToggle({
    Name =3D "Auto Kill Aura Golem",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v925)
        =5FG.Kill=5FAura =3D v925
        StopTween(=5FG.Kill=5FAura)
    end
})
spawn(function()
    pcall(function()
        while wait() do
            if =5FG.Kill=5FAura then
                local l=5FLocalPlayer=5F14 =3D game:GetService("Players").=
LocalPlayer
                local l=5FChildren=5F0 =3D game:GetService("Workspace").En=
emies:GetChildren()
                local v928 =3D l=5FLocalPlayer=5F14.Character and l=5FLoca=
lPlayer=5F14.Character:FindFirstChild("HumanoidRootPart") and l=5FLocalPla=
yer=5F14.Character.HumanoidRootPart.Position
                do
                    local l=5Fl=5FLocalPlayer=5F14=5F0 =3D l=5FLocalPlayer=
=5F14
                    if v928 then
                        for =5F, v931 in pairs(l=5FChildren=5F0) do
                            do
                                local l=5Fv931=5F0 =3D v931
                                if l=5Fv931=5F0:FindFirstChild("Humanoid")=
 and l=5Fv931=5F0:FindFirstChild("HumanoidRootPart") and l=5Fv931=5F0.Huma=
noid.Health > 0 and (l=5Fv931=5F0.HumanoidRootPart.Position - v928).Magnit=
ude <=3D 1000 then
                                    pcall(function()
                                        repeat
                                            wait()
                                            sethiddenproperty(l=5Fl=5FLoca=
lPlayer=5F14=5F0, "SimulationRadius", math.huge)
                                            l=5Fv931=5F0.Humanoid.Health =
=3D 0
                                            l=5Fv931=5F0.HumanoidRootPart.=
CanCollide =3D false
                                        until not =5FG.Kill=5FAura or not =
l=5Fv931=5F0.Parent or l=5Fv931=5F0.Humanoid.Health <=3D 0
                                    end)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
end)
local =5F =3D v489:AddSection({"Auto Collect Bone,Egg"})
v489:AddToggle({
    Name =3D "Auto Collect Bone",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v934)
        =5FG.AutoCollectBone =3D v934
        StopTween(=5FG.AutoCollectBone)
    end
})
spawn(function()
    while wait() do
        if =5FG.AutoCollectBone then
            for =5F, v936 in pairs(workspace:GetDescendants()) do
                if v936:IsA("BasePart") and v936.Name =3D=3D "DinoBone" th=
en
                    topos(CFrame.new(v936.Position))
                end
            end
        end
    end
end)
v489:AddToggle({
    Name =3D "Auto Collect Egg",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v937)
        =5FG.CollectEgg =3D v937
        StopTween(=5FG.CollectEgg)
    end
})
spawn(function()
    while wait() do
        if =5FG.CollectEgg then
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Modules=
"):WaitForChild("Net"):WaitForChild("RE/CollectedDragonEgg"):FireServer()
            end)
        end
    end
end)
local =5F =3D v489:AddSection({"Kitsune Island"})
local v939 =3D v489:AddParagraph({Title =3D "Check Kitsune Island", Conten=
t =3D "Loading..."})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsl=
and") then
                v939:Set("Kitsune Island Spawning    ")
            else
                v939:Set("Kitsune Island Not Spawn    ")
            end
        end)
    end
end)
v489:AddToggle({
    Name =3D "Auto Tween Kitsune island",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v940)
        =5FG.TweenToKitsune =3D v940
        StopTween(=5FG.TweenToKitsune)
    end
})
spawn(function()
    local v941 =3D nil
    while not v941 do
        v941 =3D game:GetService("Workspace").Map:FindFirstChild("KitsuneI=
sland")
        wait(1)
    end
    while wait() do
        if =5FG.TweenToKitsune then
            local v942 =3D v941.FindFirstChild(v941, "ShrineActive")
            if v942 then
                for =5F, v944 in pairs(v942:GetDescendants()) do
                    if v944:IsA("BasePart") and v944.Name:find("NeonShrine=
Part") then
                        Tween(v944.CFrame)
                    end
                end
            end
        end
    end
end)
spawn(function()
    pcall(function()
        while wait() do
            if =5FG.TweenToKitsune then
                topos(game.Workspace.Map.KitsuneIsland.ShrineActive.NeonSh=
rinePart.CFrame * CFrame.new(0, 0, 10))
            end
        end
    end)
end)
v489:AddToggle({
    Title =3D "Esp Kitsune Island",
    Value =3D false,
    Callback =3D function(v945)
        KitsuneIslandEsp =3D v945
        if KitsuneIslandEsp then
            task.spawn(function()
                while KitsuneIslandEsp do
                    UpdateIslandKisuneESP()
                    task.wait(1)
                end
            end)
        else
            UpdateIslandKisuneESP()
        end
    end
})
v489:AddToggle({
    Name =3D "Auto Azuer Ember",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v946)
        =5FG.AutoAzuerEmber =3D v946
        StopTween(=5FG.AutoAzuerEmber)
    end
})
spawn(function()
    while wait() do
        if =5FG.AutoAzuerEmber then
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("AttachedAz=
ureEmber") then
                    TP1(game.Workspace.EmberTemplate.Part.CFrame)
                end
            end)
        end
    end
end)
local =5F =3D v489:AddSection({"Mirage Island"})
local v984 =3D v489:AddParagraph({Title =3D "Check Mirage Island", Content=
 =3D "Loading..."})
task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if not game.Workspace.=5FWorldOrigin.Locations:FindFirstChild(=
"Mirage Island") then
                v984:Set("Mirage Island Not Spawn    ")
            else
                v984:Set("Mirage Island Spawning    ")
            end
        end)
    end
end)
v489:AddToggle({
    Name =3D "Tween Mirage Island",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v985)
        =5FG.AutoMysticIsland =3D v985
        StopTween(=5FG.AutoMysticIsland)
    end
})
spawn(function()
    while task.wait(0.1) do
        pcall(function()
            if =5FG.AutoMysticIsland then
                for =5F, v987 in pairs(game:GetService("Workspace").=5FWor=
ldOrigin.Locations:GetChildren()) do
                    if v987.Name =3D=3D "Mirage Island" then
                        topos(v987.CFrame * CFrame.new(0, 333, 0))
                    end
                end
            end
        end)
    end
end)
v489:AddToggle({
    Title =3D "Esp Mirage Island",
    Description =3D "",
    Value =3D false,
    Callback =3D function(v988)
        MirageIslandESP =3D v988
        if MirageIslandESP then
            task.spawn(function()
                while MirageIslandESP do
                    UpdateIslandMirageESP()
                    task.wait(1)
                end
            end)
        else
            UpdateIslandMirageESP()
        end
    end
})
v489:AddToggle({
    Name =3D "Look Moon + Auto V3",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v989)
        =5FG.AutoDooHee =3D v989
        StopTween(=5FG.AutoDooHee)
    end
})
local l=5FVirtualInputManager=5F4 =3D game:GetService("VirtualInputManager=
")
spawn(function()
    while wait() do
        pcall(function()
            if getgenv().=5FG.AutoDooHee then
                local l=5FMoonDirection=5F0 =3D game.Lighting:GetMoonDirec=
tion()
                local v992 =3D game.Workspace.CurrentCamera.CFrame.p + l=
=5FMoonDirection=5F0 * 100
                game.Workspace.CurrentCamera.CFrame =3D CFrame.lookAt(game=
.Workspace.CurrentCamera.CFrame.p, v992)
                wait(2)
                l=5FVirtualInputManager=5F4:SendKeyEvent(true, "T", false,=
 game)
                wait(0.1)
                l=5FVirtualInputManager=5F4:SendKeyEvent(false, "T", false=
, game)
            end
        end)
    end
end)
v489:AddToggle({
    Name =3D "Auto Tween To Gear",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v993)
        =5FG.TweenMGear =3D v993
        StopTween(=5FG.TweenMGear)
    end
})
spawn(function()
    pcall(function()
        while wait() do
            if =5FG.TweenMGear and game:GetService("Workspace").Map:FindFi=
rstChild("MysticIsland") then
                for =5F, v995 in pairs(game:GetService("Workspace").Map.My=
sticIsland:GetChildren()) do
                    if v995:IsA("MeshPart") and v995.Material =3D=3D Enum.=
Material.Neon then
                        topos(v995.CFrame)
                    end
                end
            end
        end
    end)
end)

local =5F =3D v491:AddSection({"Fruits"})
v491:AddToggle({
    Name =3D "Auto Random Fruits",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1074)
        =5FG.RandomAuto =3D v1074
    end
})
spawn(function()
    pcall(function()
        while wait() do
            if =5FG.RandomAuto then
                game:GetService("ReplicatedStorage").Remotes.CommF=5F:Invo=
keServer("Cousin", "Buy")
            end
        end
    end)
end)
v491:AddToggle({
    Title =3D "Auto Store Fruits",
    Description =3D "",
    Value =3D false,
    Callback =3D function(v1075)
        getgenv().AutoStoreFruit =3D v1075
    end
})
spawn(function()
    while task.wait(0.2) do
        if getgenv().AutoStoreFruit then
            pcall(function()
                local l=5FLocalPlayer=5F16 =3D game:GetService("Players").=
LocalPlayer
                local v1077 =3D l=5FLocalPlayer=5F16.Character or l=5FLoca=
lPlayer=5F16.CharacterAdded:Wait()
                local l=5FBackpack=5F3 =3D l=5FLocalPlayer=5F16:WaitForChi=
ld("Backpack")
                for =5F, v1080 in ipairs({
                    {"Rocket Fruit", "Rocket-Rocket"},
                    {"Spin Fruit", "Spin-Spin"},
                    {"Blade Fruit", "Blade-Blade"},
                    {"Spring Fruit", "Spring-Spring"},
                    {"Bomb Fruit", "Bomb-Bomb"},
                    {"Smoke Fruit", "Smoke-Smoke"},
                    {"Spike Fruit", "Spike-Spike"},
                    {"Flame Fruit", "Flame-Flame"},
                    {"Eagle Fruit", "Eagle-Eagle"},
                    {"Ice Fruit", "Ice-Ice"},
                    {"Sand Fruit", "Sand-Sand"},
                    {"Dark Fruit", "Dark-Dark"},
                    {"Diamond Fruit", "Diamond-Diamond"},
                    {"Light Fruit", "Light-Light"},
                    {"Rubber Fruit", "Rubber-Rubber"},
                    {"Creation Fruit", "Creation-Creation"},
                    {"Ghost Fruit", "Ghost-Ghost"},
                    {"Magma Fruit", "Magma-Magma"},
                    {"Quake Fruit", "Quake-Quake"},
                    {"Buddha Fruit", "Buddha-Buddha"},
                    {"Love Fruit", "Love-Love"},
                    {"Spider Fruit", "Spider-Spider"},
                    {"Sound Fruit", "Sound-Sound"},
                    {"Phoenix Fruit", "Phoenix-Phoenix"},
                    {"Portal Fruit", "Portal-Portal"},
                    {"Lightning Fruit", "Lightning-Lightning"},
                    {"Pain Fruit", "Pain-Pain"},
                    {"Blizzard Fruit", "Blizzard-Blizzard"},
                    {"Gravity Fruit", "Gravity-Gravity"},
                    {"Mammoth Fruit", "Mammoth-Mammoth"},
                    {"T-Rex Fruit", "T-Rex-T-Rex"},
                    {"Dough Fruit", "Dough-Dough"},
                    {"Shadow Fruit", "Shadow-Shadow"},
                    {"Venom Fruit", "Venom-Venom"},
                    {"Gas Fruit", "Gas-Gas"},
                    {"Control Fruit", "Control-Control"},
                    {"Spirit Fruit", "Spirit-Spirit"},
                    {"Leopard Fruit", "Leopard-Leopard"},
                    {"Yeti Fruit", "Yeti-Yeti"},
                    {"Kitsune Fruit", "Kitsune-Kitsune"},
                    {"Dragon Fruit", "Dragon-Dragon"}
                }) do
                    local v1081 =3D v1080[1]
                    local v1082 =3D v1080[2]
                    local v1083 =3D l=5FBackpack=5F3:FindFirstChild(v1081)=
 or v1077:FindFirstChild(v1081)
                    if v1083 then
                        game:GetService("ReplicatedStorage").Remotes.CommF=
=5F:InvokeServer("StoreFruit", v1082, v1083)
                        break
                    end
                end
            end)
        end
    end
end)
v491:AddToggle({
    Name =3D "Teleport To Fruit Spawn",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1084)
        =5FG.Tweenfruit =3D v1084
    end
})
spawn(function()
    while wait(0.1) do
        if =5FG.TweenFruit then
            for =5F, v1086 in pairs(game.Workspace:GetChildren()) do
                if string.find(v1086.Name, "Fruit") then
                    TP1(v1086.Handle.CFrame)
                end
            end
        end
    end
end)
v491:AddToggle({
    Name =3D "Auto Teleport Fruits",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1087)
        =5FG.Grabfruit =3D v1087
    end
})
spawn(function()
    while wait(0.1) do
        if =5FG.Grabfruit then
            for =5F, v1089 in pairs(game.Workspace:GetChildren()) do
                if string.find(v1089.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CF=
rame =3D v1089.Handle.CFrame
                end
            end
        end
    end
end)
local =5F =3D v491:AddSection({"Check Stock Fruits"})
local function v1096(v1091)
    local v1092 =3D tostring(v1091)
    repeat
        local v1093 =3D nil
        local v1094, v1095 =3D v1092.gsub(v1092, "^(-=3F%d+)(%d%d%d)", "%1=
,%2")
        v1093 =3D v1095
        v1092 =3D v1094
    until v1093 =3D=3D 0
    return v1092
end
local l=5FCommF=5F=5F1 =3D game:GetService("ReplicatedStorage").Remotes.Co=
mmF=5F
local function v1111()
    local v1098 =3D "Advance Fruit Stock\n"
    local l=5Fstatus=5F2, l=5Fresult=5F2 =3D pcall(function()
        return l=5FCommF=5F=5F1:InvokeServer("GetFruits", true)
    end)
    if not l=5Fstatus=5F2 or not l=5Fresult=5F2 then
        v1098 =3D v1098 .. "-       khi   d    li   u.\n"
    else
        local v1101 =3D false
        for =5F, v1103 in pairs(l=5Fresult=5F2) do
            if v1103.OnSale then
                v1101 =3D true
                local v1104 =3D v1096(v1103.Price)
                v1098 =3D v1098 .. v1103.Name .. " - $" .. v1104 .. "\n"
            end
        end
        if not v1101 then
            v1098 =3D v1098 .. "- Kh  ng c   tr  i  .\n"
        end
    end
    v1098 =3D v1098 .. "\nNormal Fruit Stock\n"
    local l=5Fstatus=5F3, l=5Fresult=5F3 =3D pcall(function()
        return l=5FCommF=5F=5F1:InvokeServer("GetFruits")
    end)
    if l=5Fstatus=5F3 and l=5Fresult=5F3 then
        local v1107 =3D false
        for =5F, v1109 in pairs(l=5Fresult=5F3) do
            if v1109.OnSale then
                v1107 =3D true
                local v1110 =3D v1096(v1109.Price)
                v1098 =3D v1098 .. v1109.Name .. " - $" .. v1110 .. "\n"
            end
        end
        if not v1107 then
            v1098 =3D v1098 .. "- Kh  ng c   tr  i  .\n"
        end
    else
        v1098 =3D v1098 .. "-       khi   d    li   u.\n"
    end
    return v1098
end
local v1112 =3D v491:AddParagraph({
    Title =3D "Stock",
    Content =3D "  ang   d    li   u..."
})
task.spawn(function()
    while task.wait(60) do
        pcall(function()
            v1112:Set(v1111())
        end)
    end
end)
pcall(function()
    v1112:Set(v1111())
end)

if World1 then
    v491:AddParagraph({
        Title =3D "Raids only works in Sea 2 and 3",
        Content =3D "This only works in Sea 2 and 3"
    })
else

local =5F =3D v491:AddSection({"Raid Fruits"})

-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
-- SELECT CHIP
-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
=5FG.SelectChip =3D "Flame"
=5FG.AutoBuyChip =3D false
=5FG.StartRaid =3D false
=5FG.Dungeon =3D false

v491:AddDropdown({
    Name =3D "Select Chip",
    Options =3D {
        "Flame","Ice","Sand","Dark","Light","Magma",
        "Quake","Buddha","Spider","Phoenix","Lightning","Dough"
    },
    Default =3D "Flame",
    Callback =3D function(v)
        =5FG.SelectChip =3D v
    end
})

-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
-- AUTO BUY CHIP
-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
v491:AddToggle({
    Name =3D "Auto Buy Chip",
    Default =3D false,
    Callback =3D function(v)
        =5FG.AutoBuyChip =3D v
    end
})

task.spawn(function()
    while task.wait(1) do
        if =5FG.AutoBuyChip and =5FG.SelectChip then
            pcall(function()
                game.ReplicatedStorage.Remotes.CommF=5F:InvokeServer(
                    "RaidsNpc",
                    "Select",
                    =5FG.SelectChip
                )
            end)
        end
    end
end)

-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
-- AUTO START RAID
-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
v491:AddToggle({
    Name =3D "Auto Start Raid",
    Default =3D false,
    Callback =3D function(v)
        =5FG.StartRaid =3D v
    end
})

task.spawn(function()
    while task.wait(1) do
        pcall(function()
            if not =5FG.StartRaid then return end

            local lp =3D game.Players.LocalPlayer
            local gui =3D lp.PlayerGui:FindFirstChild("Main")
            if not gui then return end

            if gui.Timer.Visible then return end
            if workspace.=5FWorldOrigin.Locations:FindFirstChild("Island 1=
") then return end
            if not (lp.Backpack:FindFirstChild("Special Microchip") or lp.=
Character:FindFirstChild("Special Microchip")) then return end

            if World2 then
                topos(CFrame.new(-6438.73, 250.64, -4501.5))
                game.ReplicatedStorage.Remotes.CommF=5F:InvokeServer("SetS=
pawnPoint")
                fireclickdetector(workspace.Map.CircleIsland.RaidSummon2.B=
utton.Main.ClickDetector)
            elseif World3 then
                game.ReplicatedStorage.Remotes.CommF=5F:InvokeServer(
                    "requestEntrance",
                    Vector3.new(-5075.5, 314.51, -3150.02)
                )
                topos(CFrame.new(-5017.4, 314.84, -2823.01))
                game.ReplicatedStorage.Remotes.CommF=5F:InvokeServer("SetS=
pawnPoint")
                fireclickdetector(workspace.Map["Boat Castle"].RaidSummon2=
.Button.Main.ClickDetector)
            end
        end)
    end
end)

-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
-- AUTO FARM RAID NEXT ISLAND
-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D
v491:AddToggle({
    Name =3D "Auto Farm Raid Next Island",
    Default =3D false,
    Callback =3D function(v)
        =5FG.Dungeon =3D v
    end
})

local function GetIsland(num)
    local closest, dist =3D nil, math.huge
    for =5F,v in pairs(workspace.=5FWorldOrigin.Locations:GetChildren()) d=
o
        if v.Name =3D=3D "Island "..num then
            local mag =3D (v.Position - game.Players.LocalPlayer.Character=
.HumanoidRootPart.Position).Magnitude
            if mag < dist then
                dist =3D mag
                closest =3D v
            end
        end
    end
    return closest
end

local function GetNextIsland()
    for =5F,i in ipairs({5,4,3,2,1}) do
        local isl =3D GetIsland(i)
        if isl and (isl.Position - game.Players.LocalPlayer.Character.Huma=
noidRootPart.Position).Magnitude <=3D 4500 then
            return isl
        end
    end
end

local function FarmRaidEnemies()
    for =5F,mob in pairs(workspace.Enemies:GetChildren()) do
        if mob:FindFirstChild("HumanoidRootPart")
        and mob:FindFirstChild("Humanoid")
        and mob.Humanoid.Health > 0
        and (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Char=
acter.HumanoidRootPart.Position).Magnitude <=3D 1000 then
            repeat
                task.wait(0.1)
                if mob.Humanoid.Health > 0 then
                    EquipWeapon(=5FG.SelectWeapon)
                    topos(mob.HumanoidRootPart.CFrame * CFrame.new(0,30,0)=
)
                end
            until mob.Humanoid.Health <=3D 0 or not =5FG.Dungeon
        end
    end
end

task.spawn(function()
    while task.wait() do
        if =5FG.Dungeon then
            FarmRaidEnemies()
            local isl =3D GetNextIsland()
            if isl then
                topos(isl.CFrame * CFrame.new(0,60,0))
            end
        end
    end
end)
end

if not World2 then
    v491:AddParagraph({
        Title =3D "Raid Law Only Sea 2",
        Content =3D ""
    })
else

local =5F =3D v491:AddSection({"Raid Law Sea 2"})
v491:AddButton({
    Title =3D "Auto Buy Chip Law",
    Description =3D "",
    Value =3D false,
    Callback =3D function()
        local v1069 =3D {[1] =3D "BlackbeardReward", [2] =3D "Microchip", =
[3] =3D "2"}
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
(unpack(v1069))
    end
})
v491:AddButton({
    Title =3D "Auto Start Raid Law",
    Value =3D false,
    Callback =3D function()
        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.Ra=
idSummon.Button.Main.ClickDetector)
    end
})
v491:AddToggle({
    Name =3D "Auto Farm Law Raid",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1070)
        =5FG.AutoLawRaid =3D v1070
    end
})
spawn(function()
    while wait() do
        if =5FG.AutoLawRaid then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Or=
der") then
                    for =5F, v1072 in pairs(game:GetService("Workspace").E=
nemies:GetChildren()) do
                        if v1072.Name =3D=3D "Order" and v1072:FindFirstCh=
ild("Humanoid") and v1072:FindFirstChild("HumanoidRootPart") and v1072.Hum=
anoid.Health > 0 then
                            repeat
                                task.wait()
                                AutoHaki()
                                EquipWeapon(=5FG.SelectWeapon)
                                v1072.HumanoidRootPart.CanCollide =3D fals=
e
                                v1072.Humanoid.WalkSpeed =3D 0
                                topos(v1072.HumanoidRootPart.CFrame * CFra=
me.new(0, 30, 0))
                                sethiddenproperty(game:GetService("Players=
").LocalPlayer, "SimulationRadius", math.huge)
                            until not =5FG.AutoLawRaid or not v1072.Parent=
 or v1072.Humanoid.Health <=3D 0
                        end
                    end
                else
                    NeedAttacking =3D true
                    if game:GetService("ReplicatedStorage"):FindFirstChild=
("Order") then
                        topos(game:GetService("ReplicatedStorage"):FindFir=
stChild("Order").HumanoidRootPart.CFrame * CFrame.new(5, 10, 2))
                    end
                end
            end)
        end
    end
end)
end
local =5F =3D v493:AddSection({"Teleport Island"})
local function v1116(v1114)
    pcall(function()
        if type(topos) =3D=3D "function" then
            topos(v1114)
        else
            local l=5FLocalPlayer=5F17 =3D game:GetService("Players").Loca=
lPlayer
            if l=5FLocalPlayer=5F17 and l=5FLocalPlayer=5F17.Character and=
 l=5FLocalPlayer=5F17.Character:FindFirstChild("HumanoidRootPart") then
                l=5FLocalPlayer=5F17.Character.HumanoidRootPart.CFrame =3D=
 v1114
            end
        end
    end)
end
local v1117 =3D nil
if not World1 then
    if World2 then
        v1117 =3D {
            "The Cafe",
            "Frist Spot",
            "Dark Area",
            "Flamingo Mansion",
            "Flamingo Room",
            "Green Zone",
            "Factory",
            "Colossuim",
            "Zombie Island",
            "Two Snow Mountain",
            "Punk Hazard",
            "Cursed Ship",
            "Ice Castle",
            "Forgotten Island",
            "Ussop Island",
            "Mini Sky Island"
        }
    elseif World3 then
        v1117 =3D {
            "Mansion",
            "Port Town",
            "Great Tree",
            "Castle On The Sea",
            "MiniSky",
            "Hydra Island",
            "Floating Turtle",
            "Haunted Castle",
            "Ice Cream Island",
            "Peanut Island",
            "Cake Island",
            "Cocoa Island",
            "Candy Island",
            "Tiki Outpost",
            "Dragon Dojo"
        }
    else
        v1117 =3D {"Spawn"}
    end
else
    v1117 =3D {
        "WindMill",
        "Marine",
        "Middle Town",
        "Jungle",
        "Pirate Village",
        "Desert",
        "Snow Island",
        "MarineFord",
        "Colosseum",
        "Sky Island 1",
        "Sky Island 2",
        "Sky Island 3",
        "Prison",
        "Magma Village",
        "Under Water Island",
        "Fountain City",
        "Shank Room",
        "Mob Island"
    }
end
v493:AddDropdown({
    Name =3D "Select Island",
    Description =3D "",
    Options =3D v1117,
    Default =3D v1117[1],
    Callback =3D function(v1118)
        =5FG.SelectIsland =3D v1118
    end
})
v493:AddToggle({
    Name =3D "Auto Tween To Island",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v)
        =5FG.TeleportIsland =3D v
        StopTween(=5FG.TeleportIsland)
    end
})

local MansionCFrame =3D CFrame.new(-12471.17, 374.94, -7551.678)

local Islands =3D {
    ["WindMill"] =3D CFrame.new(979.799, 16.516, 1429.047),
    ["Marine"] =3D CFrame.new(-2566.43, 6.856, 2045.256),
    ["Middle Town"] =3D CFrame.new(-690.331, 15.094, 1582.238),
    ["Jungle"] =3D CFrame.new(-1612.796, 36.852, 149.128),
    ["Pirate Village"] =3D CFrame.new(-1181.309, 4.751, 3803.546),
    ["Desert"] =3D CFrame.new(944.158, 20.92, 4373.3),
    ["Snow Island"] =3D CFrame.new(1347.807, 104.668, -1319.737),
    ["MarineFord"] =3D CFrame.new(-4914.821, 50.964, 4281.028),
    ["Magma Village"] =3D CFrame.new(-5247.716, 12.884, 8504.969),
    ["Fountain City"] =3D CFrame.new(5127.128, 59.501, 4105.446),
    ["Sky Island 1"] =3D CFrame.new(-483.734, 332.038, 595.327),
    ["Sky Island 2"] =3D CFrame.new(2284.414, 15.152, 875.725),
    ["Sky Island 3"] =3D CFrame.new(-2448.53, 73.016, -3210.631),
    ["Prison"] =3D CFrame.new(4875.33, 5.652, 734.85),
    ["Colosseum"] =3D CFrame.new(-11.311, 29.277, 2771.522),
    ["Under Water Island"] =3D CFrame.new(-2850.201, 7.392, 5354.993),
    ["Shank Room"] =3D CFrame.new(-1442.166, 29.879, -28.355),
    ["Mob Island"] =3D CFrame.new(-2850.201, 7.392, 5354.993),
    ["The Cafe"] =3D CFrame.new(-380.479, 77.22, 255.826),
    ["Dark Area"] =3D CFrame.new(3780.03, 22.652, -3498.586),
    ["Factory"] =3D CFrame.new(424.127, 211.162, -427.54),
    ["Colossuim"] =3D CFrame.new(-1503.622, 219.796, 1369.31),
    ["Two Snow Mountain"] =3D CFrame.new(753.143, 408.236, -5274.615),
    ["Punk Hazard"] =3D CFrame.new(-6127.654, 15.952, -5040.286),
    ["Ussop Island"] =3D CFrame.new(4816.862, 8.46, 2863.82),
    ["Mini Sky Island"] =3D CFrame.new(-288.741, 49326.316, -35248.594),
    ["Great Tree"] =3D CFrame.new(2681.274, 1682.809, -7190.985),
    ["Port Town"] =3D CFrame.new(-226.751, 20.603, 5538.34),
    ["Hydra Island"] =3D CFrame.new(5291.249, 1005.443, 393.762),
    ["Floating Turtle"] =3D CFrame.new(-13274.528, 531.821, -7579.223),
    ["Mansion"] =3D MansionCFrame,
    ["Haunted Castle"] =3D CFrame.new(-9515.372, 164.006, 5786.061),
    ["Ice Cream Island"] =3D CFrame.new(-902.568, 79.932, -10988.848),
    ["Peanut Island"] =3D CFrame.new(-2062.748, 50.474, -10232.568),
    ["Cake Island"] =3D CFrame.new(-1884.775, 19.328, -11666.897),
    ["Cocoa Island"] =3D CFrame.new(87.943, 73.555, -12319.465),
    ["Candy Island"] =3D CFrame.new(-1014.424, 149.111, -14555.963),
    ["Tiki Outpost"] =3D CFrame.new(-16218.683, 9.086, 445.618),
    ["Dragon Dojo"] =3D CFrame.new(5743.319, 1206.91, 936.011)
}

local function TryPortal(position)
    local success =3D pcall(function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("requestEntrance", position)
    end)
    return success
end

local function TeleportToIsland()
    if not =5FG.SelectIsland or not =5FG.TeleportIsland then return end

    local cf =3D Islands[=5FG.SelectIsland]
    if not cf then return end

    if =5FG.SelectIsland =3D=3D "Mansion" then
        if not TryPortal(Vector3.new(cf.X, cf.Y, cf.Z)) then
            v1116(cf)
        end
        return
    end

    if =5FG.SelectIsland =3D=3D "Castle On The Sea" then
        if not TryPortal(Vector3.new(-5083.26, 314.606, -3175.673)) then
            v1116(MansionCFrame)
        end
        return
    end

    v1116(cf)
end

task.spawn(function()
    while task.wait(0.5) do
        if =5FG.TeleportIsland then
            TeleportToIsland()
        end
    end
end)
local =5F =3D v493:AddSection({"Teleport Sea"})
v493:AddButton({
    Name =3D "Sea 1",
    Description =3D "",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("TravelMain")
    end
})
v493:AddButton({
    Name =3D "Sea 2",
    Description =3D "",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("TravelDressrosa")
    end
})
v493:AddButton({
    Name =3D "Sea 3",
    Description =3D "",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("TravelZou")
    end
})


local TyrantStatus =3D v499:AddParagraph({
    Title =3D "Tyrant of the Skies",
    Desc =3D "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Workspace").Enemies:FindFirstChild("Tyrant=
 of the Skies") then
                TyrantStatus:SetDesc("Status : =E2=9C=85=EF=B8=8F")
            else
                TyrantStatus:SetDesc("Status : =E2=9D=8C=EF=B8=8F")
            end
        end
    end)
end)
local CheckRip =3D v499:AddParagraph({
    Title =3D "Rip=5FIndra",
    Desc =3D "Status: "
})
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("rip=5F=
indra True Form") 
            or game:GetService("Workspace").Enemies:FindFirstChild("rip=5F=
indra") then
                CheckRip:SetDesc("Status : =E2=9C=85=EF=B8=8F")
            else
                CheckRip:SetDesc("Status : =E2=9D=8C=EF=B8=8F")
            end
        end)
    end
end)
local CheckDoughKing =3D v499:AddParagraph({
    Title =3D "Dough King",
    Desc =3D "Status: "
})
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Dough =
King") 
            or game:GetService("Workspace").Enemies:FindFirstChild("Dough =
King") then
                CheckDoughKing:SetDesc("Status : =E2=9C=85=EF=B8=8F")
            else
                CheckDoughKing:SetDesc("Status : =E2=9D=8C=EF=B8=8F")
            end
        end)
    end
end)
local EliteHunter =3D v499:AddParagraph({
    Title =3D "Elite Hunter",
    Desc =3D "Status: "
})
spawn(function()
    while wait() do
        pcall(function()
            local rs =3D game:GetService("ReplicatedStorage")
            local ws =3D game:GetService("Workspace").Enemies
            local progress =3D rs.Remotes.CommF=5F:InvokeServer("EliteHunt=
er", "Progress")
            if rs:FindFirstChild("Diablo") or rs:FindFirstChild("Deandre")=
 or rs:FindFirstChild("Urban")
            or ws:FindFirstChild("Diablo") or ws:FindFirstChild("Deandre")=
 or ws:FindFirstChild("Urban") then
                EliteHunter:SetDesc("Status : =E2=9C=85=EF=B8=8F | Killed:=
 " .. progress)
            else
                EliteHunter:SetDesc("Status : =E2=9D=8C=EF=B8=8F | Killed:=
 " .. progress)
            end
        end)
    end
end)
local Pullever =3D v499:AddParagraph({
    Title =3D "Pull Lever",
    Desc =3D "Status: "
})
spawn(function()
    while wait() do
        pcall(function()
            if game.ReplicatedStorage.Remotes.CommF=5F:InvokeServer("Check=
TempleDoor") then
                Pullever:SetDesc("=E2=9C=85")
            else
                Pullever:SetDesc("=E2=9D=8C")
            end
        end)
    end
end)
local FM =3D v499:AddParagraph({
    Title =3D "Full Moon",
    Desc =3D ""
})
spawn(function()
    while wait() do
        pcall(function()
            local moonId =3D game:GetService("Lighting").Sky.MoonTextureId=

            if moonId =3D=3D "http://www.roblox.com/asset/=3Fid=3D97091494=
31" then
                FM:SetDesc("Moon: 5/5")
            elseif moonId =3D=3D "http://www.roblox.com/asset/=3Fid=3D9709=
149052" then
                FM:SetDesc("Moon: 4/5")
            elseif moonId =3D=3D "http://www.roblox.com/asset/=3Fid=3D9709=
143733" then
                FM:SetDesc("Moon: 3/5")
            elseif moonId =3D=3D "http://www.roblox.com/asset/=3Fid=3D9709=
150401" then
                FM:SetDesc("Moon: 2/5")
            elseif moonId =3D=3D "http://www.roblox.com/asset/=3Fid=3D9709=
149680" then
                FM:SetDesc("Moon: 1/5")
            else
                FM:SetDesc("Moon: 0/5")
            end
        end)
    end
end)
local LegendarySword =3D v499:AddParagraph({
    Title =3D "Legendary Sword",
    Desc =3D "Status: "
})
spawn(function()
    pcall(function()
        while wait() do
            local rs =3D game:GetService("ReplicatedStorage").Remotes.Comm=
F=5F   
            if rs:InvokeServer("LegendarySwordDealer", "1") then
                LegendarySword:SetDesc("Shisui")
            elseif rs:InvokeServer("LegendarySwordDealer", "2") then
                LegendarySword:SetDesc("Wando")
            elseif rs:InvokeServer("LegendarySwordDealer", "3") then
                LegendarySword:SetDesc("Saddi")
            else
                LegendarySword:SetDesc("Not Found Legend Swords")
            end
        end
    end)
end)
local Bone =3D v499:AddParagraph({
    Title =3D "Bone",
    Desc =3D ""
})
spawn(function()
    pcall(function()
        while wait() do
            local bones =3D game:GetService("ReplicatedStorage").Remotes.C=
ommF=5F:InvokeServer("Bones", "Check")
            Bone:SetDesc("You Have : " .. tostring(bones) .. " Bones")
        end
    end)
end)


-- // AUTO STATS SYSTEM
local Replicated =3D game:GetService("ReplicatedStorage")
local CommF =3D Replicated:WaitForChild("Remotes"):WaitForChild("CommF=5F"=
)

local AutoStats =3D false
local PointsPerTick =3D 1

local StatsSelect =3D {
    Melee =3D false,
    Defense =3D false,
    Sword =3D false,
    Gun =3D false,
    BloxFruit =3D false,
}

local function AddPoint(Stat, Amount)
    pcall(function()
        CommF:InvokeServer("AddPoint", Stat, Amount, false)
    end)
end

local function DistributePoints()
    while AutoStats do
        task.wait(0.4)

        local player =3D game.Players.LocalPlayer
        local statsFolder =3D player:FindFirstChild("Data")
        if not statsFolder then continue end
        
        local points =3D statsFolder:FindFirstChild("Points")
        if not points or points.Value <=3D 0 then continue end
        
        -- Ver quantos Stats est=C3=83=C2=A3o ativos
        local EnabledStats =3D {}
        for stat, enabled in pairs(StatsSelect) do
            if enabled then
                table.insert(EnabledStats, stat)
            end
        end
        
        if #EnabledStats > 0 then
            local amountEach =3D math.floor(PointsPerTick / #EnabledStats)=

            if amountEach < 1 then amountEach =3D 1 end
            
            for =5F, stat in ipairs(EnabledStats) do
                AddPoint(stat, amountEach)
            end
        end
    end
end

-- UI
v497:AddSlider({
    Name =3D "Points Amount",
    Min =3D 1,
    Max =3D 500,
    Increase =3D 1,
    Default =3D 1,
    Callback =3D function(v)
        PointsPerTick =3D v
    end
})

v497:AddToggle({
    Name =3D "Auto Status",
    Default =3D false,
    Callback =3D function(v)
        AutoStats =3D v
        if v then
            task.spawn(DistributePoints)
        end
    end
})

local Section =3D v497:AddSection({"Select Status"})

v497:AddToggle({
    Name =3D "Melee",
    Default =3D false,
    Callback =3D function(v)
        StatsSelect.Melee =3D v
    end
})

v497:AddToggle({
    Name =3D "Defense",
    Default =3D false,
    Callback =3D function(v)
        StatsSelect.Defense =3D v
    end
})

v497:AddToggle({
    Name =3D "Sword",
    Default =3D false,
    Callback =3D function(v)
        StatsSelect.Sword =3D v
    end
})

v497:AddToggle({
    Name =3D "Gun",
    Default =3D false,
    Callback =3D function(v)
        StatsSelect.Gun =3D v
    end
})

v497:AddToggle({
    Name =3D "Fruit",
    Default =3D false,
    Callback =3D function(v)
        StatsSelect.BloxFruit =3D v
    end
})

local =5F =3D v494:AddSection({"Aimbot Nearest"})

local v1 =3D loadstring(game:HttpGet("https://raw.githubusercontent.com/Pl=
ockScripts/Aimbot-skill-config/refs/heads/main/Aimbot.lua"))()

local AimbotEnabled =3D false
local AimPlayers =3D false
local AimMobs =3D false
local IgnoreMobs =3D true

-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
-- FUN=C3=87=C3=83O DE ATUALIZA=C3=87=C3=83O (COMPAT=C3=8DVEL COM SUA L=C3=
=93GICA)
-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
local function UpdateAimbot()
    if not AimbotEnabled then
        v1:SetPlayerSilentAim(false)
        v1:SetNPCSilentAim(false)
        return
    end

    -- Se estiver mirando players
    if AimPlayers then
        v1:SetPlayerSilentAim(true)
        v1:SetNPCSilentAim(false)
        return
    end

    -- Se estiver mirando mobs
    if AimMobs then
        if IgnoreMobs then
            v1:SetNPCSilentAim(false)
        else
            v1:SetNPCSilentAim(true)
        end
        v1:SetPlayerSilentAim(false)
        return
    end

    -- fallback de seguran=C3=A7a
    v1:SetPlayerSilentAim(false)
    v1:SetNPCSilentAim(false)
end

-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
-- TOGGLE PRINCIPAL
-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
v494:AddToggle({
    Name =3D "Aimbot Gun",
    Default =3D false,
    Callback =3D function(v)
        AimbotEnabled =3D v

        if not v then
            v1:Pause()
        else
            v1:Restore()
        end

        UpdateAimbot()
    end
})

-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
-- AIM PLAYERS
-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
v494:AddToggle({
    Name =3D "Aimbot Tap",
    Default =3D false,
    Callback =3D function(v)
        AimPlayers =3D v

        if v then
            AimMobs =3D false
        end

        UpdateAimbot()
    end
})

-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
-- AIM MOBS
-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
v494:AddToggle({
    Name =3D "Aimbot Skills",
    Default =3D false,
    Callback =3D function(v)
        AimMobs =3D v

        if v then
            AimPlayers =3D false
        end

        UpdateAimbot()
    end
})

-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
-- IGNORE MOBS (AGORA FUNCIONAL)
-- =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
v494:AddToggle({
    Name =3D "Ignore Mobs",
    Default =3D true,
    Callback =3D function(v)
        IgnoreMobs =3D v
        UpdateAimbot()
    end
})

local =5F =3D v494:AddSection({"Aimbot skill V2"})
local v1 =3D loadstring(game:HttpGet("https://raw.githubusercontent.com/Pl=
ockScripts/Aimbot-skill-config/refs/heads/main/Aimbot.lua"))()

local AimbotEnabled =3D false
local AimPlayers =3D false
local AimMobs =3D false

v494:AddToggle({
    Name =3D "Enable Aimbot Skill",
    Default =3D false,
    Callback =3D function(v)
        AimbotEnabled =3D v

        if not v then
            v1:Pause()
            v1:SetPlayerSilentAim(false)
            v1:SetNPCSilentAim(false)
        else
            if AimPlayers then
                v1:SetPlayerSilentAim(true)
            end
            if AimMobs then
                v1:SetNPCSilentAim(true)
            end
            v1:Restore()
        end
    end
})

v494:AddToggle({
    Name =3D "Aimbot on Players",
    Default =3D false,
    Callback =3D function(v)
        AimPlayers =3D v

        if v then
            AimMobs =3D false
            v1:SetNPCSilentAim(false)
        end

        if AimbotEnabled then
            v1:SetPlayerSilentAim(v)
        else
            v1:SetPlayerSilentAim(false)
        end
    end
})

v494:AddToggle({
    Name =3D "Aimbot on Mobs",
    Default =3D false,
    Callback =3D function(v)
        AimMobs =3D v

        if v then
            AimPlayers =3D false
            v1:SetPlayerSilentAim(false)
        end

        if AimbotEnabled then
            v1:SetNPCSilentAim(v)
        else
            v1:SetNPCSilentAim(false)
        end
    end
})

local =5F =3D v494:AddSection({"Esp"})
local ESP=5FSIZE=5FFILE =3D "esp=5Fsize=5Fsave.txt"

if isfile(ESP=5FSIZE=5FFILE) then
=9=5FG.ESPSize =3D tonumber(readfile(ESP=5FSIZE=5FFILE)) or 24
else
=9=5FG.ESPSize =3D 24
=9writefile(ESP=5FSIZE=5FFILE, "24")
end

v494:AddSlider({
=9Name =3D "ESP Size",
=9Min =3D 10,
=9Max =3D 40,
=9Default =3D =5FG.ESPSize,
=9Callback =3D function(Value)
=9=9=5FG.ESPSize =3D Value
=9=9writefile(ESP=5FSIZE=5FFILE, tostring(Value))

=9=9for =5F, player in pairs(game:GetService("Players"):GetPlayers()) do
=9=9=9if player.Character and player.Character:FindFirstChild("HumanoidRoo=
tPart") then
=9=9=9=9local hrp =3D player.Character.HumanoidRootPart
=9=9=9=9local esp =3D hrp:FindFirstChild("PlayerESP")

=9=9=9=9if esp then
=9=9=9=9=9for =5F, obj in pairs(esp:GetChildren()) do
=9=9=9=9=9=9if obj:IsA("TextLabel") then
=9=9=9=9=9=9=9obj.TextSize =3D Value
=9=9=9=9=9=9end
=9=9=9=9=9end
=9=9=9=9end
=9=9=9end
=9=9end
=9end
})

for =5F, player in pairs(game:GetService("Players"):GetPlayers()) do
=9if player.Character and player.Character:FindFirstChild("HumanoidRootPar=
t") then
=9=9local hrp =3D player.Character.HumanoidRootPart
=9=9local esp =3D hrp:FindFirstChild("PlayerESP")

=9=9if esp then
=9=9=9for =5F, obj in pairs(esp:GetChildren()) do
=9=9=9=9if obj:IsA("TextLabel") then
=9=9=9=9=9obj.TextSize =3D =5FG.ESPSize
=9=9=9=9end
=9=9=9end
=9=9end
=9end
end


local Players =3D game:GetService("Players")
local RunService =3D game:GetService("RunService")

local LocalPlayer =3D Players.LocalPlayer
local ESP=5FSAVE=5FFILE =3D "esp=5Fplayers=5Fsave.txt"

-- Estado salvo
local ESPPlayer =3D false
if isfile(ESP=5FSAVE=5FFILE) then
=9ESPPlayer =3D readfile(ESP=5FSAVE=5FFILE) =3D=3D "true"
else
=9writefile(ESP=5FSAVE=5FFILE, "false")
end

local Connections =3D {}

-- Remove ESP
local function RemoveESP(player)
=9if player.Character then
=9=9local hrp =3D player.Character:FindFirstChild("HumanoidRootPart")
=9=9if hrp then
=9=9=9local esp =3D hrp:FindFirstChild("PlayerESP")
=9=9=9if esp then
=9=9=9=9esp:Destroy()
=9=9=9end
=9=9end
=9end

=9if Connections[player] then
=9=9Connections[player]:Disconnect()
=9=9Connections[player] =3D nil
=9end
end

-- Criar ESP
local function CreateESP(player)
=9if player =3D=3D LocalPlayer then return end
=9if not ESPPlayer then return end
=9if not player.Character then return end

=9local char =3D player.Character
=9local hrp =3D char:WaitForChild("HumanoidRootPart", 3)
=9local hum =3D char:WaitForChild("Humanoid", 3)

=9if not hrp or not hum then return end

=9RemoveESP(player)

=9local gui =3D Instance.new("BillboardGui")
=9gui.Name =3D "PlayerESP"
=9gui.Adornee =3D hrp
=9gui.Size =3D UDim2.new(0, 220, 0, 40)
=9gui.StudsOffset =3D Vector3.new(0, 3, 0)
=9gui.AlwaysOnTop =3D true
=9gui.MaxDistance =3D 999999
=9gui.LightInfluence =3D 0
=9gui.Parent =3D hrp

=9local nameLabel =3D Instance.new("TextLabel")
=9nameLabel.BackgroundTransparency =3D 1
=9nameLabel.Size =3D UDim2.new(1, 0, 0.5, 0)
=9nameLabel.Position =3D UDim2.new(0, 0, 0, 0)
=9nameLabel.RichText =3D true
    nameLabel.TextColor3 =3D Color3.fromRGB(210,210,210) 
=9nameLabel.TextStrokeTransparency =3D 0
=9nameLabel.TextSize =3D 24
=9nameLabel.Font =3D Enum.Font.SourceSans
=9nameLabel.TextXAlignment =3D Enum.TextXAlignment.Center
=9nameLabel.TextYAlignment =3D Enum.TextYAlignment.Center
=9nameLabel.Parent =3D gui

=9local hpLabel =3D Instance.new("TextLabel")
=9hpLabel.BackgroundTransparency =3D 1
=9hpLabel.Size =3D UDim2.new(1, 0, 0.5, 0)
=9hpLabel.Position =3D UDim2.new(0, 0, 0.5, 0)
=9hpLabel.TextColor3 =3D Color3.fromRGB(0,255,0)
=9hpLabel.TextStrokeTransparency =3D 0
=9hpLabel.TextSize =3D 24
=9hpLabel.Font =3D Enum.Font.SourceSans
=9hpLabel.TextXAlignment =3D Enum.TextXAlignment.Center
=9hpLabel.TextYAlignment =3D Enum.TextYAlignment.Center
=9hpLabel.Parent =3D gui

=9Connections[player] =3D RunService.RenderStepped:Connect(function()

=9=9if not ESPPlayer then
=9=9=9RemoveESP(player)
=9=9=9return
=9=9end

=9=9if not player.Character or hum.Health <=3D 0 then
=9=9=9RemoveESP(player)
=9=9=9return
=9=9end

=9=9local myChar =3D LocalPlayer.Character
=9=9if not myChar then return end

=9=9local myHRP =3D myChar:FindFirstChild("HumanoidRootPart")
=9=9if not myHRP then return end

=9=9local distance =3D math.floor(
=9=9=9(myHRP.Position - hrp.Position).Magnitude
=9=9)

    =9nameLabel.Text =3D "<font color=3D'rgb(235,235,235)'>" .. player.Nam=
e .. "</font> [ "  ..  distance .. "m ]"
=9=9hpLabel.Text =3D "[" .. math.floor(hum.Health) .. "/" .. math.floor(hu=
m.MaxHealth) .. "]"
=9end)
end

-- Setup jogador (resolve spawn + respawn)
local function SetupPlayer(player)
=9if player =3D=3D LocalPlayer then return end

=9player.CharacterAdded:Connect(function()
=9=9if ESPPlayer then
=9=9=9task.wait(0.2)
=9=9=9CreateESP(player)
=9=9end
=9end)

=9if player.Character then
=9=9task.wait(0.2)
=9=9CreateESP(player)
=9end
end

-- Aplicar para jogadores j=C3=A1 no servidor
for =5F,player in ipairs(Players:GetPlayers()) do
=9SetupPlayer(player)
end

-- Jogadores novos
Players.PlayerAdded:Connect(function(player)
=9SetupPlayer(player)
end)

Players.PlayerRemoving:Connect(function(player)
=9RemoveESP(player)
end)

-- Toggle da sua lib
v494:AddToggle({
=9Title =3D "ESP Players",
=9Default =3D ESPPlayer,
=9Callback =3D function(v)
=9=9ESPPlayer =3D v
=9=9writefile(ESP=5FSAVE=5FFILE, tostring(v))

=9=9for =5F,player in ipairs(Players:GetPlayers()) do
=9=9=9if player ~=3D LocalPlayer then
=9=9=9=9if v then
=9=9=9=9=9CreateESP(player)
=9=9=9=9else
=9=9=9=9=9RemoveESP(player)
=9=9=9=9end
=9=9=9end
=9=9end
=9end
})
v494:AddToggle({
    Title =3D "Esp Chest",
    Value =3D false,
    Callback =3D function(v1147)
        =5FG.ChestESP =3D v1147
        if not =5FG.ChestESP then
            UpdateChestESP()
        else
            task.spawn(function()
                while =5FG.ChestESP do
                    UpdateChestESP()
                    task.wait(1)
                end
            end)
        end
    end
})

v494:AddToggle({
    Title =3D "ESP Fruits",
    Value =3D false,
    Callback =3D function(state)
        DevilFruitESP =3D state

        if DevilFruitESP then
            task.spawn(function()
                while DevilFruitESP do
                    local player =3D game:GetService("Players").LocalPlaye=
r
                    local char =3D player.Character
                    if not char or not char:FindFirstChild("HumanoidRootPa=
rt") then
                        task.wait(1)
                        continue
                    end

                    local rootPos =3D char.HumanoidRootPart.Position

                    for =5F,obj in pairs(workspace:GetChildren()) do
                        if obj:IsA("Tool") and string.find(obj.Name,"Fruit=
") and obj.Parent ~=3D char then
                            
                            local basePart =3D obj:FindFirstChild("Handle"=
) or obj.PrimaryPart
                            if not basePart then continue end

                            if not basePart:FindFirstChild("FruitESP") the=
n
                                local gui =3D Instance.new("BillboardGui")=

                                gui.Name =3D "FruitESP"
                                gui.Size =3D UDim2.new(0,200,0,50)
                                gui.StudsOffset =3D Vector3.new(0,2,0)
                                gui.AlwaysOnTop =3D true
                                gui.Adornee =3D basePart
                                gui.Parent =3D basePart

                                local text =3D Instance.new("TextLabel")
                                text.Size =3D UDim2.new(1,0,1,0)
                                text.BackgroundTransparency =3D 1
                                text.TextScaled =3D true
                                text.Font =3D Enum.Font.SourceSans
                                text.TextColor3 =3D Color3.fromRGB(120,0,0=
)
                                text.TextStrokeTransparency =3D 0
                                text.TextStrokeColor3 =3D Color3.fromRGB(0=
,0,0)
                                text.Parent =3D gui
                            end

                            local fruitPos =3D basePart.Position
                            local distance =3D math.floor((rootPos - fruit=
Pos).Magnitude)

                            basePart.FruitESP.TextLabel.Text =3D "Fruit | =
=3F=3F=3F | < "..distance.." >"
                        end
                    end

                    task.wait(0.3)
                end
            end)
        else
            for =5F,obj in pairs(workspace:GetDescendants()) do
                if obj.Name =3D=3D "FruitESP" then
                    obj:Destroy()
                end
            end
        end
    end
})

v494:AddToggle({
    Title =3D "Esp Berry",
    Value =3D false,
    Callback =3D function(v1149)
        Berry =3D v1149
        if not Berry then
            for =5F, v1151 in pairs(game:GetService("CollectionService"):G=
etTagged("BerryBush")) do
                if v1151.Parent:FindFirstChild("BerryESP") then
                    v1151.Parent.BerryESP:Destroy()
                end
            end
        else
            UpdateBerriesESP()
        end
    end
})

    v494:AddSection("Visual")
local vu14 =3D game.Players.LocalPlayer

v494:AddButton({
    "Meteor Rain",
    function()
        if vu14.Character and vu14.Character.PrimaryPart then
            require(game:GetService("ReplicatedStorage").Effect.Container.=
UzothSpec)({
                Position =3D vu14.Character.PrimaryPart.Position
            })
        end
    end
})
local vu14 =3D game.Players.LocalPlayer

v494:AddButton({
    "Remove Portal Dash Cooldown",
    function()
        local portal =3D vu14.Backpack:FindFirstChild("Portal-Portal") or =
(vu14.Character and vu14.Character:FindFirstChild("Portal-Portal"))
        if portal then
            local connections =3D getconnections(portal.Activated)
            for i =3D 1, #connections do
                local conn =3D connections[i]
                local func =3D conn.Function
                if func and #debug.getupvalues(func) =3D=3D 9 then
                    task.spawn(function()
                        while portal and portal:IsDescendantOf(game) do
                            debug.setupvalue(func, 2, 0)
                            task.wait(0.1) 
                        end
                    end)
                end
            end
        end
    end
})

local =5F =3D v495:AddSection({"Fighting Style"})
local Players =3D game:GetService("Players")
local RunService =3D game:GetService("RunService")
local ReplicatedStorage =3D game:GetService("ReplicatedStorage")
local LP =3D Players.LocalPlayer

local SEA
if game.PlaceId =3D=3D 2753915549 or game.PlaceId =3D=3D 85211729168715 th=
en
=9SEA =3D 1
elseif game.PlaceId =3D=3D 4442272183 or game.PlaceId =3D=3D 7909170326565=
7 then
=9SEA =3D 2
elseif game.PlaceId =3D=3D 7449423635 or game.PlaceId =3D=3D 1001173311230=
89 then
=9SEA =3D 3
else
=9return
end

=5FG.BuyFly =3D false
local BV, BG
local TargetPos =3D nil

local NPCS =3D {
=9BlackLeg=3D{[1]=3D{Vector3.new(-988,13,3996)},[2]=3D{Vector3.new(-4750.6=
1, 35.08, -4846.33)},[3]=3D{Vector3.new(-5043.64,371.35,-3183.40)}},
=9Electro=3D{[1]=3D{Vector3.new(-5382.27,14.15,-2150.34)},[2]=3D{Vector3.n=
ew(-4863.81, 35.08, -4767.54)},[3]=3D{Vector3.new(-4993.20,314.56,-3198.06=
)}},
=9FishmanKarate=3D{[1]=3D{Vector3.new(61584.35,18.85,988.89)},[2]=3D{Vecto=
r3.new(-4960.04, 35.08, -4662.67)},[3]=3D{Vector3.new(-5017.39,371.35,-318=
7.53)}},
=9Superhuman=3D{[2]=3D{Vector3.new(1378.05, 247.43, -5189.37)},[3]=3D{Vect=
or3.new(-4997.53,371.35,-3197.46)}},
=9DeathStep=3D{[2]=3D{Vector3.new(6360.04, 296.67, -6763.93)},[3]=3D{Vecto=
r3.new(-4997.64,314.56,-3220.37)}},
=9SharkmanKarate=3D{[2]=3D{Vector3.new(-2602.40, 239.22, -10314.75)},[3]=
=3D{Vector3.new(-4970.48,314.56,-3225.04)}},
=9ElectricClaw=3D{[3]=3D{Vector3.new(-10369.83,331.69,-10126.49)}},
=9DragonTalon=3D{[3]=3D{Vector3.new(5662.03,1211.32,858.60)}},
=9GodHuman=3D{[3]=3D{Vector3.new(-13775.56,334.66,-9877.67)}},
=9SanguineArt=3D{[3]=3D{Vector3.new(-16514.86,23.18,-190.84)}}
}

local function HRP()
=9return LP.Character and LP.Character:FindFirstChild("HumanoidRootPart")
end

local LV, AO
local TargetPos

local function EnsureFly()
=9local hrp =3D HRP()
=9if not hrp then return end

=9if not LV or LV.Parent ~=3D hrp then
=9=9if LV then LV:Destroy() end
=9=9LV =3D Instance.new("LinearVelocity")
=9=9LV.Attachment0 =3D hrp:FindFirstChildOfClass("Attachment") or Instance=
.new("Attachment", hrp)
=9=9LV.MaxForce =3D math.huge
=9=9LV.VectorVelocity =3D Vector3.zero
=9=9LV.Parent =3D hrp
=9end

=9if not AO or AO.Parent ~=3D hrp then
=9=9if AO then AO:Destroy() end
=9=9AO =3D Instance.new("AlignOrientation")
=9=9AO.Attachment0 =3D hrp:FindFirstChildOfClass("Attachment")
=9=9AO.MaxTorque =3D math.huge
=9=9AO.Responsiveness =3D 200
=9=9AO.Parent =3D hrp
=9end
end

local function StopFly()
=9RunService:UnbindFromRenderStep("BuyFly")
=9if LV then LV:Destroy() LV=3Dnil end
=9if AO then AO:Destroy() AO=3Dnil end
=9TargetPos =3D nil
end

local function FlyTo(pos)
=9TargetPos =3D pos

=9RunService:BindToRenderStep("BuyFly", Enum.RenderPriority.Character.Valu=
e + 1, function()
=9=9if not =5FG.BuyFly then StopFly() return end

=9=9local hrp =3D HRP()
=9=9if not hrp then return end

=9=9EnsureFly()

=9=9for =5F,v in ipairs(LP.Character:GetDescendants()) do
=9=9=9if v:IsA("BasePart") then v.CanCollide =3D false end
=9=9end

=9=9local delta =3D TargetPos - hrp.Position
=9=9local dist =3D delta.Magnitude

=9=9if dist <=3D 3 then
=9=9=9LV.VectorVelocity =3D Vector3.zero
=9=9=9hrp.AssemblyLinearVelocity =3D Vector3.zero
=9=9=9hrp.CFrame =3D CFrame.new(TargetPos)
=9=9=9return
=9=9end

=9=9local dir =3D delta.Unit
=9=9LV.VectorVelocity =3D dir * math.clamp(dist * 6, 120, 330)
=9=9AO.CFrame =3D CFrame.lookAt(hrp.Position, hrp.Position + dir)
=9end)
end

local function Buy(style, remote)
=9task.spawn(function()
=9=9local pos =3D NPCS[style] and NPCS[style][SEA]
=9=9if not pos then return end

=9=9FlyTo(pos[1])

=9=9repeat task.wait()
=9=9until (HRP() and (HRP().Position - pos[1]).Magnitude <=3D 4) or not =
=5FG.BuyFly

=9=9if =5FG.BuyFly then
=9=9=9ReplicatedStorage.Remotes.CommF=5F:InvokeServer(remote)
=9=9end
=9end)
end

LP.CharacterAdded:Connect(function()
=9task.wait(0.4)
=9if =5FG.BuyFly and TargetPos then
=9=9FlyTo(TargetPos)
=9end
end)
local function StopAllBuy()
=9=5FG.BuyFly =3D false
=9StopFly()
end

v495:AddToggle({
=9Title =3D "Buy Black Leg",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("BlackLeg","BuyBlackLeg")
=9=9end
=9end
})

v495:AddToggle({
=9Title =3D "Buy Electro",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("Electro","BuyElectro")
=9=9end
=9end
})

v495:AddToggle({
=9Title =3D "Buy Fishman Karate",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("FishmanKarate","BuyFishmanKarate")
=9=9end
=9end
})

v495:AddToggle({
=9Title =3D "Buy Superhuman",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("Superhuman","BuySuperhuman")
=9=9end
=9end
})

v495:AddToggle({
=9Title =3D "Buy Death Step",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("DeathStep","BuyDeathStep")
=9=9end
=9end
})

v495:AddToggle({
=9Title =3D "Buy Sharkman Karate",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("SharkmanKarate","BuySharkmanKarate")
=9=9end
=9end
})

v495:AddToggle({
=9Title =3D "Buy Electric Claw",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("ElectricClaw","BuyElectricClaw")
=9=9end
=9end
})

v495:AddToggle({
=9Title =3D "Buy Dragon Talon",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("DragonTalon","BuyDragonTalon")
=9=9end
=9end
})

v495:AddToggle({
=9Title =3D "Buy God Human",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("GodHuman","BuyGodhuman")
=9=9end
=9end
})

v495:AddToggle({
=9Title =3D "Buy Sanguine Art",
=9Value =3D false,
=9Callback =3D function(v)
=9=9StopAllBuy()
=9=9if v then
=9=9=9=5FG.BuyFly =3D true
=9=9=9Buy("SanguineArt","BuySanguineArt")
=9=9end
=9end
})

local =5F =3D v495:AddSection({"Buy Sea Event Crafting"})
v495:AddButton({
    Title =3D "Craft Dragonheart",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "Dragonheart")
    end
})
v495:AddButton({
    Title =3D "Craft Dragonstorm",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "Dragonstorm")
    end
})
v495:AddButton({
    Title =3D "Craft DinoHood",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "DinoHood")
    end
})
v495:AddButton({
    Title =3D "Craft SharkTooth",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "SharkTooth")
    end
})
v495:AddButton({
    Title =3D "Craft TerrorJaw",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "TerrorJaw")
    end
})
v495:AddButton({
    Title =3D "Craft SharkAnchor",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "SharkAnchor")
    end
})
v495:AddButton({
    Title =3D "Craft LeviathanCrown",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "LeviathanCrown")
    end
})
v495:AddButton({
    Title =3D "Craft LeviathanShield",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "LeviathanShield")
    end
})
v495:AddButton({
    Title =3D "Craft LeviathanBoat",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "LeviathanBoat")
    end
})
v495:AddButton({
    Title =3D "Craft LegendaryScroll",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "LegendaryScroll")
    end
})
v495:AddButton({
    Title =3D "Craft MythicalScroll",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("CraftItem", "Craft", "MythicalScroll")
    end
})
local =5F =3D v495:AddSection({"Buy Haki,Soru..."})
v495:AddButton({
    Title =3D "Buy Geppo $10,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyHaki", "Geppo")
    end
})
v495:AddButton({
    Title =3D "Buy Buso Haki $25,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyHaki", "Buso")
    end
})
v495:AddButton({
    Title =3D "Buy Soru $25,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyHaki", "Soru")
    end
})
v495:AddButton({
    Title =3D "Buy Observation Haki $750,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("KenTalk", "Buy")
    end
})
local =5F =3D v495:AddSection({"Buy Sword,Gun"})
v495:AddButton({
    Title =3D "Buy Cutlass $1,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Cutlass")
    end
})
v495:AddButton({
    Title =3D "Buy Katana $1,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Katana")
    end
})
v495:AddButton({
    Title =3D "Buy Iron Mace $25,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Iron Mace")
    end
})
v495:AddButton({
    Title =3D "Buy Dual Katana $12,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Duel Katana")
    end
})
v495:AddButton({
    Title =3D "Buy Triple Katana $60,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Triple Katana")
    end
})
v495:AddButton({
    Title =3D "Buy Pipe $100,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Pipe")
    end
})
v495:AddButton({
    Title =3D "Buy Dual-Headed Blade $400,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Dual-Headed Blade")
    end
})
v495:AddButton({
    Title =3D "Buy Bisento $1,200,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Bisento")
    end
})
v495:AddButton({
    Title =3D "Buy Soul Cane $750,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Soul Cane")
    end
})
v495:AddButton({
    Title =3D "Buy Pole V2 5,000F",
    Callback =3D function()
        game.ReplicatedStorage.Remotes.CommF=5F:InvokeServer("ThunderGodTa=
lk")
    end
})
v495:AddButton({
    Title =3D "Buy Slingshot $5,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Slingshot")
    end
})
v495:AddButton({
    Title =3D "Buy Musket $8,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Musket")
    end
})
v495:AddButton({
    Title =3D "Buy Flintlock $10,500",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Flintlock")
    end
})
v495:AddButton({
    Title =3D "Refined Slingshot $30,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Refined Flintlock")
    end
})
v495:AddButton({
    Title =3D "Buy Refined Flintlock $65,000",
    Callback =3D function()
        local v1157 =3D {[1] =3D "BuyItem", [2] =3D "Refined Flintlock"}
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
(unpack(v1157))
    end
})
v495:AddButton({
    Title =3D "Buy Cannon $100,000",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BuyItem", "Cannon")
    end
})
v495:AddButton({
    Title =3D "Buy Kabucha 1,500F",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BlackbeardReward", "Slingshot", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BlackbeardReward", "Slingshot", "2")
    end
})
v495:AddButton({
    Title =3D "Buy Bizarre Rifle 250 Ectoplasm",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("Ectoplasm", "Buy", 1)
    end
})
v495:AddButton({
    Title =3D "Buy Black Cape $50,000",
    Callback =3D function()
        local v1158 =3D {[1] =3D "BuyItem", [2] =3D "Black Cape"}
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
(unpack(v1158))
    end
})
v495:AddButton({
    Title =3D "Swordsman Hat $150,000",
    Callback =3D function()
        local v1159 =3D {[1] =3D "BuyItem", [2] =3D "Swordsman Hat"}
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
(unpack(v1159))
    end
})
v495:AddButton({
    Title =3D "Buy Tomoe Ring $500,000",
    Callback =3D function()
        local v1160 =3D {[1] =3D "BuyItem", [2] =3D "Tomoe Ring"}
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
(unpack(v1160))
    end
})
local =5F =3D v495:AddSection({"Reset Stats , Random Race"})
v495:AddButton({
    Title =3D "buy Ghoul",
    Description =3D "",
    Callback =3D function()
        local v1162 =3D {[1] =3D "Ectoplasm", [2] =3D "Change", [3] =3D 4}=

        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
(unpack(v1162))
    end
})
v495:AddButton({
    Title =3D "buy Cyborg",
    Description =3D "",
    Callback =3D function()
        local v1163 =3D {[1] =3D "CyborgTrainer", [2] =3D "Buy"}
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
(unpack(v1163))
    end
})
v495:AddButton({
    Title =3D "Reset Stats 2,500F",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BlackbeardReward", "Refund", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BlackbeardReward", "Refund", "2")
    end
})
v495:AddButton({
    Title =3D "Random Race 3,000F",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BlackbeardReward", "Reroll", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("BlackbeardReward", "Reroll", "2")
    end
})

local =5F =3D v496:AddSection({"Join Server"})
v496:AddTextBox({
        Name =3D "Job ID",
        PlaceholderText =3D "Paste the Job ID here...",
        Callback =3D function(p215)
            if p215 ~=3D "" then
                game:GetService("TeleportService"):TeleportToPlaceInstance=
(game.PlaceId, p215)
            end
        end
    })
v496:AddButton({
    Title =3D "Join Clipboard",
    Description =3D "Join server from copied JobId",
    Callback =3D function()
        local TeleportService =3D game:GetService("TeleportService")
        local Players =3D game:GetService("Players")
        local LocalPlayer =3D Players.LocalPlayer

        local jobId =3D tostring(getclipboard())

        if jobId and jobId ~=3D "" then
            TeleportService:TeleportToPlaceInstance(game.PlaceId, jobId, L=
ocalPlayer)
        else
            warn("Clipboard vazio ou inv=C3=A1lido")
        end
    end
})

local =5F =3D v496:AddSection({"Settings"})
v496:AddToggle({
    Name =3D "Fast Attack",
    Description =3D "",
    Default =3D true,
    Callback =3D function(value)
        =5FG.AutoAttack =3D value
        if value then
            print("")
        else
            print("")
        end
    end
})

local v1 =3D next
local v2 =3D {
    game.ReplicatedStorage.Util,
    game.ReplicatedStorage.Common,
    game.ReplicatedStorage.Remotes,
    game.ReplicatedStorage.Assets,
    game.ReplicatedStorage.FX,
}
local v3 =3D nil
local u4 =3D nil
local u5 =3D nil

while true do
    local v6

    v3, v6 =3D v1(v2, v3)

    if v3 =3D=3D nil then
        break
    end

    local v7 =3D next
    local v8, v9 =3D v6:GetChildren()

    while true do
        local v10

        v9, v10 =3D v7(v8, v9)

        if v9 =3D=3D nil then
            break
        end
        if v10:IsA('RemoteEvent') and v10:GetAttribute('Id') then
            u5 =3D v10:GetAttribute('Id')
            u4 =3D v10
        end
    end

    v6.ChildAdded:Connect(function(p11)
        if p11:IsA('RemoteEvent') and p11:GetAttribute('Id') then
            u5 =3D p11:GetAttribute('Id')
            u4 =3D p11
        end
    end)
end

task.spawn(function()
    while task.wait(0.0001) do
        -- S=C3=B3 executa se o toggle estiver ativado
        if =5FG.AutoAttack then
            local =5FCharacter =3D game.Players.LocalPlayer.Character
            local v13

            if =5FCharacter then
                v13 =3D =5FCharacter:FindFirstChild('HumanoidRootPart')
            else
                v13 =3D =5FCharacter
            end

            local v14, v15, v16 =3D ipairs({
                workspace.Enemies,
                workspace.Characters,
            })
            local u17 =3D {}

            while true do
                local v18

                v16, v18 =3D v14(v15, v16)

                if v16 =3D=3D nil then
                    break
                end

                local v19, v20, v21 =3D ipairs(v18 and v18:GetChildren() o=
r {})

                while true do
                    local v22

                    v21, v22 =3D v19(v20, v21)

                    if v21 =3D=3D nil then
                        break
                    end

                    local =5FHumanoidRootPart =3D v22:FindFirstChild('Huma=
noidRootPart')
                    local =5FHumanoid =3D v22:FindFirstChild('Humanoid')

                    if v22 ~=3D =5FCharacter and (=5FHumanoidRootPart and =
(=5FHumanoid and (=5FHumanoid.Health > 0 and (=5FHumanoidRootPart.Position=
 - v13.Position).Magnitude <=3D 60))) then
                        local v25, v26, v27 =3D ipairs(v22:GetChildren())

                        while true do
                            local v28

                            v27, v28 =3D v25(v26, v27)

                            if v27 =3D=3D nil then
                                break
                            end
                            if v28:IsA('BasePart') and (=5FHumanoidRootPar=
t.Position - v13.Position).Magnitude <=3D 60 then
                                u17[#u17 + 1] =3D {v22, v28}
                            end
                        end
                    end
                end
            end

            local =5FTool =3D =5FCharacter:FindFirstChildOfClass('Tool')

            if #u17 > 0 and (=5FTool and (=5FTool:GetAttribute('WeaponType=
') =3D=3D 'Melee' or =5FTool:GetAttribute('WeaponType') =3D=3D 'Sword')) t=
hen
                pcall(function()
                    require(game.ReplicatedStorage.Modules.Net):RemoteEven=
t('RegisterHit', true)
                    game.ReplicatedStorage.Modules.Net['RE/RegisterAttack'=
]:FireServer()

                    local =5FHead =3D u17[1][1]:FindFirstChild('Head')

                    if =5FHead then
                        game.ReplicatedStorage.Modules.Net['RE/RegisterHit=
']:FireServer(=5FHead, u17, {}, tostring(game.Players.LocalPlayer.UserId):=
sub(2, 4) .. tostring(coroutine.running()):sub(11, 15))
                        cloneref(u4):FireServer(string.gsub('RE/RegisterHi=
t', '.', function(p31)
                            return string.char(bit32.bxor(string.byte(p31)=
, math.floor(workspace:GetServerTimeNow() / 10 % 10) + 1))
                        end), bit32.bxor(u5 + 909090, game.ReplicatedStora=
ge.Modules.Net.seed:InvokeServer() * 2), =5FHead, u17)
                    end
                end)
            end
        end
    end
end)
v496:AddToggle({
    Name =3D "Bring Mob",
    Description =3D "",
    Default =3D true,
    Callback =3D function(v1165)
        =5FG.BringMonster =3D v1165
        StopTween(=5FG.BringMonster)
    end
})
spawn(function()
    while task.wait() do
        pcall(function()
            CheckQuest()
            for =5F, v1167 in pairs(game:GetService("Workspace").Enemies:G=
etChildren()) do
                if =5FG.BringMonster and (StartBring and v1167.Name =3D=3D=
 MonFarm or v1167.Name =3D=3D Mon and v1167:FindFirstChild("Humanoid") and=
 v1167:FindFirstChild("HumanoidRootPart") and v1167.Humanoid.Health > 0 an=
d (v1167.HumanoidRootPart.Position - game:GetService("Players").LocalPlaye=
r.Character.HumanoidRootPart.Position).Magnitude <=3D 320) then
                    if v1167.Name =3D=3D "Factory Staff" then
                        if (v1167.HumanoidRootPart.Position - PosMon.Posit=
ion).Magnitude <=3D 250 then
                            v1167.Head.CanCollide =3D false
                            v1167.HumanoidRootPart.CanCollide =3D false
                            v1167.HumanoidRootPart.Size =3D Vector3.new(60=
, 60, 60)
                            v1167.HumanoidRootPart.CFrame =3D PosMon
                            if v1167.Humanoid:FindFirstChild("Animator") t=
hen
                                v1167.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").L=
ocalPlayer, "SimulationRadius", math.huge)
                        end
                    elseif (v1167.Name =3D=3D MonFarm or v1167.Name =3D=3D=
 Mon) and (v1167.HumanoidRootPart.Position - PosMon.Position).Magnitude <=
=3D 320 then
                        v1167.HumanoidRootPart.Size =3D Vector3.new(60, 60=
, 60)
                        v1167.HumanoidRootPart.CFrame =3D PosMon
                        v1167.HumanoidRootPart.CanCollide =3D false
                        v1167.Head.CanCollide =3D false
                        if v1167.Humanoid:FindFirstChild("Animator") then
                            v1167.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "Simul=
ationRadius", math.huge)
                    end
                end
            end
        end)
    end
end)
function InMyNetWork(v1168)
    if not isnetworkowner then
        if (v1168.Position - game.Players.LocalPlayer.Character.HumanoidRo=
otPart.Position).Magnitude > 320 then
            return false
        else
            return true
        end
    else
        return isnetworkowner(v1168)
    end
end
local Players =3D game:GetService("Players")
local l=5FLocalPlayer=5F18 =3D Players.LocalPlayer

-- arquivos de save
local SPEED=5FSAVE=5FFILE =3D "walkspeed=5Fsave.txt"
local JUMP=5FSAVE=5FFILE =3D "jump=5Fsave.txt"

-- carrega valores salvos
if isfile(SPEED=5FSAVE=5FFILE) then
=9getgenv().WalkSpeedValue =3D tonumber(readfile(SPEED=5FSAVE=5FFILE)) or =
58
else
=9getgenv().WalkSpeedValue =3D 58
end

if isfile(JUMP=5FSAVE=5FFILE) then
=9getgenv().JumpValue =3D tonumber(readfile(JUMP=5FSAVE=5FFILE)) or 58
else
=9getgenv().JumpValue =3D 58
end

local function v1135(v1133)
=9local v1134 =3D v1133:WaitForChild("Humanoid", 5)
=9if v1134 then
=9=9v1134.WalkSpeed =3D getgenv().WalkSpeedValue
=9=9v1134.JumpPower =3D getgenv().JumpValue

=9=9v1134:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
=9=9=9v1134.WalkSpeed =3D getgenv().WalkSpeedValue
=9=9end)

=9=9v1134:GetPropertyChangedSignal("JumpPower"):Connect(function()
=9=9=9v1134.JumpPower =3D getgenv().JumpValue
=9=9end)
=9end
end

l=5FLocalPlayer=5F18.CharacterAdded:Connect(function(v1136)
=9v1135(v1136)
end)

if l=5FLocalPlayer=5F18.Character then
=9v1135(l=5FLocalPlayer=5F18.Character)
end

v496:AddSlider({
=9Title =3D "Speed",
=9Min =3D 26,
=9Max =3D 300,
=9Default =3D getgenv().WalkSpeedValue,
=9Callback =3D function(v1137)
=9=9getgenv().WalkSpeedValue =3D v1137
=9=9writefile(SPEED=5FSAVE=5FFILE, tostring(v1137))

=9=9local v1138 =3D l=5FLocalPlayer=5F18.Character and l=5FLocalPlayer=5F1=
8.Character:FindFirstChild("Humanoid")
=9=9if v1138 then
=9=9=9v1138.WalkSpeed =3D v1137
=9=9end
=9end
})

v496:AddSlider({
=9Title =3D "Jump",
=9Min =3D 50,
=9Max =3D 500,
=9Default =3D getgenv().JumpValue,
=9Callback =3D function(v1139)
=9=9getgenv().JumpValue =3D v1139
=9=9writefile(JUMP=5FSAVE=5FFILE, tostring(v1139))

=9=9local v1140 =3D l=5FLocalPlayer=5F18.Character and l=5FLocalPlayer=5F1=
8.Character:FindFirstChild("Humanoid")
=9=9if v1140 then
=9=9=9v1140.JumpPower =3D v1139
=9=9end
=9end
})
v496:AddToggle({
    Name =3D "Delete Lava",
    Description =3D "",
    Default =3D false,
    Callback =3D function(v1141)
        =5FG.RemoveLava =3D v1141
    end
})
spawn(function()
    while task.wait(1) do
        if =5FG.RemoveLava then
            for =5F, v1143 in pairs(workspace:GetDescendants()) do
                do
                    local l=5Fv1143=5F0 =3D v1143
                    if l=5Fv1143=5F0:IsA("BasePart") and string.lower(l=5F=
v1143=5F0.Name):find("lava") then
                        pcall(function()
                            l=5Fv1143=5F0:Destroy()
                        end)
                    end
                end
            end
        end
    end
end)

v496:AddToggle({
    Title =3D "Set Home Point",
    Description =3D "",
    Value =3D false,
    Callback =3D function(v1169)
        =5FG.CheckPoint =3D v1169
    end
})
spawn(function()
    while wait() do
        if =5FG.CheckPoint then
            game:GetService("SetSpawnPoint")
        end
    end
end)
v496:AddToggle({Title =3D "Infinite Soru", Value =3D false, Callback =3D f=
unction(v1170)
    =5FG.AutoHaki =3D v1170
end})
spawn(function()
    while task.wait(0.1) do
        if =5FG.AutoHaki then
            pcall(AutoHaki)
        end
    end
end)
v496:AddToggle({
    Title =3D "Auto Active Race V3",
    Description =3D "",
    Value =3D false,
    Callback =3D function(v1171)
        =5FG.AutoRaceV3 =3D v1171
    end
})
spawn(function()
    while wait() do
        pcall(function()
            if =5FG.AutoRaceV3 then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireSer=
ver("ActivateAbility")
            end
        end)
    end
end)
=5FG.AutoRaceV4 =3D false

v496:AddToggle({
    Title =3D "Auto Active Race V4",
    Description =3D "",
    Value =3D false,
    Callback =3D function(state)
        =5FG.AutoRaceV4 =3D state
    end
})

spawn(function()
    while task.wait(0.5) do
        if =5FG.AutoRaceV4 then
            pcall(function()

                local player =3D game.Players.LocalPlayer
                local char =3D player.Character
                if not char then return end

                local energy =3D char:FindFirstChild("RaceEnergy")
                local transformed =3D char:FindFirstChild("RaceTransformed=
")

                if energy and transformed then
                    if energy.Value >=3D 1 and not transformed.Value then
                        
                        local vim =3D game:GetService("VirtualInputManager=
")
                        vim:SendKeyEvent(true, Enum.KeyCode.Y, false, game=
)
                        task.wait(0.1)
                        vim:SendKeyEvent(false, Enum.KeyCode.Y, false, gam=
e)

                        task.wait(5)
                    end
                end

            end)
        end
    end
end)
v496:AddToggle({Title =3D "Infinite Soru", Value =3D false, Callback =3D f=
unction(v1173)
    InfiniteSoru =3D v1173
end})
spawn(function()
    while task.wait(1) do
        if InfiniteSoru and game:GetService("Players").LocalPlayer.Charact=
er:FindFirstChild("HumanoidRootPart") ~=3D "HumanoidRootPart" then
            pcall(function()
                for =5F, v1175 in next, getgc() do
                    if getfenv(v1175).script =3D=3D game.Players.LocalPlay=
er.Character:WaitForChild("Soru") then
                        for v1176, v1177 in pairs(debug.getupvalues(v1175)=
) do
                            if type(v1177) =3D=3D "table" and v1177.LastUs=
e then
                                repeat
                                    task.wait(0.1)
                                    setupvalue(v1175, v1176, {LastAfter =
=3D 0, LastUse =3D 0})
                                until not InfiniteSoru or game:GetService(=
"Players").LocalPlayer.Character.Humanoid.Health <=3D 0
                            end
                        end
                    end
                end
            end)
        end
    end
end)
PosY =3D 30
v496:AddToggle({Title =3D "Dodge No CD", Value =3D false, Callback =3D fun=
ction(v1178)
    DodgewithoutCool =3D v1178
end})
function NoCooldown()
    for =5F, v1180 in next, getgc() do
        if typeof(v1180) =3D=3D "function" and getfenv(v1180).script =3D=
=3D game.Players.LocalPlayer.Character:WaitForChild("Dodge") then
            for v1181, v1182 in next, getupvalues(v1180) do
                if tostring(v1182) =3D=3D "0.4" then
                    setupvalue(v1180, v1181, 0)
                end
            end
        end
    end
end
spawn(function()
    while wait() do
        if DodgewithoutCool then
            pcall(function()
                NoCooldown()
            end)
        end
    end
end)
v496:AddToggle({Title =3D "Infinite Geppo", Value =3D false, Callback =3D =
function(v1183)
    InfiniteGeppo =3D v1183
end})
spawn(function()
    while task.wait(1) do
        if InfiniteGeppo then
            pcall(function()
                for =5F, v1185 in next, getgc() do
                    if getfenv(v1185).script =3D=3D game.Players.LocalPlay=
er.Character:WaitForChild("Geppo") then
                        for v1186, v1187 in next, getupvalues(v1185) do
                            if tostring(v1187) =3D=3D "0" then
                                repeat
                                    wait(0.1)
                                    setupvalue(v1185, v1186, 0)
                                until not InfiniteGeppo or game:GetService=
("Players").LocalPlayer.Character.Humanoid.Health <=3D 0
                            end
                        end
                    end
                end
            end)
        end
    end
end)
v496:AddToggle({
    Title =3D "Walk on Water",
    Default =3D true,
    Callback =3D function(v1188)
        =5FG.WalkWater =3D v1188
    end
})

=5FG.WalkWater =3D true

spawn(function()
    while task.wait() do
        pcall(function()
            if not =5FG.WalkWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size =
=3D Vector3.new(1000, 80, 1000)
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size =
=3D Vector3.new(1000, 112, 1000)
            end
        end)
    end
end)

local Lighting =3D game:GetService("Lighting")
local FULLBRIGHT=5FSAVE=5FFILE =3D "fullbright=5Fsave.txt"

-- Salvar valores originais
local OriginalLighting =3D {
=9Ambient =3D Lighting.Ambient,
=9ColorShift=5FBottom =3D Lighting.ColorShift=5FBottom,
=9ColorShift=5FTop =3D Lighting.ColorShift=5FTop,
=9Brightness =3D Lighting.Brightness,
=9GlobalShadows =3D Lighting.GlobalShadows
}

local function ApplyFullBright(state)
=9if state then
=9=9Lighting.Ambient =3D Color3.new(1, 1, 1)
=9=9Lighting.ColorShift=5FBottom =3D Color3.new(1, 1, 1)
=9=9Lighting.ColorShift=5FTop =3D Color3.new(1, 1, 1)
=9=9Lighting.Brightness =3D 3
=9=9Lighting.GlobalShadows =3D false
=9else
=9=9-- Restaurar original
=9=9Lighting.Ambient =3D OriginalLighting.Ambient
=9=9Lighting.ColorShift=5FBottom =3D OriginalLighting.ColorShift=5FBottom
=9=9Lighting.ColorShift=5FTop =3D OriginalLighting.ColorShift=5FTop
=9=9Lighting.Brightness =3D OriginalLighting.Brightness
=9=9Lighting.GlobalShadows =3D OriginalLighting.GlobalShadows
=9end
end

local FullBrightEnabled =3D false

if isfile(FULLBRIGHT=5FSAVE=5FFILE) then
=9FullBrightEnabled =3D readfile(FULLBRIGHT=5FSAVE=5FFILE) =3D=3D "true"
else
=9writefile(FULLBRIGHT=5FSAVE=5FFILE, "false")
end

ApplyFullBright(FullBrightEnabled)

v496:AddToggle({
=9Title =3D "Full Bright",
=9Value =3D FullBrightEnabled,
=9Callback =3D function(Value)
=9=9FullBrightEnabled =3D Value
=9=9writefile(FULLBRIGHT=5FSAVE=5FFILE, tostring(Value))
=9=9ApplyFullBright(Value)
=9end
})

v496:AddButton({
   Title =3D "Remove Sky Fog",
   Description =3D "",
   Callback =3D function()
    if Lighting:FindFirstChild("LightingLayers") then Lighting.LightingLay=
ers:Destroy() end
    if Lighting:FindFirstChild("SeaTerrorCC") then Lighting.SeaTerrorCC:De=
stroy() end
    if Lighting:FindFirstChild("FantasySky") then Lighting.FantasySky:Dest=
roy() end
end
})
v496:AddButton({
    Title =3D "Join Pirates Team",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("SetTeam", "Pirates")
    end
})
v496:AddButton({
    Title =3D "Join Marines Team",
    Callback =3D function()
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
("SetTeam", "Marines")
    end
})
v496:AddButton({
    Title =3D "Open Title Name",
    Callback =3D function()
        local v1209 =3D {[1] =3D "getTitles"}
        game:GetService("ReplicatedStorage").Remotes.CommF=5F:InvokeServer=
(unpack(v1209))
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible =3D true
    end
})

v496:AddButton({
=9Name =3D "FPS Boost",
=9Callback =3D function()
=9=9for =5F, v in ipairs(game:GetDescendants()) do
=9=9=9if v:IsA("BasePart") then
=9=9=9=9v.Material =3D Enum.Material.SmoothPlastic
=9=9=9=9v.Reflectance =3D 0
=9=9=9elseif v:IsA("Decal") or v:IsA("Texture") then
=9=9=9=9v:Destroy()
=9=9=9elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
=9=9=9=9v.Enabled =3D false
=9=9=9elseif v:IsA("Lighting") then
=9=9=9=9v.GlobalShadows =3D false
=9=9=9=9v.FogEnd =3D 1e10
=9=9=9=9v.Brightness =3D 0
=9=9=9end
=9=9end
=9=9setfpscap(60)
=9end
})

local v1218 =3D {
    "NOMOREHACK",
    "BANEXPLOIT",
    "WildDares",
    "BossBuild",
    "GetPranked",
    "EARN=5FFRUITS",
    "FIGHT4FRUIT",
    "NOEXPLOITER",
    "NOOB2ADMIN",
    "CODESLIDE",
    "ADMINHACKED",
    "ADMINDARES",
    "fruitconcepts",
    "krazydares",
    "TRIPLEABUSE",
    "SEATROLLING",
    "24NOADMIN",
    "REWARDFUN",
    "Chandler",
    "NEWTROLL",
    "KITT=5FRESET",
    "Sub2CaptainMaui",
    "kittgaming",
    "Sub2Fer999",
    "Enyu=5Fis=5FPro",
    "Magicbus",
    "JCWK",
    "Starcodeheo",
    "Bluxxy",
    "fudd10=5Fv2",
    "SUB2GAMERROBOT=5FEXP1",
    "Sub2NoobMaster123",
    "Sub2UncleKizaru",
    "Sub2Daigrock",
    "Axiore",
    "TantaiGaming",
    "StrawHatMaine",
    "Sub2OfficialNoobie",
    "Fudd10",
    "Bignews",
    "TheGreatAce",
    "SECRET=5FADMIN",
    "SUB2GAMERROBOT=5FRESET1",
    "SUB2OFFICIALNOOBIE",
    "AXIORE",
    "BIGNEWS",
    "BLUXXY",
    "CHANDLER",
    "ENYU=5FIS=5FPRO",
    "FUDD10",
    "FUDD10=5FV2",
    "KITTGAMING",
    "MAGICBUS",
    "STARCODEHEO",
    "STRAWHATMAINE",
    "SUB2CAPTAINMAUI",
    "SUB2DAIGROCK",
    "SUB2FER999",
    "SUB2NOOBMASTER123",
    "SUB2UNCLEKIZARU",
    "TANTAIGAMING",
    "THEGREATACE"
}
v496:AddButton({
    Title =3D "Codes",
    Description =3D "",
    Callback =3D function()
        for =5F, v1220 in ipairs(v1218) do
            local v1221 =3D {v1220}
            do
                local l=5Fv1221=5F0 =3D v1221
                pcall(function()
                    game:GetService("ReplicatedStorage"):WaitForChild("Rem=
otes"):WaitForChild("Redeem"):InvokeServer(unpack(l=5Fv1221=5F0))
                end)
                task.wait(0.1)
            end
        end
    end
})
local RunService =3D game:GetService("RunService")

v496:AddToggle({
=9Name =3D "White Screen",
=9Default =3D false,
=9Callback =3D function(Value)

=9=9=5FG.WhiteScreen =3D Value
=9=9RunService:Set3dRenderingEnabled(not Value)

=9end
})
v496:AddButton({
    Title =3D "Rejoin Server",
    Callback =3D function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:Get=
Service("Players").LocalPlayer)
    end
})
v496:AddButton({Title =3D "Server Hop", Callback =3D function()
    Hop()
end})

print("--[[Hop Server If You Meet Game Admin]]--")

local Admins =3D {
    red=5Fgame43 =3D true,
    rip=5Findra =3D true,
    Axiore =3D true,
    Polkster =3D true,
    wenlocktoad =3D true,
    Daigrock =3D true,
    toilamvidamme =3D true,
    oofficialnoobie =3D true,
    Uzoth =3D true,
    Azarth =3D true,
    arlthmetic =3D true,
    Death=5FKing =3D true,
    Lunoven =3D true,
    TheGreateAced =3D true,
    rip=5Ffud =3D true,
    drip=5Fmama =3D true,
    layandikit12 =3D true,
    Hingoi =3D true,
}

task.spawn(function()
    while task.wait(1) do
        for =5F, player in pairs(game.Players:GetPlayers()) do
            if Admins[player.Name] then
                Hop()
                break
            end
        end
    end
end)

local Players =3D game:GetService("Players")
local TeleportService =3D game:GetService("TeleportService")
local HttpService =3D game:GetService("HttpService")

local Player =3D Players.LocalPlayer
local PlaceId =3D game.PlaceId
local JobId =3D game.JobId

=5FG.AutoRejoin30m =3D false
local RejoinRunning =3D false

-- =3D=3D=3D=3D=3D PEGAR SERVIDOR DIFERENTE =3D=3D=3D=3D=3D
function GetNewServer()
    local Servers =3D {}
    
    local req =3D game:HttpGet(
        "https://games.roblox.com/v1/games/"..PlaceId.."/servers/Public=3F=
sortOrder=3DAsc&limit=3D100"
    )
    
    local data =3D HttpService:JSONDecode(req)

    for =5F, server in pairs(data.data) do
        if server.playing < server.maxPlayers and server.id ~=3D JobId the=
n
            table.insert(Servers, server.id)
        end
    end

    if #Servers > 0 then
        return Servers[math.random(1, #Servers)]
    end
end

-- =3D=3D=3D=3D=3D TOGGLE REDZLIB =3D=3D=3D=3D=3D
v496:AddToggle({
    Name =3D "Anti-reset",
    Description =3D "Server hop every 30 minutes",
    Default =3D false,
    Callback =3D function(Value)
        =5FG.AutoRejoin30m =3D Value
        
        if Value and not RejoinRunning then
            RejoinRunning =3D true
            
            task.spawn(function()
                while =5FG.AutoRejoin30m do
                    task.wait(1800) -- 30 minutos
                    
                    if not =5FG.AutoRejoin30m then break end
                    
                    local NewServer =3D GetNewServer()
                    
                    if NewServer then
                        TeleportService:TeleportToPlaceInstance(PlaceId, N=
ewServer, Player)
                    else
                        TeleportService:Teleport(PlaceId, Player)
                    end
                end
                
                RejoinRunning =3D false
            end)
        end
    end
})

return redzlib
