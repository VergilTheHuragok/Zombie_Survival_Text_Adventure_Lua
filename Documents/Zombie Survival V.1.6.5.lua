bloodbagstore = 0
 -- if multiple but not all were used, the rest should stay in the tent. if you cant use the item, it needs to go back in the tent. Make using ground items not give space back.Making items not store when wanting to drop. make items you already have give the option to replace or store.Make items you dont have space for give you options.
tentstore = "n"
 ---------------------------(1)-------------------------------------------------------------------------------(2)----------------------------------------(3)----------------------------------------------(4)--------------------------------------------------(5)---------------------------------------------(6)
meatstore = 0
bandaidstore = 0
grenadestore = 0
radiostore = "n"
smokestore = 0
canstore = "n"
cfilledstore = "n"
epipenstore = 0
filledstore = "n"
bottlestore = "n"
knifestore = "n"
antibioticstore = 0
gunstoreone = "no weapon"
gunstoretwo = "no weapon"
gunstorethree = "no weapon"
gunspacestoreone = 0
gunspacestoretwo = 0
gunspacestorethree = 0
damagestoreone = 0
damagestoretwo = 0
damagestorethree = 0
accuracystoreone = 0
accuracystoretwo = 0
accuracystorethree = 0
fullaccuracystoreone = 0
fullaccuracystoretwo = 0
fullaccuracystorethree = 0
ammostoreone = 0
ammostoretwo = 0
ammostorethree = 0
painkillerstore = 0
morphinestore = 0
heatpackstore = 0
storedcolor = ""
storedwriting = ""
woodstore = "n"
gogglestore = "n"
matchstore = 0
beartrapstore = "n"
steakstore = 0
beanstore = 0
bookstore = "n"
popstore = 0
superbeanstore = "n"
roadflarestore = 0
tentplaced = "n"
gilliestore = "n"
watchstore = "n"
storedwcolor = ""
statsearch = "n"
statA = "y"
statB = "y"
statC = "y"
statD = "y"
statE = "y"
statF = "y"
statG = "y"
autostat = "n"
turns = 0
repeat
    skinningdog = "n"
    storinggun = "n"
    alreadybook = "n"
    symbol = "{@}"
    bloodbags = 0
    watch = "n"
    watchcolor = ""
    math.randomseed(os.time())
    pack = "n"
    bleeding = "n"
    storingbook = "n"
    tent = "n"
    meat = 0
    bandaids = 0
    turn = 0
    grenade = 0
    radio = "n"
    dogfeed = 3
    days = 1
    starve = "n"
    gillie = "n"
    wild = "n"
    vision = "n"
    can = "n"
    gang = "n"
    gangamount = 0
    dogs = 0
    smoke = 0
    cfilled = "n"
    attackchoice = "n"
    doghealth = 0
    dogfood = 0
    hour = 8
    period = "am"
    dogwater = 0
    droppedbook = "n"
    droppedcolor = ""
    trapcow = "n"
    droppedwriting = ""
    text = ""
    thirst = "n"
    request = "n"
    filled = "n"
    morphine = 0
     ----epi-pen
    food = 300
    invincible = "n"
    bottle = "n"
    findbook = "n"
    objective = 50
    dogcow = "n"
    clothedrop = "y"
    light = "light"
    cpack = "n"
    knife = "n"
    infection = "n"
    antibiotics = 0
    tired = 0
    ------------------------------------------
    mygun = "Test"
    myguntwo = "no weapon"
    mygunthree = "no weapon"
    gunspace = 8
    gunspacetwo = 0
    gunspacethree = 0
    damage = 0
    damagetwo = 0
    damagethree = 0
    accuracy = 0
    accuracythree = 0
    accuracytwo = 0
    fullaccuracy = 0
    fullaccuracytwo = 0
    fullaccuracythree = 0
    myammo = 0
    myammotwo = 0
    myammothree = 0
    ------------------------------------------
    moral = 50
    water = 300
    allsections = "n"
    fullhealth = 12000
    set = "n"
    health = 12000
    space = 10
    pain = 0
    epipen = 0
     -----pain killers
    creator = "n"
    events = 0
    painkillers = 0
     ---morphine
    broken = "n"
    temperature = 42
    cold = "n"
    store = "n"
    heatpacks = 0
    wood = "n"
    goggles = "n"
    matches = 0
    beartrap = "n"
    vpack = "n"
    steak = 0
    beans = 0
    pop = 0
    book = "n"
    superbean = "n"
    tenttravel = 0
    roadflare = 0
    amount = math.random(1, 2)
    spawn = math.random(1, 3)
    function dropgun()
        if storinggun == "n" then
            print("Which slot?")
            slot = io.read()
            if slot == "2" then
                mygunthree = myguntwo
                gunspacethree = gunspacetwo
                myammothree = myammotwo
                damagethree = damagetwo
                accuracythree = accuracytwo
                fullaccuracythree = fullaccuracytwo
            else
                mygunthree = mygun
                gunspacethree = gunspace
                myammothree = myammo
                damagethree = damage
                accuracythree = accuracy
                fullaccuracythree = fullaccuracy
                slot = "1"
            end
        end
        if mygunthree ~= "no weapon" then
            if store == "y" then
                if gunstoreone == "no weapon" then
                    gunstoreone = mygunthree
                    ammostoreone = myammothree
                    damagestoreone = damagethree
                    accuracystoreone = accuracythree
                    fullaccuracystoreone = fullaccuracythree
                    gunspacestoreone = gunspacethree
                    if storinggun == "n" then
                        space = space + gunspacethree
                    end
                    mygunthree = "no weapon"
                    myammothree = 0
                    gunspacethree = 0
                    damagethree = 0
                    accuracythree = 0
                    fullaccuracythree = 0
                    if storinggun == "n" then
                        takegun()
                    end
                    print("Stored.")
                    io.read()
                elseif gunstoretwo == "no weapon" then
                    gunstoretwo = mygunthree
                    ammostoretwo = myammothree
                    damagestoretwo = damagethree
                    accuracystoretwo = accuracythree
                    fullaccuracystoretwo = fullaccuracythree
                    gunspacestoretwo = gunspacethree
                    mygunthree = "no weapon"
                    if storinggun == "n" then
                        space = space + gunspacethree
                    end
                    myammothree = 0
                    gunspacethree = 0
                    damagethree = 0
                    accuracythree = 0
                    fullaccuracythree = 0
                    if storinggun == "n" then
                        takegun()
                    end
                    print("Stored.")
                    io.read()
                elseif gunstorethree == "no weapon" then
                    gunstorethree = mygunthree
                    ammostorethree = myammothree
                    damagestorethree = damagethree
                    accuracystorethree = accuracythree
                    fullaccuracystorethree = fullaccuracythree
                    gunspacestorethree = gunspacethree
                    mygunthree = "no weapon"
                    if storinggun == "n" then
                        space = space + gunspacethree
                    end
                    myammothree = 0
                    gunspacethree = 0
                    damagethree = 0
                    accuracythree = 0
                    fullaccuracythree = 0
                    if storinggun == "n" then
                        takegun()
                    end
                    print("Stored.")
                    io.read()
                else
                    print("All weapon slots are full.")
                    print("Do you want to remove a slot?")
                    want = io.read()
                    if want == "y" then
                        print(
                            "Slot 1 = " ..
                                gunstoreone ..
                                    ", slot 2 = " ..
                                        gunstoretwo .. ", slot 3 = " .. gunstorethree .. ', or "4" for cancel.'
                        )
                        print("Which do you want to remove?")
                        want = io.read()
                        if want == "1" then
                            gunstoreone = mygunthree
                            ammostoreone = myammothree
                            print("The gun was replaced.")
                            io.read()
                            mygunthree = "no weapon"
                            space = space + gunspacethree
                            myammothree = 0
                            gunspacethree = 0
                            damagethree = 0
                            accuracythree = 0
                            fullaccuracythree = 0
                            takegun()
                        elseif want == "2" then
                            gunstoretwo = mygunthree
                            ammostoretwo = myammothree
                            print("The gun was replaced.")
                            io.read()
                            mygunthree = "no weapon"
                            space = space + gunspacethree
                            myammothree = 0
                            gunspacethree = 0
                            damagethree = 0
                            accuracythree = 0
                            fullaccuracythree = 0
                            takegun()
                        elseif want == "3" then
                            gunstorethree = mygunthree
                            ammostorethree = myammothree
                            print("The gun was replaced.")
                            io.read()
                            mygunthree = "no weapon"
                            space = space + gunspacethree
                            myammothree = 0
                            gunspacethree = 0
                            damagethree = 0
                            accuracythree = 0
                            fullaccuracythree = 0
                            takegun()
                        else
                            print("No changes were made.")
                            io.read()
                        end
                    else
                        print("No changes were made.")
                        io.read()
                    end
                end
            else
                print("Dropped.")
                io.read()
                mygunthree = "no weapon"
                space = space + gunspacethree
                myammothree = 0
                gunspacethree = 0
                damagethree = 0
                accuracythree = 0
                fullaccuracythree = 0
                takegun()
            end
        elseif mygunthree == "no weapon" then
            print("You have no weapon in slot " .. slot .. ".")
            io.read()
        end
    end
    function meatitem() --(1)--(2)--(3)--(4)--(x)--(6)--(X)
        print("You found some meat.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = math.random(1, 3)
                if meat < 1 then
                    if space >= 1 then
                        if skinningdog == "y" then
                            if wild == "n" then
                                meat = meat + math.random(1, dogfeed)
                            else
                                meat = meat + math.random(1, 3)
                            end
                        else
                            if store == "y" then
                                meat = meat + meatstore
                                meatstore = 0
                            else
                                meat = meat + math.random(1, 3)
                            end
                        end
                        space = space - 1
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Meat")
                                if store == "y" then
                                    sstore = "y"
                                    store = "n"
                                end
                                dropped()
                                if sstore == "y" then
                                    store = "y"
                                    sstore = "n"
                                end
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Meat")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the meat(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    print("Stored")
                                    io.read()
                                    meatstore = meatstore + math.random(1, 3)
                                    break
                                else
                                    repeat
                                        print("Meat")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            if store == "y" then
                                useamount = meatstore
                            else
                                useamount = math.random(1, 3)
                            end
                            repeat
                                if food < 500 then
                                    meat = 100
                                     --as long as its not less than 2
                                    usemeat()
                                    meat = 0
                                    useamount = useamount - 1
                                    if useamount ~= 0 then
                                        print("Use more meat?")
                                        print("You have " .. useamount .. " left.")
                                        want = io.read()
                                        if want ~= "y" then
                                            break
                                        end
                                    end
                                else
                                    print("You are not hungery.")
                                     --Fixed
                                    io.read()
                                    break
                                end
                            until useamount == 0
                            if store == "y" then
                                meatstore = useamount
                             --------------Already done
                            end
                            useamount = 0
                            print("You leave.")
                            io.read()
                            meat = 0
                            break
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif meat >= 1 then
                    if skinningdog == "y" then
                        if wild == "n" then
                            meat = meat + math.random(1, dogfeed)
                        else
                            meat = meat + math.random(1, 3)
                        end
                    else
                        if store == "y" then
                            meat = meat + meatstore
                            meatstore = 0
                        else
                            meat = meat + math.random(1, 3)
                        end
                    end
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
            end
        until pickup ~= "y"
    end
    function gillieitem() --(x)--(x)--(x)--(x)--(5)--(X)--(X)
        print("You found a gillie suit.")
        print("pickup?")
        pickup = io.read()
        if pickup == "y" then
            if gillie == "n" then
                print("You took the gillie suit.")
                io.read()
                if store == "y" then
                    gilliestore = "n"
                end
                gillie = "y"
            else
                print("You already have a gillie suit.")
                print("Store it(1), or leave it(2)?")
                pickup = io.read()
                if pickup == "1" then
                    print("You took the gillie.")
                    io.read()
                    if store == "y" then
                        gilliestore = "n"
                    end
                    gillie = "y"
                else
                    if tentplaced == "y" then
                        print("You traveled to your tent.")
                        io.read()
                        tired = tired + tenttravel
                        tenttravel = 0
                        print("Stored.")
                        io.read()
                        watchstore = "y"
                        storedwcolor = ccolor
                    else
                        print("You don't have a placed tent.")
                        io.read()
                    end
                end
            end
        elseif pickup ~= "y" then
            print("You left it there.")
            io.read()
        end
    end
    function playerfight()
        if myammo >= zhealth / damage - (accuracy - 10) then --win?
            print("The player shot you but you killed them.")
            io.read()
            if attackchoice == "n" then
                moral = moral + math.random(5, 20)
                bandit = "n"
                if moral > 100 then
                    moral = 100
                    hero = "y"
                end
            end
            attackchoice = "n"
            health = health - math.random(0, 5000)
            doghealth = doghealth - math.random(0, 4000)
            bleed = math.random(1, 2)
            if bleed == 1 then
                print("You are bleeding.")
                io.read()
                bleeding = "y"
            end
            brake = math.random(1, 10)
            if brake == 1 then
                print("You broke your leg.")
                io.read()
                broken = "y"
                bleeding = "y"
            end
            pain = pain + math.random(1000, 3000)
            if mygun == "Hatchet" then
                myammo = 99999
                health = health - math.random(0, 2000)
            end
            myammo = myammo - zhealth / damage + (accuracy - 10)
            print("You search his pockets.")
            io.read()
            dropamount = math.random(1, 5)
            clothedrop = "y"
            repeat
                enemydrop()
                dropamount = dropamount - 1
                clothedrop = "n"
            until dropamount == 0
            print("You leave the player.")
            io.read()
        elseif myammotwo >= zhealth / damagetwo - (accuracytwo - 10) then
            print("The player shot you but you killed them with your secondary.")
            io.read()
            moral = moral + math.random(20, 50)
            bandit = "n"
            if moral > 100 then
                moral = 100
                hero = "y"
            end
            health = health - math.random(0, 5000)
            doghealth = doghealth - math.random(0, 4000)
            bleed = math.random(1, 2)
            if bleed == 1 then
                print("You are bleeding.")
                io.read()
                bleeding = "y"
            end
            brake = math.random(1, 10)
            if brake == 1 then
                print("You broke your leg.")
                io.read()
                broken = "y"
                bleeding = "y"
            end
            pain = pain + math.random(1000, 3000)
            if myguntwo == "Hatchet" then
                myammotwo = 99999
                health = health - math.random(0, 2000)
            end
            myammotwo = myammotwo - zhealth / damagetwo + (accuracytwo - 10)
            print("You search their pockets.")
            io.read()
            dropamount = math.random(1, 5)
            clothedrop = "y"
            repeat
                enemydrop()
                dropamount = dropamount - 1
                clothedrop = "n"
            until dropamount == 0
            print("You leave the player.")
            io.read()
        elseif dogs >= 1 then
            print("The player shot you but your dog killed them.")
            io.read()
            moral = moral + math.random(20, 50)
            bandit = "n"
            if moral > 100 then
                moral = 100
                hero = "y"
            end
            health = health - math.random(0, 5000)
            doghealth = doghealth - math.random(0, 7000)
            bleed = math.random(1, 2)
            if bleed == 1 then
                print("You are bleeding.")
                io.read()
                bleeding = "y"
            end
            brake = math.random(1, 10)
            if brake == 1 then
                print("You broke your leg.")
                io.read()
                broken = "y"
                bleeding = "y"
            end
            pain = pain + math.random(1000, 3000)
            print("You search their pockets.")
            io.read()
            dropamount = math.random(1, 5)
            clothedrop = "y"
            repeat
                enemydrop()
                dropamount = dropamount - 1
                clothedrop = "n"
            until dropamount == 0
            print("You leave the player.")
            io.read()
        elseif dogs < 1 then
            bleed = math.random(1, 2)
            if bleed == 1 then
                print("You are bleeding.")
                bleeding = "y"
            end
            brake = math.random(1, 7)
            if brake == 1 then
                print("You broke your leg.")
                io.read()
                broken = "y"
                bleeding = "y"
            end
            pain = pain + math.random(2000, 5000)
            print("The player killed you.")
            health = 0
            health = health - math.random(1000, 8000)
        end
     --myammo
    end
    function skindog() --(X)--(X)--(X)--(X)--(X)--(X)--(X)
        print("Skin it?")
        pickup = io.read()
        if pickup == "y" then
            print("The dog has died.")
            io.read()
            dogs = dogs - 1
            doghealth = 10000
            damage = damage - 1000
            if dogs < 1 then
                dogname = ""
            end
            if knife == "y" then
                skinningdog = "y"
                meatitem()
                if dogs < 1 then
                    dogfeed = 3
                end
                skinningdog = "n"
            elseif knife == "n" then
                print("You have no knife.")
                io.read()
            end
        else
            print("You leave your dog(s) alone.")
            io.read()
        end
    end
    function watchitem() --(x)--(x)--(x)--(x)--(5)--(X)--(X)
        color = math.random(1, 19)
        if store == "n" then
            coloring()
            if ccolor == "dress" then
                ccolor = "leather"
            end
            print("You found a " .. ccolor .. " watch.")
        else
            print("You found a " .. storedwcolor .. " watch.")
        end
        print("pickup?")
        pickup = io.read()
        if pickup == "y" then
            if watch == "n" then
                print("You took the watch.")
                io.read()
                if store == "y" then
                    watchstore = "n"
                    watchcolor = storedwcolor
                    soredwcolor = ""
                    watchstore = "n"
                else
                    watchcolor = ccolor
                end
                watch = "y"
            else
                print("You already have a " .. watchcolor .. " watch.")
                 ----Already Done
                print("Replace it(1), or store it(2)?")
                pickup = io.read()
                if pickup == "1" then
                    print("You took the watch.")
                    io.read()
                    if store == "y" then
                        watchstore = "n"
                        watchcolor = storedwcolor
                        soredwcolor = ""
                        watchstore = "n"
                    else
                        watchcolor = ccolor
                    end
                    watch = "y"
                elseif pickup == "2" then
                    if tentplaced == "y" then
                        print("You traveled to your tent.")
                        io.read()
                        tired = tired + tenttravel
                        tenttravel = 0
                        print("Stored.")
                        io.read()
                        watchstore = "y"
                        storedwcolor = ccolor
                    else
                        print("You don't have a placed tent.")
                        io.read()
                    end
                else
                    print("You leave the watch.")
                    io.read()
                end
            end
        elseif pickup ~= "y" then
            print("You left it there.")
            io.read()
        end
    end
    function resting()
        if light == "light" then
            if tentplaced == " y" then
                print("You slept throught the day in your tent.")
            else
                print("You slept through the day.")
            end
            io.read()
            if vision == "n" then
                accuracy = fullaccuracy
                accuracy = accuracy - 4
                accuracytwo = fullaccuracytwo
                accuracytwo = accuracytwo - 4
            elseif vision == "y" then
                accuracytwo = fullaccuracytwo
                accuracy = fullaccuracy
            end
            light = "dark"
            hour = 8
            period = "pm"
        elseif light == "dark" then
            if tentplaced == " y" then
                print("You slept throught the night in your tent.")
            else
                print("You slept through the night.")
            end
            io.read()
            if vision == "n" then
                accuracy = fullaccuracy
                accuracytwo = fullaccuracytwo
            elseif vision == "y" then
                accuracy = fullaccuracy
                accuracy = accuracy - 4
                accuracytwo = fullaccuracytwo
                accuracytwo = accuracytwo - 4
            end
            light = "light"
            hour = 8
            period = "am"
        end
        days = days + 1
        if tentplaced == "n" then
            tired = tired - math.random(200, 300)
            food = food - math.random(30, 100)
            water = water - math.random(50, 150)
            temperature = temperature - math.random(0, 3)
            if tired < 0 then
                tired = 0
            end
             -- end of less than 0
            rain = math.random(1, 5)
            if rain == 1 then
                print("It rained.")
                io.read()
                temperature = temperature - math.random(3, 5)
            end
        elseif tentplaced == "y" then
            tired = 0
            food = food - math.random(30, 100)
            water = water - math.random(50, 150)
            temperature = temperature - math.random(0, 1)
            if tired < 0 then
                tired = 0
            end
             -- end of less than 0
            rain = math.random(1, 5)
            if rain == 1 then
                print("It rained.")
                io.read()
                temperature = temperature - math.random(1, 2)
            end
        end
    end
    function optionline()
        print("___________________________")
         ---------------------------------------Write stats
        repeat
            use = io.read()
            if use == "d" then
                dropped()
            elseif use == "u" then
                used()
            elseif use == "r" then
                print("You have rested.")
                io.read()
                resting()
            elseif use == "s" then
                stats()
                io.read()
            elseif use == "h" then
                help()
            elseif use == "j" then
                print("You go for a jog.")
                io.read()
                tired = tired + math.random(100, 300)
                temperature = temperature + math.random(1, 3)
                food = food - math.random(10, 30)
                water = water - math.random(20, 50)
                if temperature > 50 then
                    temperature = 50
                end
                if temperature >= 33 then
                    if cold == "y" then
                        print("You lost your cold.")
                        io.read()
                        cold = "n"
                    end
                end
            elseif use == "o" then
                print("OPTIONS")
                print("Press 1 for autostats, 2 for Stat Search, 3 for Stat Sections, or 4 for Name.")
                want = io.read()
                if want == "1" then
                    print("After how many turns do you want to view your stats automatically? 0 = off")
                    amount = io.read("*n")
                    turns = amount
                    if turns ~= 0 then
                        turn = turns
                        autostat = "y"
                        print("You will now view your stats after every " .. turns .. " turns.")
                        io.read()
                    else
                        print("You turned off autostats.")
                        io.read()
                        autostat = "n"
                    end
                elseif want == "2" then
                    print("Do you want to have to search your stats? (Stats won't run out of screen using search.)")
                    want = io.read()
                    if want == "y" then
                        print("You will now have to search your stats.")
                        io.read()
                        statsearch = "y"
                    elseif want ~= "y" then
                        print("All your stats will be displayed at once.")
                        io.read()
                        statsearch = "n"
                    end
                elseif want == "3" then
                    repeat
                        print("Please choose which sections to view, enter one number at a time.")
                        print(
                            "Section 1:INFORMATION, Section 2:STATS, Section 3:WEAPON, Section 4:DOGS, Section 5:ITEMS, Section 6:INJURIES, Section 7:OUTFIT, all:All Sections."
                        )
                        choose = io.read()
                        if choose == "1" then
                            if statA == "n" then
                                statA = "y"
                                print("You have chosen Section 1 to view.")
                                io.read()
                            else
                                statA = "n"
                                print("You have chosen not to view Section 1.")
                                io.read()
                            end
                        elseif choose == "2" then
                            if statB == "n" then
                                statB = "y"
                                print("You have chosen Section 2 to view.")
                                io.read()
                            else
                                statB = "n"
                                print("You have chosen not to view Section 2.")
                                io.read()
                            end
                        elseif choose == "3" then
                            if statC == "n" then
                                statC = "y"
                                print("You have chosen Section 3 to view.")
                                io.read()
                            else
                                statC = "n"
                                print("You have chosen not to view Section 3.")
                                io.read()
                            end
                        elseif choose == "4" then
                            if statD == "n" then
                                statD = "y"
                                print("You have chosen Section 4 to view.")
                                io.read()
                            else
                                statD = "n"
                                print("You have chosen not to view Section 4.")
                                io.read()
                            end
                        elseif choose == "5" then
                            if statE == "n" then
                                statE = "y"
                                print("You have chosen Section 5 to view.")
                                io.read()
                            else
                                statE = "n"
                                print("You have chosen not to view Section 5.")
                                io.read()
                            end
                        elseif choose == "6" then
                            if statF == "n" then
                                statF = "y"
                                print("You have chosen Section 6 to view.")
                                io.read()
                            else
                                statF = "n"
                                print("You have chosen not to view Section 6.")
                                io.read()
                            end
                        elseif choose == "7" then
                            if statG == "n" then
                                statG = "y"
                                print("You have chosen Section 7 to view.")
                                io.read()
                            else
                                statG = "n"
                                print("You have chosen not to view Section 7.")
                                io.read()
                            end
                        elseif choose == "all" then
                            if allsections == "n" then
                                print("All sections will be viewed.")
                                io.read()
                                allsections = "y"
                                statA = "y"
                                statB = "y"
                                statC = "y"
                                statD = "y"
                                statE = "y"
                                statF = "y"
                                statG = "y"
                            else
                                print("You have chosen not to view any sections.")
                                io.read()
                                allsections = "n"
                                statA = "n"
                                statB = "n"
                                statC = "n"
                                statD = "n"
                                statE = "n"
                                statF = "n"
                                statG = "n"
                            end
                        else
                            choose = "0"
                        end
                    until choose == "0"
                elseif want == "4" then
                    print("Your name is currently " .. name .. ", what do you want to change it to?")
                    name = io.read()
                    print("You have successfully changed your name to " .. name .. ".")
                    io.read()
                end
            elseif use == "q" then
                print("Are you sure you want to quit?")
                want = io.read()
                if want == "y" then
                    starve = "y"
                    health = 0
                    break
                elseif want ~= "y" then
                    print("Continue playing.")
                    io.read()
                end
            elseif use == "w" then
                print("You switched your primary and secondary.")
                io.read()
                if mygun ~= myguntwo then
                    mygunthree = mygun
                    mygun = myguntwo
                    myguntwo = mygunthree
                    damagethree = damage
                    damage = damagetwo
                    damagetwo = damagethree
                    accuracythree = accuracy
                    accuracy = accuracytwo
                    accuracytwo = accuracythree
                    fullaccuracythree = fullaccuracy
                    fullaccuracy = fullaccuracytwo
                    fullaccuracytwo = fullaccuracythree
                    myammothree = myammo
                    myammo = myammotwo
                    myammotwo = myammothree
                elseif mygun == myguntwo then
                    print("You compiled the ammo.")
                    io.read()
                    myguntwo = "no weapon"
                    myammo = myammo + myammotwo
                    myammotwo = 0
                    damagetwo = 0
                    accuracytwo = 0
                    fullaccuracytwo = 0
                    space = space + gunspace
                end
            else
                use = "none"
            end
             -----------------------------------------bandaids
            if use ~= "none" then
                print("Any other actions?")
            end
        until use == "none"
    end
    function stats7()
        print("OUTFIT")
        print(shirt .. " shirt")
        print(pants .. " pants")
        if cpack == "y" then
            print("Coyote pack")
        end
        if pack == "y" then
            print("Alice pack")
        end
        if vpack == "y" then
            print("Vest Pouch")
        end
        if vision == "y" then
            print("Goggles on")
        end
        if hero == "y" then
            print("Cape")
        elseif bandit == "y" then
            print("Bandana")
        end
        if gillie == "y" then
            print("Gillie suit")
        end
        if watch == "y" then
            print(watchcolor .. " watch")
        end
        print("-----------------------")
    end
    function stats6()
        print("INJURIES")
        if cold == "y" then
            print("Cold")
        end
        if bleeding == "y" then
            print("Bleeding")
        end
        if broken == "y" then
            print("Broken leg")
        end
        if infection == "y" then
            print("Infection")
        end
        print("-----------------------")
    end
    function stats5()
        print("ITEMS")
        print(space .. " space(s)")
        print(". . . . . . . . . . . .")
        print("<food>")
        if bottle == "y" then
            if filled == "y" then
                print("Water bottle")
            else
                print("empty bottle")
            end
        end
        if beans >= 1 then
            print(beans .. " can(s) of beans")
        end
        if pop >= 1 then
            print(pop .. " pop")
        end
        if meat >= 1 then
            print(meat .. " meat")
        end
        if steak >= 1 then
            print(steak .. " steak(s)")
        end
        if superbean == "y" then
            print("Super Bean?")
        end
        print(". . . . . . . . . . . .")
        print("<medical>")
        if bloodbags >= 1 then
            print(bloodbags .. " blood bag(s)")
        end
        if bandaids >= 1 then
            print(bandaids .. " bandaid(s)")
        end
        if morphine >= 1 then
            print(morphine .. " epi-pen(s)")
        end
        if epipen >= 1 then
            print(epipen .. " pain killer(s)")
        end
        if antibiotics >= 1 then
            print(antibiotics .. " antibiotic(s)")
        end
        if painkillers >= 1 then
            print(painkillers .. " morphine")
        end
        if heatpacks >= 1 then
            print(heatpacks .. " heatpack(s)")
        end
        print(". . . . . . . . . . . .")
        print("<tools>")
        if knife == "y" then
            print("Knife")
        end
        if matches >= 1 then
            print(matches .. " match(es)")
        end
        if wood == "y" then
            print("Wood")
        end
        if beartrap == "y" then
            print("Bear Trap")
        end
        if goggles == "y" then
            print("NV Goggles")
        end
        if roadflare >= 1 then
            print(roadflare .. " road flare(s)")
        end
        if smoke >= 1 then
            print(smoke .. " smoke grenade(s)")
        end
        if tent == "y" then
            print("Tent")
        end
        if can == "y" then
            if cfilled == "y" then
                print("Filled Jerry can")
            elseif cfilled ~= "y" then
                print("Jerry can")
            end
        end
        print(". . . . . . . . . . . .")
        print("<other>")
        if book == "y" then
            if storingbook == "y" then
                print(ccolor .. " book")
            else
                print(cover .. " book")
            end
        end
        if radio == "y" then
            print("Radio")
        end
        if tentplaced == "y" then
            print("Set tent")
        end
        print("-----------------------")
    end
    function stats4()
        print("DOGS")
        if dogs >= 1 then
            print(dogs .. " Dog(s)")
            print(dogname)
            print(doghealth .. " health")
            print(dogfood .. " food")
            print(dogwater .. " water")
        end
        print("-----------------------")
    end
    function stats3()
        print("WEAPON")
        print(". . . . . . . . . . . .")
        print("<Primary weapon>")
        if mygun ~= "no weapon" then
            print(mygun)
            if mygun ~= "Hatchet" then
                print(myammo .. " ammo")
            end
            if mygun ~= "Hatchet" then
                print(accuracy .. " accuracy")
            end
            print(damage .. " damage")
        end
        print(". . . . . . . . . . . .")
        print("<Secondary weapon>")
        if myguntwo ~= "no weapon" then
            print(myguntwo)
            if myguntwo ~= "Hatchet" then
                print(myammotwo .. " ammo")
            end
            if myguntwo ~= "Hatchet" then
                print(accuracytwo .. " accuracy")
            end
            print(damagetwo .. " damage")
        end
        print(". . . . . . . . . . . .")
        print("<Other>")
        if set == "y" then
            print("Set Bear Trap")
        end
        if grenade >= 1 then
            print(grenade .. " grenade(s)")
        end
        print("-----------------------")
    end
    function stats2()
        print("STATS")
        print(health .. " blood")
        print(pain .. " pain")
        print(temperature .. " degrees")
        print(food .. " food")
        print(water .. " water")
        print(tired .. " exhaustion")
        print("-----------------------")
    end
    function stats1()
        if creator == "y" then
            print(name .. symbol)
        else
            print(name)
        end
        if hero == "y" then
            print("Hero          " .. gamemode)
        elseif bandit == "y" then
            print("Bandit        " .. gamemode)
        else
            print("Survivor      " .. gamemode)
        end
        if watch == "y" then
            if light == "light" then
                print(light .. "         " .. hour .. " " .. period)
            else
                print(light .. "          " .. hour .. " " .. period)
            end
        else
            print(light)
        end
        if spawn == 1 then
            print("City          Day " .. days)
        elseif spawn == 2 then
            print("Shore         Day " .. days)
        elseif spawn == 3 then
            print("Forest        Day " .. days)
        end
         -- end of spaw
        print("-----------------------")
    end
    function DBshotgunitem() --(X)--(X)--(X)--(4)--(X)--(6)--(7)
        print("You found a Doulble Barrel Shotgun.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "DB Shotgun" then
                    if space >= 7 - gunspacethree then
                        print("You have picked it up")
                        io.read()
                        space = space - (7 - gunspacethree)
                        gunspacethree = 7
                        myammothree = math.random(10, 50)
                        damagethree = 5000 + (1000 * dogs)
                        mygunthree = "DB Shotgun"
                        accuracythree = 6
                        fullaccuracythree = 6
                        takegun()
                        break
                    elseif space < 7 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("DB Shotgun")
                                if store == "y" then
                                    sstore = "y"
                                    store = "n"
                                end
                                dropped()
                                if sstore == "y" then
                                    store = "y"
                                    sstore = "n"
                                end
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("DB Shotgun")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the DB Shotgun(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    store = "y"
                                    storinggun = "y"
                                    gunspacethree = 7
                                    myammothree = math.random(10, 50)
                                    damagethree = 5000
                                    mygunthree = "DB Shotgun"
                                    accuracythree = 6
                                    fullaccuracythree = 6
                                    dropgun()
                                    storinggun = "n"
                                    store = "n"
                                    break
                                else
                                    repeat
                                        print("DB Shotgun")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            print("You can't use this item.")
                            io.read()
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif mygunthree == "DB Shotgun" then
                    print("You already have this gun, store it(1) or take the ammo(2)?")
                    want = io.read()
                    if want == "2" then
                        print("You took the ammo.")
                        io.read()
                        myammothree = myammothree + math.random(10, 50)
                        if slot == "2" then
                            myammotwo = myammothree
                        else
                            myammo = myammothree
                        end
                        break
                    else
                        if tentplaced == "y" then
                            print("You taveled to your tent.")
                            io.read()
                            tired = tired + tenttravel
                            tenttravel = 0
                            store = "y"
                            storinggun = "y"
                            gunspacethree = 7
                            myammothree = math.random(10, 50)
                            damagethree = 5000
                            mygunthree = "DB Shotgun"
                            accuracythree = 6
                            fullaccuracythree = 6
                            dropgun()
                            storinggun = "n"
                            store = "n"
                            break
                        else
                            print("You don't have a placed tent.")
                            io.read()
                        end
                    end
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function M4A1item() --(X)--(X)--(X)--(!)--(X)--(!)--(!)--(!)
        print("You found a M4A1.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "M4A1" then
                    if space >= 6 - gunspacethree then
                        print("You have picked it up")
                        io.read()
                        space = space - (6 - gunspacethree)
                        gunspacethree = 6
                        myammothree = math.random(10, 50)
                        damagethree = 4000 + (1000 * dogs)
                        mygunthree = "M4A1"
                        accuracythree = 8
                        fullaccuracythree = 8
                        takegun()
                        break
                    elseif space < 6 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif mygunthree == "M4A1" then
                    print("You took the ammo.")
                    io.read()
                    myammothree = myammothree + math.random(10, 50)
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function AK47item() --(X)--(X)--(X)--(!)--(X)--(!)--(!)--(!)
        print("You found an AK47.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "AK47" then
                    if space >= 6 - gunspacethree then
                        print("You have picked it up")
                        io.read()
                        space = space - (6 - gunspacethree)
                        gunspacethree = 6
                        myammothree = math.random(30, 70)
                        damagethree = 3500 + (1000 * dogs)
                        mygunthree = "AK47"
                        accuracythree = 7
                        fullaccuracythree = 7
                        takegun()
                        break
                    elseif space < 6 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif mygunthree == "AK47" then
                    print("You took the ammo.")
                    io.read()
                    myammothree = myammothree + math.random(10, 50)
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function g36citem() --(X)--(X)--(X)--(!)--(X)--(!)--(!)--(!)
        print("You found a G36C.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "G36C" then
                    if space >= 6 - gunspacethree then
                        print("You have picked it up")
                        io.read()
                        space = space - (6 - gunspacethree)
                        gunspacethree = 6
                        myammothree = math.random(30, 70)
                        damagethree = 3700 + (1000 * dogs)
                        mygunthree = "G36C"
                        accuracythree = 7
                        fullaccuracythree = 7
                        takegun()
                        break
                    elseif space < 6 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif mygunthree == "G36C" then
                    print("You took the ammo.")
                    io.read()
                    myammothree = myammothree + math.random(10, 50)
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function radioitem() --(X)--(X)--(X)--(!)--(!)--(6)--(X)
        print("You found a radio.")
        repeat
            print("pickup?")
            pickup = io.read()
            if pickup == "y" then
                if radio ~= "y" then
                    if space >= 1 then
                        print("You took the radio.")
                        io.read()
                        if store == "y" then
                            radiostore = "n"
                        end
                        radio = "y"
                        space = space - 1
                        break
                    elseif space < 1 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Radio")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Radio")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the radio(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    if radiostore == "n" then
                                        print("Stored")
                                        io.read()
                                        radiostore = "y"
                                        break
                                    else
                                        print("You already have a stored radio.")
                                        io.read()
                                    end
                                else
                                    repeat
                                        print("Radio")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            radio = "y"
                            useradio()
                            radio = "n"
                            print("You leave.")
                            io.read()
                            break
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif radio == "y" then
                    print("Already owned.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
                break
            end
        until pickup ~= "y"
    end
    function gasstation()
        print("You found a gas station, approach?.")
        approach = io.read()
        if approach == "y" then
            print("You prepare to approach.")
            io.read()
            amount = math.random(1, 7)
            if amount == 1 then
                playerevent()
                if health <= 0 then
                else
                    print("The player already cleared out the place.")
                    io.read()
                end
            else
                print("You don't see anyone.")
                io.read()
                amount = math.random(1, 2)
                if amount == 1 then
                    filledjerrycanitem()
                else
                    print("You found a fuel tank.")
                    print("Use?")
                    pickup = io.read()
                    if pickup == "y" then
                        if can == "y" then
                            if cfilled == "n" then
                                print("You filled your jerry can.")
                                io.read()
                                cfilled = "y"
                            elseif cfilled == "y" then
                                print("Already filled.")
                                io.read()
                            end
                        elseif can ~= "y" then
                            print("You have no can.")
                            io.read()
                        end
                    elseif pickup ~= "y" then
                        print("You leave.")
                        io.read()
                    end
                end
                print("You leave the building.")
                io.read()
            end
        elseif approach ~= "y" then
            print("You leave.")
            io.read()
        end
    end
    function wooditem() --(X)--(X)--(X)--(!)--(!)--(6)--(X)
        print("You found wood.")
        repeat
            print("pickup?")
            pickup = io.read()
            if pickup == "y" then
                if wood ~= "y" then
                    if space >= 2 then
                        print("You took the wood.")
                        io.read()
                        if store == "y" then
                            woodstore = "n"
                        end
                        wood = "y"
                        space = space - 2
                        break
                    elseif space < 2 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Wood")
                                store = "n"
                                dropped()
                                store = "y"
                                print("drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Wood")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the wood(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    if woodstore == "n" then
                                        print("Stored")
                                        io.read()
                                        woodstore = "y"
                                        break
                                    else
                                        print("You already have a stored wood.")
                                        io.read()
                                    end
                                else
                                    repeat
                                        print("Wood")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            print("Wood can not be used.")
                            io.read()
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif wood == "y" then
                    print("Already owned.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function ammoitem() --(X)--(X)--(X)--(X)--(X)--(X)--(!)
        if mygun ~= "no weapon" then
            print("You found some ammo.")
            io.read()
            myammo = myammo + math.random(5, 20)
            if myguntwo ~= "no weapon" then
                myammotwo = myammotwo + math.random(5, 20)
            end
        elseif myguntwo ~= "no weapon" then
            print("You took the ammo.")
            io.read()
            myammotwo = myammotwo + math.random(5, 20)
        else
            beansitem()
        end
    end
    function gogglesitem() --(X)--(X)--(X)--(!)--(!)--(6)--(X)
        print("You found Night Vision Goggles.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                if goggles == "n" then
                    if space >= 2 then
                        goggles = "y"
                        space = space - 2
                        print("You picked it up.")
                        if store == "y" then
                            gogglestore = "n"
                        end
                        io.read()
                        break
                    elseif space < 2 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("NV Goggles")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("NV Goggles")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the goggles(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    if gogglestore == "n" then
                                        print("Stored")
                                        io.read()
                                        gogglestore = "y"
                                        break
                                    else
                                        print("You already have a stored goggles.")
                                        io.read()
                                    end
                                else
                                    repeat
                                        print("NV Goggles")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            goggles = "y"
                            usegoggles()
                            space = space - 2
                            print("You leave.")
                            io.read()
                            break
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif goggles == "y" then
                    print("Already owned.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function coyotepackitem() --(x)--(x)--(x)--(x)--(!)--(x)--(x)
        print("You found a Coyote pack, pickup?")
        pickup = io.read()
        if pickup == "y" then
            if cpack == "y" then
                print("Already owned.")
                io.read()
            elseif vpack == "y" then
                space = space + 14
                print("You picked it up.")
                io.read()
                cpack = "y"
                vpack = "n"
            elseif pack == "y" then
                space = space + 10
                print("You picked it up.")
                io.read()
                pack = "y"
                pack = "n"
            else
                space = space + 20
                print("You picked it up.")
                io.read()
                cpack = "y"
            end
        elseif pickup ~= "y" then
            print("You left it there.")
        end
    end
    function AS50item() --(X)--(X)--(X)--(!)--(X)--(!)--(!)
        print("You found an AS50.")
        repeat
            print("Pickup?")
            pickup = io.read()
            print("Put in which slot?")
            slot = io.read()
            if pickup == "y" then
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "AS50" then
                    if space >= 8 - gunspacethree then
                        print("You have picked it up")
                        io.read()
                        myammothree = math.random(10, 50)
                        damagethree = 200000 + (1000 * dogs)
                        mygunthree = "AS50"
                        accuracythree = 10
                        fullaccuracythree = 10
                        space = space - (8 - gunspacethree)
                        gunspacethree = 8
                        takegun()
                        break
                    elseif space < 8 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif mygunthree == "AS50" then
                    print("You took the ammo.")
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    io.read()
                    myammothree = myammothree + math.random(10, 50)
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function filledjerrycanitem() --(x)--(x)--(x)--(!)--(!)--(6)--(x)
        print("You have found a filled jerry can.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                if can == "n" then
                    if space >= 5 then -------------------------------------------------WIP
                        space = space - 5
                        can = "y"
                        cfilled = "y"
                        print("You picked it up.")
                        io.read()
                        if store == "y" then
                            canstore = "n"
                            cfilledstore = "n"
                        end
                        break
                    elseif space < 5 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Filled Jerry can")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Filled Jerry can")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the jerry can(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    if canstore == "n" then
                                        print("Stored")
                                        io.read()
                                        canstore = "y"
                                        cfilledstore = "y"
                                        break
                                    else
                                        if cfilledstore == "n" then
                                            cfilledstore = "y"
                                            print("You filled the jerry can in your tent.")
                                            io.read()
                                            break
                                        else
                                            print("You already have a stored jerry can.")
                                            io.read()
                                        end
                                    end
                                else
                                    repeat
                                        print("Filled Jerry can")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            print("You can't use the Jerry can.")
                            io.read()
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif can == "y" then
                    if cfilled == "n" then
                        print("You filled your jerry can.")
                        io.read()
                        cfilled = "y"
                        if store == "y" then
                            print("You left the empty can in the tent.")
                            io.read()
                            cfilledstore = "n"
                        end
                        break
                    elseif cfilled == "y" then
                        print("Already owned.")
                        io.read()
                        break
                    end
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function beartrapitem() --(x)--(!)--(x)--(!)--(!)--(6)--(x)
        print("You found a bear trap.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                if beartrap == "n" then
                    if space >= 2 then
                        beartrap = "y"
                        space = space - 2
                        print("You picked it up.")
                        io.read()
                        if store == "y" then
                            beartrapstore = "n"
                        end
                        break
                    elseif space < 2 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Bear Trap")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Bear Trap")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the bear trap(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    if beartrapstore == "n" then
                                        print("Stored")
                                        io.read()
                                        beartrapstore = "y"
                                        break
                                    else
                                        print("You already have a stored bear trap.")
                                        io.read()
                                    end
                                else
                                    repeat
                                        print("Bear Trap")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            beartrap = "y"
                            usebeartrap()
                            beartrap = "n"
                            print("You leave.")
                            io.read()
                            break
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif beartrap == "y" then
                    print("Already owned.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function M16item() --(X)--(X)--(X)--(!)--(X)--(!)--(!)
        print("You found a M16.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "M16" then
                    if space >= 6 - gunspacethree then
                        print("You have picked it up")
                        io.read()
                        space = space - (6 - gunspacethree)
                        gunspacethree = 6
                        myammothree = math.random(10, 50)
                        damagethree = 3400 + (1000 * dogs)
                        mygunthree = "M16"
                        accuracythree = 6
                        fullaccuracythree = 6
                        takegun()
                        break
                    elseif space < 6 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif mygunthree == "M16" then
                    print("You took the ammo.")
                    io.read()
                    myammothree = myammothree + math.random(10, 50)
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function matchitem() --(!)--(!)--(!)--(!)--(!)--(6)--(X)
        print("You found matches.")
        repeat
            print("Pick up?")
            pickup = io.read()
            if pickup == "y" then
                if matches < 1 then
                    if space >= 1 then
                        amount = math.random(1, 5)
                        print("You picked them up.")
                        io.read()
                        space = space - 1
                        if store ~= "y" then
                            matches = matches + amount
                        else
                            matches = matches + matchstore
                            matchstore = 0
                        end
                        break
                    elseif space < 1 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Match")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Match")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the match(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    print("Stored.")
                                    io.read()
                                    matchstore = matchstore + math.random(1, 5)
                                    break
                                else
                                    repeat
                                        print("Match")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            useamount = math.random(1, 5)
                            repeat
                                matches = useamount
                                usematch()
                                matches = 0
                                useamount = useamount - 1
                                if useamount ~= 0 then
                                    print("Use more matches?")
                                    print("You have " .. useamount .. " left.")
                                    want = io.read()
                                    if want ~= "y" then
                                        useamount = 0
                                    end
                                end
                            until useamount == 0
                            print("You leave.")
                            io.read()
                            matches = 0
                            break
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif matches >= 1 then
                    print("You picked it up.")
                    io.read()
                    amount = math.random(1, 5)
                    if store ~= "y" then
                        matches = matches + amount
                    else
                        matches = matches + matchstore
                        matchstore = 0
                    end
                    break
                end
            elseif pickup ~= "y" then
                print("You left them there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function jerrycanitem() --(X)--(X)--(X)--(!)--(!)--(6)--(X)
        print("You have found a jerry can.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                if can == "n" then
                    if space >= 5 then
                        space = space - 5
                        can = "y"
                        print("You picked it up.")
                        io.read()
                        if store == "y" then
                            canstore = "n"
                            cfilledstore = "n"
                        end
                        break
                    elseif space < 5 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Jerry can")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Jerry can")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the jerry can(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    if canstore == "n" then
                                        print("Stored")
                                        io.read()
                                        canstore = "y"
                                        break
                                    else
                                        print("You already have a stored jerry can.")
                                        io.read()
                                    end
                                else
                                    repeat
                                        print("Jerry can")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            print("You can't use the Jerry can.")
                            io.read()
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif can == "y" then
                    print("Already owned.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function watersourceitem()
        print("You found a water source.")
        print("Use it?")
        pickup = io.read()
        if pickup == "y" then --water
            if bottle == "y" then
                if filled == "n" then
                    print("You filled your bottle.")
                    io.read()
                    filled = "y"
                    if water < 700 then
                        print("You drank the water.")
                        io.read()
                        water = water + math.random(300, 500)
                    elseif water >= 700 then
                        print("You are not thirsty.")
                        io.read()
                    end
                    if dogs > 0 then
                        if dogwater < 500 then
                            print("Your dog(s) drank the water.")
                            io.read()
                            dogwater = dogwater + math.random(300, 500)
                        elseif dogwater >= 500 then
                            print("Your dog(s) are not thirsty.")
                            io.read()
                        end
                    end
                elseif filled == "y" then
                    print("Already filled.")
                    io.read()
                    if water < 700 then
                        print("You drank the water.")
                        io.read()
                        water = water + math.random(300, 500)
                    elseif water >= 700 then
                        print("You are not thirsty.")
                        io.read()
                    end
                    if dogs > 0 then
                        if dogwater < 500 then
                            print("Your dog(s) drank the water.")
                            io.read()
                            dogwater = dogwater + math.random(300, 500)
                        elseif dogwater >= 500 then
                            print("Your dog(s) are not thirsty.")
                            io.read()
                        end
                    end
                end
            elseif bottle == "n" then
                if water < 700 then
                    print("You drank the water.")
                    io.read()
                    water = water + math.random(300, 500)
                elseif water >= 700 then
                    print("You are not thirsty.")
                    io.read()
                end
                if dogs > 0 then
                    if dogwater < 500 then
                        print("Your dog(s) drank the water.")
                        io.read()
                        dogwater = dogwater + math.random(300, 500)
                    elseif dogwater >= 500 then
                        print("Your dog(s) are not thirsty.")
                        io.read()
                    end
                end
            end
        elseif pickup ~= "y" then
            print("You left the water.")
            io.read()
        end
     --end of water
    end
    function bottleitem() --(X)--(x)--(X)--(!)--(!)--(6)--(X)
        print("You have found a water bottle.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                if bottle == "n" then
                    if space >= 1 then
                        space = space - 1
                        bottle = "y"
                        print("You picked it up.")
                        io.read()
                        if store == "y" then
                            bottlestore = "n"
                            filledstore = "n"
                        end
                        break
                    elseif space < 1 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Bottle")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Bottle")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the bottle(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    if bottlestore == "n" then
                                        print("Stored")
                                        io.read()
                                        bottlestore = "y"
                                        break
                                    else
                                        print("You already have a stored bottle.")
                                        io.read()
                                    end
                                else
                                    repeat
                                        print("Bottle")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            print("You can't use a bottle.")
                            io.read()
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif bottle == "y" then
                    print("Already owned.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function tentitem() --(X)--(!)--(X)--(!)--(!)--(6)--(X)
        print("You found a tent.")
        repeat
            print("pickup?")
            pickup = io.read()
            if pickup == "y" then
                if tent == "n" then
                    if space >= 4 then
                        print("You took the tent.")
                        io.read()
                        if store == "y" then
                            tentstore = "n"
                        end
                        space = space - 4
                        tent = "y"
                        break
                    elseif space < 4 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Tent")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Tent")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the tent(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    if tentstore == "n" then
                                        print("Stored")
                                        io.read()
                                        tentstore = "y"
                                        break
                                    else
                                        print("You already have a stored tent.")
                                        io.read()
                                    end
                                else
                                    repeat
                                        print("Tent")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            tent = "y"
                            usetent()
                            tent = "n"
                            print("You leave.")
                            io.read()
                            break
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif tent == "y" then
                    print("Already owned.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function knifeitem() --(X)--(X)--(x)--(!)--(!)--(6)--(x)
        print("You found a hunting knife.")
        repeat
            print("Pick up?")
            pickup = io.read()
            if pickup == "y" then
                if knife ~= "y" then
                    if space >= 2 then
                        knife = "y"
                        print("You picked it up.")
                        io.read()
                        if store == "y" then
                            knifestore = "n"
                        end
                        space = space - 2
                        break
                    elseif space < 2 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Knife")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Knife")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the knife(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    if knifestore == "n" then
                                        print("Stored")
                                        io.read()
                                        knifestore = "y"
                                        break
                                    else
                                        print("You already have a stored knife.")
                                        io.read()
                                    end
                                else
                                    repeat
                                        print("Knife")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            print("You can't use a knife.")
                            io.read()
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif knife == "y" then
                    print("Already owned")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
         --end of pickup
        until pickup ~= "y"
    end
    function cowitem()
        if dogcow == "n" then
            if trapcow == "n" then
                print("You found a cow.")
            elseif trapcow == "y" then
                print("You caught a cow in your bear trap.")
            end
        elseif dogcow == "y" then
            print("Your dog caught a cow.")
        end
        print("Skin it?")
        pickup = io.read()
        if pickup == "y" then --meat
            if knife == "y" then
                meatitem()
            else
                print("You don't have a knife.")
                io.read()
            end
        else
            print("You leave.")
            io.read()
        end
    end
    function antibioticsitem() --(!)--(!)--(!)--(!)--(x)--(6)--(x)
        print("You found some some antibiotics.")
        repeat
            print("accept?")
            pickup = io.read()
            if pickup == "y" then
                if antibiotics < 1 then
                    if space >= 1 then
                        amount = math.random(1, 5)
                        print("You took them.")
                        io.read()
                        space = space - 1
                        if store ~= "y" then
                            antibiotics = antibiotics + amount
                        else
                            antibiotics = antibiotics + antibioticstore
                            antibioticstore = 0
                        end
                        break
                    elseif space < 1 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Antibiotics")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Antibiotics")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the antibiotics(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    print("Stored")
                                    io.read()
                                    antibioticstore = antibioticstore + math.random(1, 5)
                                    break
                                else
                                    repeat
                                        print("Antibiotics")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            useamount = math.random(1, 5)
                            repeat
                                antibiotics = useamount
                                useantibiotics()
                                antibiotics = 0
                                useamount = useamount - 1
                                if useamount ~= 0 then
                                    print("Use more antibiotics?")
                                    print("You have " .. useamount .. " left.")
                                    want = io.read()
                                    if want ~= "y" then
                                        useamount = 0
                                    end
                                end
                            until useamount == 0
                            print("You leave.")
                            io.read()
                            antibiotics = 0
                            break
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif antibiotics >= 1 then
                    print("You picked it up.")
                    io.read()
                    amount = 1
                    if store ~= "y" then
                        antibiotics = antibiotics + amount
                    else
                        antibiotics = antibiotics + antibioticstore
                        antibioticstore = 0
                    end
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function filledbottleitem() --(x)--(2)--(x)--(!)--(!)--(6)--(x)
        print("You found a bottle of water.")
        repeat
            print("Accept?")
            pickup = io.read()
            if pickup == "y" then
                if bottle == "n" then
                    if filled == "n" then
                        if space >= 2 then
                            print("You took the bottle.")
                            io.read()
                            filled = "y"
                            bottle = "y"
                            space = space - 2
                            if store == "y" then
                                bottlestore = "n"
                                filledstore = "n"
                            end
                            break
                        elseif space < 2 then
                            print("Not enough space.")
                            io.read()
                            print(
                                "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                            )
                            want = io.read()
                            if want == "d" then
                                repeat
                                    print("Water Bottle")
                                    store = "n"
                                    dropped()
                                    store = "y"
                                    print("Drop more?")
                                    dropmore = io.read()
                                until dropmore ~= "y"
                            elseif want == "u" then
                                repeat
                                    print("Water Bottle")
                                    used()
                                    print("Use more?")
                                    dropmore = io.read()
                                until dropmore ~= "y"
                            elseif want == "s" then
                                if tentplaced == "y" then
                                    print("Store the Water Bottle(1) or something else(2)?")
                                    want = io.read()
                                    print("You taveled to your tent.")
                                    io.read()
                                    tired = tired + tenttravel
                                    tenttravel = 0
                                    if want == "1" then
                                        if bottlestore == "n" then
                                            print("Stored")
                                            io.read()
                                            bottlestore = "y"
                                            filledstore = "y"
                                            break
                                        else
                                            if filledstore == "n" then
                                                filledstore = "y"
                                                print("You filled the bottle in your tent.")
                                                io.read()
                                                break
                                            else
                                                print("You already have a stored water bottle.")
                                                io.read()
                                            end
                                        end
                                    else
                                        repeat
                                            print("water Bottle")
                                            store = "y"
                                            dropped()
                                            store = "n"
                                            print("Store more?")
                                            dropmore = io.read()
                                        until dropmore ~= "y"
                                    end
                                else
                                    print("You don't have set tent.")
                                    io.read()
                                end
                            elseif want == "n" then
                                if water < 700 then
                                    usewater()
                                    if store == "y" then
                                        filledstore = "n"
                                        print("You leave the empty bottle in your tent.")
                                        io.read()
                                    end
                                    break
                                else
                                    print("You are not thirsty.")
                                     --Fixed
                                    io.read()
                                    break
                                end
                                print("You leave.")
                                io.read()
                            elseif want ~= "t" then
                                print("You leave.")
                                io.read()
                                break
                            end
                        end
                    elseif filled == "y" then
                        print("Already filled.")
                        io.read()
                        break
                    end
                elseif bottle == "y" then
                    if filled == "n" then
                        if store == "y" then
                            print("You left the empty bottle in your tent.")
                            io.read()
                            filledstore = "n"
                        end
                        print("You filled your bottle.")
                        io.read()
                        filled = "y"
                        break
                    elseif filled == "y" then
                        print("Already filled.")
                        io.read()
                        break
                    end
                end
            elseif pickup ~= "y" then
                print("You left it.")
            end
        until pickup ~= "y"
    end
    function morphineitem() --(!)--(!)--(!)--(!)--(x)--(6)--(x)
        print("You found some morphine.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = math.random(1, 2)
                if painkillers < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            painkillers = painkillers + amount
                        else
                            painkillers = painkillers + painkillerstore
                            morphinestore = 0
                        end
                        space = space - 1
                        print("You picked them up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Morphine")
                                store = "n"
                                dropped()
                                store = "y"
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Morphine")
                                 --------------------
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the morphine(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    print("Stored")
                                    io.read()
                                    morphinestore = morphinestore + math.random(1, 2)
                                    break
                                else
                                    repeat
                                        print("Morphine")
                                        store = "y"
                                        dropped()
                                        store = "n"
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            useamount = math.random(1, 2)
                            repeat
                                painkillers = useamount
                                usemorphine()
                                painkillers = 0
                                useamount = useamount - 1
                                if useamount ~= 0 then
                                    print("Use more morphine?")
                                    print("You have " .. useamount .. " left.")
                                    want = io.read()
                                    if want ~= "y" then
                                        useamount = 0
                                    end
                                end
                            until useamount == 0
                            print("You leave.")
                            io.read()
                            painkillers = 0
                            break
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif painkillers >= 1 then
                    if store ~= "y" then
                        painkillers = painkillers + amount
                    else
                        painkillers = painkillers + painkillerstore
                        morphinestore = 0
                    end
                    print("You picked them up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function booksitem() --(x)--(x)--(x)--(!)--(!)--(6)--(x)
        color = math.random(1, 19)
        coloring()
        if ccolor == "dress" then
            ccolor = "leather"
        end
        if store == "n" then
            if findbook == "y" then
                print("You found a " .. droppedcolor .. " book.")
                ccolor = droppedcolor
            else
                print("You found a " .. ccolor .. " book.")
            end
        else
            print("You found a " .. storedcolor .. " book.")
            ccolor = storedcolor
        end
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                if space >= 2 then
                    if store == "n" then
                        if findbook == "n" then
                            word()
                            text = writing
                        else
                            text = droppedwriting
                        end
                    else
                        text = storedwriting
                        bookstore = "n"
                        storedcolor = ""
                        storedwriting = ""
                    end
                    book = "y"
                    cover = ccolor
                    space = space - 2
                    print("You picked it up.")
                    io.read()
                    break
                elseif space < 2 then
                    print("Not enough space.")
                    io.read()
                    print("Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?")
                    want = io.read()
                    if want == "d" then
                        repeat
                            print("Book")
                            if store == "y" then
                                sstore = "y"
                                store = "n"
                            end
                            dropped()
                            if sstore == "y" then
                                store = "y"
                                sstore = "n"
                            end
                            print("Drop more?")
                            dropmore = io.read()
                        until dropmore ~= "y"
                    elseif want == "u" then
                        repeat
                            print("Book")
                            used()
                            print("Use more?")
                            dropmore = io.read()
                        until dropmore ~= "y"
                    elseif want == "s" then
                        if tentplaced == "y" then
                            print("Store the book(1) or something else(2)?")
                            want = io.read()
                            print("You taveled to your tent.")
                            io.read()
                            tired = tired + tenttravel
                            tenttravel = 0
                            if want == "1" then
                                if bookstore == "n" then
                                    if store == "n" then
                                        if findbook == "n" then
                                            word()
                                            storedwriting = writing
                                        else
                                            storedwriting = droppedwriting
                                        end
                                    end
                                    bookstore = "y"
                                    storedcolor = ccolor
                                    print("Stored.")
                                    io.read()
                                    break
                                else
                                    print("You already have a stored book.")
                                    io.read()
                                end
                            else
                                repeat
                                    print("Book")
                                    if store == "n" then
                                        sstore = "n"
                                        store = "y"
                                    end
                                    dropped()
                                    if sstore == "n" then
                                        store = "n"
                                    end
                                    print("Store more?")
                                    dropmore = io.read()
                                until dropmore ~= "y"
                            end
                        else
                            print("You don't have set tent.")
                            io.read()
                        end
                    elseif want == "n" then
                        word()
                        booknow = "y"
                        if book == "y" then
                            alreadybook = "y"
                        end
                        book = "y"
                        usebook()
                        if store == "n" then
                            droppedwriting = text
                            droppedbook = "y"
                            droppedcolor = cover
                            print("You dropped the book.")
                            io.read()
                        end
                        if alreadybook == "n" then
                            book = "n"
                        end
                        alreadybook = "n"
                        booknow = "n"
                        print("You leave.")
                        io.read()
                        break
                    elseif want ~= "t" then
                        print("You leave.")
                        io.read()
                        break
                    end
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function heatpackitem() --(!)--(!)--(!)--(!)--(x)--(6)--(x)
        print("You found a heat pack.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = math.random(1, 3)
                if heatpacks < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            heatpacks = heatpacks + amount
                        else
                            heatpacks = heatpacks + heatpackstore
                            heatpackstore = 0
                        end
                        space = space - 1
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough space.")
                        io.read()
                        print(
                            "Do you want to drop(d) or use(u) something, try again(t), use now(n), or store(s) the item?"
                        )
                        want = io.read()
                        if want == "d" then
                            repeat
                                print("Heat Pack")
                                if store == "y" then
                                    sstore = "y"
                                    store = "n"
                                end
                                dropped()
                                if sstore == "y" then
                                    store = "y"
                                    sstore = "n"
                                end
                                print("Drop more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "u" then
                            repeat
                                print("Heat Pack")
                                used()
                                print("Use more?")
                                dropmore = io.read()
                            until dropmore ~= "y"
                        elseif want == "s" then
                            if tentplaced == "y" then
                                print("Store the heat pack(1) or something else(2)?")
                                want = io.read()
                                print("You taveled to your tent.")
                                io.read()
                                tired = tired + tenttravel
                                tenttravel = 0
                                if want == "1" then
                                    print("Stored")
                                    io.read()
                                    heatpackstore = heatpackstore + math.random(1, 3)
                                    break
                                else
                                    repeat
                                        print("Heat Pack")
                                        if store == "n" then
                                            sstore = "n"
                                            store = "y"
                                        end
                                        dropped()
                                        if sstore == "n" then
                                            store = "n"
                                        end
                                        print("Store more?")
                                        dropmore = io.read()
                                    until dropmore ~= "y"
                                end
                            else
                                print("You don't have set tent.")
                                io.read()
                            end
                        elseif want == "n" then
                            useamount = math.random(1, 3)
                            repeat
                                heatpacks = useamount
                                useheatpack()
                                heatpacks = 0
                                useamount = useamount - 1
                                if useamount ~= 0 then
                                    print("Use more heatpacks?")
                                    print("You have " .. useamount .. " left.")
                                    want = io.read()
                                    if want ~= "y" then
                                        useamount = 0
                                    end
                                end
                            until useamount == 0
                            print("You leave.")
                            io.read()
                            heatpacks = 0
                            break
                        elseif want ~= "t" then
                            print("You leave.")
                            io.read()
                            break
                        end
                    end
                elseif heatpacks >= 1 then
                    if store ~= "y" then
                        heatpacks = heatpacks + amount
                    else
                        heatpacks = heatpacks + heatpackstore
                        heatpackstore = 0
                    end
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function painkilleritem() --(!)--(!)--(!)--(!)--(x)--(6)--(x)
        print("You found some pain killers.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = math.random(1, 7)
                if epipen < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            epipen = epipen + amount
                        else
                            epipen = epipen + painkillerstore
                            painkillerstore = 0
                        end
                        space = space - 1
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough room.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif epipen >= 1 then
                    if store ~= "y" then
                        epipen = epipen + amount
                    else
                        epipen = epipen + painkillerstore
                        painkillerstore = 0
                    end
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
            end
        until pickup ~= "y"
    end
    function leeenfielditem() --(X)--(X)--(X)--(!)--(X)--(!)--(!)
        print("You found a Lee Enfield.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "Lee Enfield" then
                    if space >= 7 - gunspacethree then
                        print("You have picked it up")
                        io.read()
                        myammothree = math.random(10, 50)
                        damagethree = 4000 + (1000 * dogs)
                        mygunthree = "Lee Enfield"
                        accuracythree = 7
                        space = space - (7 - gunspacethree)
                        gunspacethree = 7
                        fullaccuracythree = 7
                        takegun()
                        break
                    elseif space < 7 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif mygunthree == "Lee Enfield" then
                    print("You took the ammo.")
                    io.read()
                    myammothree = myammothree + math.random(10, 50)
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function alicepackitem() --(x)--(!)--(x)--(!)--(!)--(x)--(x)
        print("You found an Alice pack, pickup?")
        pickup = io.read()
        if pickup == "y" then
            if pack == "y" then
                print("Already have.")
                io.read()
            elseif vpack == "y" then
                space = space + 4
                print("You picked it up.")
                io.read()
                pack = "y"
                vpack = "n"
            elseif cpack == "y" then
                print("You already have a Coyote pack.")
                io.read()
            else
                space = space + 10
                print("You picked it up.")
                io.read()
                pack = "y"
            end
        elseif pickup ~= "y" then
            print("You left it there.")
            io.read()
        end
    end
    function vestpouchitem() --(x)--(!)--(x)--(!)--(!)--(x)--(x)
        print("You found a vest pouch, pickup?")
        pickup = io.read()
        if pickup == "y" then
            if vpack == "y" then
                print("Already have.")
                io.read()
            elseif pack == "y" then
                print("You have an Alice pack.")
                io.read()
            elseif cpack == "y" then
                print("You have a Coyote pack.")
                io.read()
            else
                space = space + 6
                print("You picked it up.")
                io.read()
                vpack = "y"
            end
        elseif pickup ~= "y" then
            print("You left it there.")
            io.read()
        end
    end
    function penitem() --(!)--(!)--(!)--(!)--(x)--(!)--(x)
        print("You found an epi-pen.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                if morphine < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            morphine = morphine + 1
                        else
                            morphine = morphine + epipenstore
                            epipenstore = 0
                        end
                        space = space - 1
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough room.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif morphine >= 1 then
                    if store ~= "y" then
                        morphine = morphine + 1
                    else
                        morphine = morphine + epipenstore
                        epipenstore = 0
                    end
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
            end
        until pickup ~= "y"
    end
    function roadflareitem() --(!)--(x)--(!)--(!)--(x)--(!)--(x)
        print("You found a roadflare.")
        repeat
            print("Pick up?")
            pickup = io.read()
            if pickup == "y" then
                if roadflare < 1 then
                    if space >= 1 then
                        amount = 1
                        print("You picked it up.")
                        io.read()
                        space = space - 1
                        if store ~= "y" then
                            roadflare = roadflare + 1
                        else
                            roadflare = roadflare + roadflarestore
                            roadflarestore = 0
                        end
                        break
                    elseif space < 1 then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif roadflare >= 1 then
                    print("You picked it up.")
                    io.read()
                    amount = 1
                    if store ~= "y" then
                        roadflare = roadflare + 1
                    else
                        roadflare = roadflare + roadflarestore
                        roadflarestore = 0
                    end
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function bloodbagitem() --(!)--(!)--(!)--(!)--(x)--(!)--(x)
        print("You found a bloodbag.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = 1
                if bloodbags < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            bloodbags = bloodbags + amount
                        else
                            bloodbags = bloodbags + bloodbagstore
                            bloodbagstore = 0
                        end
                        space = space - 1
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough room.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif bloodbags >= 1 then
                    if store ~= "y" then
                        bloodbags = bloodbags + amount
                    else
                        bloodbags = bloodbags + bloodbagstore
                        bloodbagstore = 0
                    end
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
            end
        until pickup ~= "y"
    end
    function popitem() --(!)--(!)--(!)--(!)--(x)--(!)--(x)
        print("You found some pop.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = 1
                if pop < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            pop = pop + amount
                        else
                            pop = pop + popstore
                            popstore = 0
                        end
                        space = space - 1
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 2 then
                        print("Not enough room.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif pop >= 1 then
                    if store ~= "y" then
                        pop = pop + amount
                    else
                        pop = pop + popstore
                        popstore = 0
                    end
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function beansitem() --(!)--(!)--(!)--(!)--(x)--(!)--(x)
        print("You found some beans.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = math.random(1, 2)
                if beans < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            beans = beans + amount
                        else
                            beans = beans + beanstore
                            beanstore = 0
                        end
                        space = space - 1
                        print("You picked them up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough room.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif beans >= 1 then
                    if store ~= "y" then
                        beans = beans + amount
                    else
                        beans = beans + beanstore
                        beanstore = 0
                    end
                    print("You picked them up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function steakitem() --(!)--(!)--(!)--(!)--(x)--(!)--(x)
        print("You found some steak.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = 1
                if steak < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            steak = steak + amount
                        else
                            steak = steak + steakstore
                            steakstore = 0
                        end
                        space = space - 1
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough room.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif steak >= 1 then
                    if store ~= "y" then
                        steak = steak + amount
                    else
                        steak = steak + steakstore
                        steakstore = 0
                    end
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
            end
        until pickup ~= "y"
    end
    function bandaiditem() --(!)--(!)--(!)--(!)--(x)--(!)--(x)
        print("You found some bandaids.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = math.random(1, 5)
                if bandaids < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            bandaids = bandaids + amount
                        else
                            bandaids = bandaids + bandaidstore
                            bandaidstore = 0
                        end
                        space = space - 1
                        print("You picked them up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough room.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif bandaids >= 1 then
                    if store ~= "y" then
                        bandaids = bandaids + amount
                    else
                        bandaids = bandaids + bandaidstore
                        bandaidstore = 0
                    end
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left them there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function grenadeitem() --(!)--(x)--(!)--(!)--(x)--(!)--(x)
        print("You found grenades.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = math.random(1, 4)
                if grenade < 1 then
                    if space >= 1 then
                        grenade = grenade + amount
                        space = space - 1
                        print("You picked them up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough room.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif grenade >= 1 then
                    grenade = grenade + amount
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
            end
        until pickup ~= "y"
    end
    function smokegrenadeitem() --(!)--(x)--(!)--(!)--(x)--(!)--(x)
        print("You found a smoke grenade.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                amount = 1
                if smoke < 1 then
                    if space >= 1 then
                        if store ~= "y" then
                            smoke = smoke + amount
                        else
                            smoke = smoke + smokestore
                            smokestore = 0
                        end
                        space = space - 1
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 1 then
                        print("Not enough room.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif smoke >= 1 then
                    if store ~= "y" then
                        smoke = smoke + amount
                    else
                        smoke = smoke + smokestore
                        smokestore = 0
                    end
                    print("You picked it up.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
            end
        until pickup ~= "y"
    end
    function FNFALitem() --(x)--(x)--(x)--(x)--(!)--(x)--(!)
        print("You found a FN FAL.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "FN FAL" then
                    if space >= 7 - gunspacethree then
                        print("You have picked it up")
                        io.read()
                        myammothree = math.random(10, 50)
                        damagethree = 8000 + (1000 * dogs)
                        mygunthree = "FN FAL"
                        accuracythree = 9
                        fullaccuracythree = 9
                        space = space - (7 - gunspacethree)
                        gunspacethree = 7
                        takegun()
                        break
                    elseif space < 7 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                elseif mygunthree == "FN FAL" then
                    print("You took the ammo.")
                    io.read()
                    myammothree = myammothree + math.random(10, 50)
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    break
                end
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        until pickup ~= "y"
    end
    function crossbowitem() --(X)--(X)--(X)--(!)--(X)--(!)--(!)
        print("You found a crossbow.")
        ammo = math.random(10, 20)
         --Ammo
        print("It has " .. ammo .. " bolts.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "Crossbow" then
                    if space >= 5 - gunspacethree then
                        damagethree = 3000 + (1000 * dogs)
                        mygunthree = "Crossbow"
                        accuracythree = 6
                        fullaccuracythree = 6
                        space = space - (5 - gunspacethree)
                        gunspacethree = 5
                        myammothree = ammo
                        takegun()
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 5 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                 -- end of space
                elseif mygunthree == "Crossbow" then
                    print("You took the ammo.")
                    io.read()
                    myammothree = myammothree + ammo
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    break
                end
            elseif pickup ~= "y" then --No
                print("You left it there")
                io.read()
            end
         --end of already owned
        until pickup ~= "y"
    end
    function hatchetitem() --(X)--(X)--(X)--(!)--(X)--(!)--(!)
        print("You found a Hatchet.")
        ammo = math.random(99999)
         --Ammo
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then -- Pick up Hatchet
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "Hatchet" then
                    if space >= 5 - gunspacethree then
                        space = space - (5 - gunspacethree)
                        gunspacethree = 5
                        damagethree = 3000 + (1000 * dogs)
                        mygunthree = "Hatchet"
                        accuracythree = 10
                        fullaccuracythree = 10
                        myammothree = ammo
                        takegun()
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 5 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                 -- end of space
                elseif mygunthree == "Hatchet" then
                    print("Already owned.")
                    io.read()
                    break
                end
            elseif pickup ~= "y" then --No
                print("You left it there")
                io.read()
            end
         --end of already owned
        until pickup ~= "y"
    end
    function makarovitem() --(X)--(X)--(X)--(!)--(X)--(!)--(!)
        print("You found a Makarov.")
        ammo = math.random(10, 25)
         --Ammo
        print("It has " .. ammo .. " bullets.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then -- Pick up Makarov
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "Makarov" then
                    if space >= 3 - gunspacethree then
                        space = space - (3 - gunspacethree)
                        gunspacethree = 3
                        damagethree = 1500 + (1000 * dogs)
                        mygunthree = "Makarov"
                        accuracythree = 4
                        fullaccuracythree = 4
                        myammothree = ammo
                        takegun()
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 3 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                 -- end of space
                elseif mygunthree == "Makarov" then
                    print("You took the ammo.")
                    io.read()
                    myammothree = myammothree + ammo
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    break
                end
            elseif pickup ~= "y" then --No
                print("You left it there")
                io.read()
            end
         --end of already owned
        until pickup ~= "y"
    end
    function revolveritem() --(X)--(X)--(X)--(!)--(X)--(!)--(!)
        print("You found a revolver.")
        ammo = math.random(1, 15)
         --Ammo
        print("It has " .. ammo .. " bullets.")
        repeat
            print("Pickup?")
            pickup = io.read()
            if pickup == "y" then
                print("Put in which slot?")
                slot = io.read()
                if slot == "2" then
                    mygunthree = myguntwo
                    myammothree = myammotwo
                    damagethree = damagetwo
                    gunspacethree = gunspacetwo
                    accuracythree = accuracytwo
                    fullaccuracythree = fullaccuracytwo
                else
                    gunspacethree = gunspace
                    mygunthree = mygun
                    myammothree = myammo
                    damagethree = damage
                    accuracythree = accuracy
                    fullaccuracythree = fullaccuracy
                    slot = "1"
                end
                if mygunthree ~= "Revolver" then
                    if space >= 3 - gunspacethree then
                        space = space - (3 - gunspacethree)
                        gunspacethree = 3
                        damagethree = 2500 + (1000 * dogs)
                        mygunthree = "Revolver"
                        accuracythree = 5
                        fullaccuracythree = 5
                        myammothree = ammo
                        takegun()
                        print("You picked it up.")
                        io.read()
                        break
                    elseif space < 5 - gunspacethree then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                    end
                 -- end of space
                elseif mygunthree == "Revolver" then
                    print("You took the ammo.")
                    io.read()
                    myammothree = myammothree + ammo
                    if slot == "2" then
                        myammotwo = myammothree
                    else
                        myammo = myammothree
                    end
                    break
                end
            elseif pickup ~= "y" then --No
                print("You left it there")
                io.read()
            end
        until pickup ~= "y"
     --No
    end
    function takegun()
        if slot == "2" then
            gunspacetwo = gunspacethree
            myguntwo = mygunthree
            myammotwo = myammothree
            damagetwo = damagethree
            accuracytwo = accuracythree
            fullaccuracytwo = fullaccuracythree
        elseif slot == "1" then
            gunspace = gunspacethree
            mygun = mygunthree
            myammo = myammothree
            damage = damagethree
            accuracy = accuracythree
            fullaccuracy = fullaccuracythree
        end
        fullaccuracythree = 0
        accuracythree = 0
        damagethree = 0
        myammothree = 0
        mygunthree = "no weapon"
        gunspacethree = 0
    end
    function guarddrop() --(X)--(X)--(X)--(X)--(!)--(X)--(X)
        drop = math.random(1, 6)
        if drop == 1 then
            FNFALitem()
        elseif drop == 6 then
            gillieitem()
        elseif drop == 2 then
            smokegrenadeitem()
        elseif drop == 3 then
            grenadeitem()
        elseif drop == 4 then
            AK47item()
        elseif drop == 5 then
            g36citem()
        end
    end
    function help()
        repeat
            print(
                "Section 1:GAME HELP, Section 2:QUESTION HELP, Section 3:STAT HELP, Section 4:INFORMATION HELP, Section 5:WEAPON HELP"
            )
            print(
                "Section 6:ITEM HELP, Section 7:INJURY HELP, Section 8:OUTFIT HELP, Section 9:SPAWN HELP, Section 10:EVENT HELP"
            )
            print("Section 11:ACTION HELP, Section 12:OPTION HELP, Section 13:GAMEMODE HELP")
            print(
                "Please type the number of the section you want to view and hit ENTER or RETURN. Or just hit ENTER or RETURN to leave the help section."
            )
            section = io.read()
            if section == "1" then
                print("GAME HELP")
                print(
                    "This game randomly chooses from a list of different events to occur, after each event, it will show a line."
                )
                print('To view your stats type "s" after you see the line.')
                print(
                    "After an event or message, press ENTER or RETURN to continue. Or if you just need to enter a word."
                )
                print('From now on, type "h" after the line to view help.')
                print("Enter now to continue.")
                io.read()
            elseif section == "2" then
                print("QUESTION HELP")
                print("After typing an answer hit ENTER or RETURN to enter it.")
                print('For a yes or no question, type "y" for yes or anything else for no.')
                print("For items, type out the word in singular form and lower case.")
                print("For actions, type the first letter of the word in lower case.")
                print("See ITEM HELP for items or ACTION HELP for actions.")
                io.read()
            elseif section == "3" then
                print("STAT HELP")
                print("Your name is displayed at the top of your stats.")
                print("Below your name is your gamemode and your moral level.")
                print("Below that is your spawn and the number of days you have survived.")
                print("Below that is the time of day and the time itself, if you have a watch.")
                print(
                    "In options, you can choose to have your stats automaticly displayed, to search your stats, and what sections of stats to view."
                )
                print(
                    "See GAMEMODE HELP for gamemodes, INFORMATION HELP for accuracy (time of day), ITEM HELP for watches, or OPTION HELP for options."
                )
                io.read()
                print("Your moral goes up by killing bandits and zombies.")
                print("It goes down by attacking players.")
                print("When it gets high enough, you become a Hero and get a cape.")
                print("Players attack less often when you are a Hero.")
                print("If your moral gets too low, you become a Bandit.")
                print("Players attack more if you are a Bandit.")
                print("See OUTFIT HELP for bandanas/capes")
                io.read()
            elseif section == "4" then
                print("INFORMATION HELP")
                print("Your blood lowers after being attacked.")
                print("To raise it, find a bloodbag and hope a player will use it on you, or eat food.")
                print("See ITEM HELP for bloodbags and food or INFORMATION HELP for food.")
                io.read()
                print("The more pain you have, the more ammo it takes to kill someone.")
                print("Lower your pain by using a pain killer.")
                print("See ITEM HELP for pain killers.")
                io.read()
                print("Your temperature drops when you sleep.")
                print("If it gets below 33 then you catch a cold which rises your pain.")
                print("To lower it, don't sleep as much or use a heat pack.")
                print("See ITEM HELP for heat packs.")
                io.read()
                print("If your food gets to 0, you die.")
                print("If you have food and you need to eat, you will automaticly do so.")
                print("Otherwise, just use some beans or a steak.")
                print("See ITEM HELP for beans and steak.")
                io.read()
                print("If your water gets to 0, you die.")
                print("If you have water and you need to drink, you will again automaticly do so.")
                print("Otherwise, just use some water or some pop.")
                print("See ITEM HELP for bottles and pop.")
                io.read()
                print('If you are tired, type "r" after the line to rest.')
                print("Too much exhaustion can get you caught by players and zombies if you try to run. ")
                print("Fighting and fleeing brings up your exhaustion.")
                print("Resting brings your food and water down. But it also brings down exhaustion.")
                print("If you have a tent, resting brings down exhaustion faster.")
                print("See ITEM HELP for tents.")
                io.read()
            elseif section == "5" then
                print("WEAPON HELP")
                print("You can find weapons all over.")
                print("You have to have one to win a fight.")
                print("You also have to have enough ammo.")
                io.read()
                print("You can have up to 2 guns at a time, a primary, and a secondary.")
                print('When taking a gun, you can choose which slot to put it in, slot "1" or slot "2".')
                print("If you don't have enought ammo in your primary gun, then it uses your secondary gun.")
                print("If you still don't have enough, you die.")
                print('To switch your primary and secondary guns, type "w" (weapon switch) after the line.')
                print("If you have the same secondary and primary guns, it will compile your ammo when you do this.")
                io.read()
                print('The Makarov ("gun") can be found on the ground.')
                print("It takes up 3 spaces and has 4 accuracy.")
                print("It does 1500 damage and can be found with up to 50 bullets.")
                io.read()
                print('The Revolver ("gun") can be found on the ground and does 2500 damage.')
                print("It takes up 3 spaces and has 5 accuracy.")
                print("It can be found with up to 10 bullets.")
                io.read()
                print('The Crossbow ("gun") can be rarely found on the ground with up to 20 bullets. ')
                print("It takes up 5 spaces and has 6 accuracy.")
                print("The Crossbow does 3000 damage.")
                io.read()
                print('The M16 ("gun") can be found in campsites with up to 50 bullets.')
                print("It takes up 6 spaces and has 6 accuracy.")
                print("It does 3400 damage.")
                print("See EVENT HELP for campsites")
                io.read()
                print('The Hatchet ("gun") can be found on the ground and does not need ammo.')
                print("It takes up 5 spaces and has 10 accuracy.")
                print("It does 3000 damage but takes alot more blood to use.")
                print('Use the "hatchet" in a forest to chop wood.')
                print("See ITEM HELP for wood.")
                io.read()
                print('The G36C ("gun") can be found in police stations and on guards.')
                print("It does 3700 damage and takes up 6 spaces.")
                print("It can be found with up to 70 bullets and has 7 accuracy.")
                print("See EVENT HELP for campsites and buildings")
                io.read()
                print('The AK47 ("gun") can be found in police stations and on guards.')
                print("It does 3500 damage takes up 6 spaces.")
                print("It can be found with up to 70 bullets and has 7 accuracy.")
                print("See EVENT HELP for campsites and buildings")
                io.read()
                print('The M4A1 ("gun") can be found in police stations.')
                print("It does 4000 damage takes up 6 spaces.")
                print("It can be found with up to 70 bullets and has 8 accuracy.")
                print("See EVENT HELP for buildings")
                io.read()
                print('The Doulble Barrel Shotgun ("gun") can be found in police stations and on guards.')
                print("It does 5000 damage takes up 7 spaces.")
                print("It can be found with up to 50 bullets and has 6 accuracy.")
                print("See EVENT HELP for buildings")
                io.read()
                print("The Lee Enfield does 4000 damage and can be found on players.")
                print("It takes up 7 spaces and has 7 accuracy.")
                print("It can be found with up to 50 bullets.")
                print("See EVENT HELP for players")
                io.read()
                print('The FN FAL ("gun") can be found on gaurds and does 8000 damage.')
                print("It takes up 7 spaces and is found with up to 50 bullets.")
                print("It has 9 accuracy.")
                print("See EVENT HELP for guards")
                io.read()
                print('The AS50 ("gun") can be found in Millitary camps and does 200000 damage.')
                print("It takes up 8 spaces and is found with up to 50 bullets.")
                print("It has 10 accuracy.")
                print("See EVENT HELP for Millitary campsites")
                io.read()
                print("Ammo can be taken from a gun you find on the ground that you already have or from players.")
                print("You need ammo to win a fight.")
                print("Ammo does not take up space.")
                io.read()
                print("The more damage your weapon has, the less ammo it needs.")
                io.read()
                print("The more accuracy your gun has, the less ammo it needs.")
                print("During the night, your accuracy goes down by 4.")
                print("During the day, it goes back up 4.")
                print("Use NV goggles to bring your accuracy up at night.")
                print("See ITEM HELP for NV goggles")
                io.read()
            elseif section == "6" then
                print("ITEM HELP")
                print("Each item takes up space depending on the size.")
                print(
                    "If you don't have room for an item, you will automaticly be asked to drop something and then use something, just hit enter to cancel."
                )
                print(
                    'To drop an item, type "d" after you see the line. Then type the item\'s name with all lower case in singular form.'
                )
                print(
                    'To use an item, type "u" after you see the line. Then type the item\'s name with all lower case in singular form.'
                )
                io.read()
                print('The "jerry can" can be filled by players and is needed to use a vehicle.')
                print("It takes up 5 spaces.")
                print("The vehicle will then take you to a random spawn.")
                print("See SPAWN HELP for the spawns.")
                io.read()
                print('A "bloodbag" can be found in campsites, on zombies, or on the ground.')
                print("A player will use a blood bag on you to restore your health.")
                print("You need one first though.")
                print("They take up 1 space.")
                print("See INFORMATION HELP for more on health.")
                io.read()
                print('Bandaids ("bandaid") can be found on the ground, on zombies, in campsites, or from players.')
                print("They take up 1 space.")
                print("They are used to stop bleeding.")
                print("See INJURY HELP for bleeding.")
                io.read()
                print('A "bottle" can be found on the ground.')
                print("You can fill it at water sources or with players.")
                print("It takes up 1 space and restores up to 500 water when filled.")
                print("See INFORMATION HELP for water.")
                io.read()
                print('Some "pop" can be found on the ground, in campsites, on zombies, on players, or from players.')
                print("It takes up 1 space and restores up to 200 water.")
                print("See INFORMATION HELP for water.")
                io.read()
                print('Some "steak" can be made by cooking meat with wood and matches.')
                print("Use a match to cook.")
                print("Restores up to 500 food.")
                print("Takes 1 space.")
                print("See INFORMATION HELP for food or ITEM HELP for wood, meat, and matches.")
                io.read()
                print('Some "beans" can be found on the ground, in campsites, on zombies, on players, or from players.')
                print("Beans take up 1 space and restores up to 200 food.")
                print("See INFORMATION HELP for food.")
                io.read()
                print('Some "morphine" can be found on players, on the ground, or from players.')
                print("Morphine is used to heal broken bones.")
                print("It takes up 1 space.")
                print("See INJURY HELP for broken bones.")
                io.read()
                print('You can find a hunting "knife" on the ground.')
                print("You use it to skin cows for meat.")
                print("It takes up 2 spaces.")
                print("See EVENT HELP for cows or ITEM HELP for meat.")
                io.read()
                print('An "epi-pen" can be found on players.')
                print("It takes up 1 space.")
                print(
                    "When you die of blood, you have 1/3 of a chance a player will use an epi-pen on you if you have one."
                )
                print("You will then be revived and continue playing.")
                print("See INJURY HELP for death.")
                io.read()
                print('Use a "pain killer" to reduce pain.')
                print("They can be found on the ground or on players.")
                print("They take up 1 space.")
                print("See INFORMATION HELP for pain.")
                io.read()
                print('A "heat pack" can be found on the ground, or on a player.')
                print("The heat pack takes up 1 space and is used to raise temperature.")
                print("See INFORMATION HELP for temperature.")
                io.read()
                print('A "match" can be found on the ground.')
                print("The match takes up 1 space and is used to cook meat with wood.")
                print("You can also warm yourself with fires.")
                print("See ITEM HELP for wood and meat and INFORMATION HELP for temperature.")
                io.read()
                print('Some "wood" can be chopped down by using a hatchet in a forest.')
                print("The wood is used to cook meat by using a match.")
                print("You can also warm yourself with fires.")
                print("Wood takes up 2 spaces.")
                print("See ITEM HELP for meat and matches or SPAWN HELP for forest")
                io.read()
                print('A "bear trap" can be found in campsites.')
                print("It is used to catch a player, zombie, or cow after a few turns.")
                print("When used, it will say you have a set trap in the weapons section.")
                print("You can only set one trap at a time.")
                print("It takes up 2 space.")
                print("See EVENT HELP for cows, players, and zombies")
                io.read()
                print('A "road flare" is used to attract eigther a player or a zombie.')
                print("It takes up 1 space and can be found on the ground, from players, or on zombies. ")
                print("See EVENT HELP for players and zombies.")
                io.read()
                print('Night vision "goggles", or NV goggles can be found in Millitary campsites.')
                print("They rais your accuracy during the night and lower it during the day (if they are on)")
                print("Use them to turn them on or off.")
                print("They take up 2 spaces.")
                print("See EVENT HELP for Millitary camps")
                io.read()
                print('A "grenade" can be found on guards or in Millitary campsites.')
                print("It can be used to kill a person and take his stuff.")
                print("It takes up 1 space.")
                print("See EVENT HELP for Millitary camps and guards")
                io.read()
                print('A "smoke grenade" can be found on guards or in Millitary campsites.')
                print("It is automaticly used when trying to escape a person when your too tired.")
                print("When used, it lets you escape no matter what.")
                print("It takes up 1 space.")
                print("See EVENT HELP for Millitary camps and guards")
                io.read()
                print('A "tent" can be found in the city on the ground.')
                print("It takes up 4 spaces and reduces more exhaustion when you sleep then without one.")
                print("You can also use the tent to store items in.")
                print(
                    "It takes exhaustion every time you travel to your teent but you can put anything in and take anything out of it."
                )
                print("Use the tent to place it, then use it again to travel to it.")
                print("See INFORMATION HELP for exhaustion.")
                io.read()
                print('A "book" can be found in buildings in a variety of colors.')
                print("It takes up 2 spaces.")
                print('When used, type "w" to write in it, "r" to read it, or "e" to erase it.')
                print("The book will have a random sentence automaticly written in it.")
                print("If you write in a book and then drop it, players can find it.")
                print('If a player finds it and it says "Help: Food" the player will give you food.')
                print('Or, if it says "Help: Ammo" then the player will give you ammo.')
                print('"Help: Water" gives water or pop and "Help: Bandaid" gives you bandaids.')
                print("See ITEM HELP for items")
                io.read()
                print("Watches can be found in buildings or on the ground.")
                print("They don't take up space and go in the outfit section.")
                print("The watch tells you the time and cannot be dropped.")
                print("See OUTFIT HELP for outfits or STAT HELP for time")
                io.read()
                print('A "radio" can be found in buildings.')
                print("You can use the radio to talk to a chat bot.")
                print("Radios are really just for fun as they don't help you at all.")
                print("Radios take up 1 space.")
                print("See EVENT HELP for buildings")
                io.read()
                print('A "antibiotic" can be obtained from players or in a campsite.')
                print("They remove infection and take up 1 space.")
                print("See INJURY HELP for infection.")
                io.read()
                print('Some "meat" can be found by skinning cows or dogs.')
                print("Meat takes up 1 space and is used to cook into steak.")
                print("Eating it will heal very little and fill just a bit.")
                print("If eaten, you have a high chance of it infecting you.")
                print("See ITEM HELP for wood and meat")
                io.read()
                print("The Medbox can be found in Hospitals in the City.")
                print("They contain every type of Medical supply with random amounts for each.")
                print("See EVENT HELP for Hospitals, SPAWN HELP for the City, and ITEM HELP for medical supplies")
                io.read()
                print("An Alice pack can be found on players or in campsites.")
                print("They can hold up to 10 items.")
                print("They can not be dropped and are found in the outfit section.")
                print("See OUTFIT HELP for outfits.")
                io.read()
                print("A Vest Pouch can be found on zombies.")
                print("They can hold up to 6 items.")
                print("They can not be dropped and are found in the outfit section.")
                print("See OUTFIT HELP for outfits")
                io.read()
                print("A Coyote pack can be found in Millitary camps.")
                print("They can hold up to 20 items.")
                print("They can not be dropped and are found in the outfit section.")
                print("See OUTFIT HELP for outfits.")
                io.read()
            elseif section == "7" then
                print("INJURY HELP")
                print("When bleeding, you lose bloos after each event.")
                print("You stop losing blood at 2000 blood left.")
                print("To stop bleeding, use a bandaid.")
                print("See ITEM HELP for bandaids.")
                io.read()
                print("If you have a broken bone, your exhaustion goes up each turn.")
                print("If it gets above 1000, you could black out for a couple days.")
                print("Use morphine to heal broken bones.")
                print("See ITEM HELP for morphine.")
                io.read()
                print("Colds raise your pain and are cured with heat packs.")
                print("You can also cure it by raising your temperature by jogging or waiting around.")
                print("See ITEM HELP for heat packs or ACTION HELP for jogging.")
                io.read()
                print("When you die, a player might revive you if you have an epi-pen.")
                print(
                    "If you still don't have enough blood but have a blood bag, he will then give you a blood tranfusion."
                )
                print("See ITEM HELP for epi-pens and bloodbags or INFORMATION HELP for blood.")
                io.read()
                print("You can get infections from standing near players or bleeding on a zombie.")
                print("Cure the infection with antibiotics.")
                print("You lose blood until you you only have 6000 left with an infection.")
                print("See ITEM HELP for antibiotics.")
                io.read()
            elseif section == "8" then
                print("OUTFIT HELP")
                print("Your outfit is randomly made at the start of the game.")
                print("It has no effect on the gameplay itself.")
                print("Clothes take no space and can be found on bodies.")
                print("There are several different colors of clothing.")
                print("The back packs, gillie's, watches, and bandanas/capes can also be found in this section.")
                print("See ITEM HELP for back packs and watches and STAT HELP for bandanas/capes.")
                io.read()
                print("Gillie suits can be found on players and in military camps.")
                print("They don't take up space and make it easier to escape people.")
                io.read()
            elseif section == "9" then
                print("SPAWN HELP")
                print("You start in one of three spawns.")
                io.read()
                print("Spawn 1 is the city, you find tents and buildings here.")
                print("See INFORMATION HELP or ITEM HELP for tents and EVENT HELP for buildings.")
                io.read()
                print("Spawn 2 is the shore, you find water sources here.")
                print("See ITEM HELP or EVENT HELP for water.")
                io.read()
                print("Spawn 3 is the forest, you find cows, trees, and Farms here.")
                print("See ITEM HELP for trees or EVENT HELP for cows and farms")
                io.read()
            elseif section == "10" then
                print("EVENT HELP")
                print("Zombies drop 4 items and have up to 3000 health.")
                print("They can cut you or brake your leg if you attack.")
                print("If you are too exhausted to escape they will kill you.")
                print("They drop bandaids, beans, pop, and road flares.")
                print("See ITEM HELP for items, INJURY HELP for injuries, or INFORMATION HELP for exhaustion.")
                io.read()
                print("Players drop everything and have up to 12000 health.")
                print("When you approach a player, you have a 1/2 chance they will be nice.")
                print("If they are nice, they will give you something.")
                print("Otherwise they will attack you.")
                print("They can cut you or brake your leg if they attack.")
                print("If you are too exhausted to escape they can either kill you or release you.")
                print("Players give ammo, beans, water, fuel, bandaids, morphine, pop, antibiotics, and road flares.")
                print("See ITEM HELP for items, INJURY HELP for injuries, or INFORMATION HELP for exhaustion.")
                io.read()
                print("Gangs can rarely be found with 2-5 players in them.")
                print("Gangs always attack.")
                io.read()
                print("On the ground, you can find 13 items.")
                print(
                    "You can find bloodbags, knives, tents, bottles, jerry cans, bandaids, painkillers, morphine, heat packs, matches, beans, pop, and road flares."
                )
                print("See ITEM HELP for items.")
                io.read()
                print("Campsites can have every item.")
                print("But be careful, sometimes you could step on a bear trap and brake a leg.")
                print("Players can also find you here.")
                print("Campsites can also have fires to cook or warm.")
                print("See ITEM HELP for items and WEAPON HELP for M16.")
                io.read()
                print("Campsites have a 30th of a chance to be a Millitary camp.")
                print("Millitary camps drop rare items.")
                print(
                    "You can find an AS50 in the tent, NV goggles, smoke grenades, grenades, gillie suits, and the Coyote pack."
                )
                print("The Millitary campsite will sometimes have a guard, which is really hard to kill.")
                print(
                    "The guard can drop 6 items which are smoke grenades, grenades, G36C, gillie suits, AK47, and an FN FAL."
                )
                print("See ITEM HELP for items, OUTFIT HELP for gillie suit, and WEAPON HELP for weapons")
                io.read()
                print("You can find cows in the forest.")
                print('Using a "knife", you can skin them for up to 8 meat.')
                print("You can then cook meat with wood and matches.")
                print("See ITEM HELP for wood and matches.")
                io.read()
                print("You can find water sources on the shore.")
                print("You can drink it with your hands or fill your bottle.")
                print("Drinking gives up to 500 water.")
                print("See INFORMATION HELP for water and ITEM HELP for bottles.")
                io.read()
                print("You can find dogs on the ground.")
                print("You can tame with steak, otherwise they will attack.")
                print("Each dog can be named and does 1000 extra damage.")
                print("Dogs will also catch things from time to time.")
                print(
                    "When your dogs run out of health, only one dies. When they run out of food or water, they all die."
                )
                print("When a dog dies, his name will stay on the list until they all die.")
                print('Feed them by using "dog" and selecting to either feed ("f") or water ("w").')
                print("You can also skin them for meat.")
                print("See ACTION HELP for feeding/watering/skinning")
                io.read()
                print("Buildings can be found in the City and the Farm can be found in the Forest.")
                print("Buildings can have many different items depending on what kind of building it is.")
                print("Police Stations have guns and ammo and are found in the City.")
                print("Gas Stations have fuel and Jerry cans and are also found in the City.")
                print("Hospitals can also be found in the City and have medical supplies.")
                print("Hospitals can also have the Medbox which contains every medical supplie.")
                print("Buildings can be found in the City and have every day stuff like food and tools.")
                print("Farms are found in the Forest with  stuff like tools.")
                print("See WEAPON HELP for weapons, ITEM HELP for items and Medbox, and SPAWN HELP for spawns")
                io.read()
            elseif section == "11" then
                print("ACTION HELP")
                print("Type actions after the line to use.")
                io.read()
                print(
                    'To view stats type "s", to use type "u", to drop type "d", to jog type "j", type "o" for options, and to rest type "r".'
                )
                print(
                    "Jogging raises your temperature and resting lowers your exhaustion and switches between night and day."
                )
                print("See INFORMATION HELP for exhaustion and temperature.")
                io.read()
                print('When using a book, type "w" to write, "e" to erase, and "r" to read.')
                print("See ITEM HELP for books.")
                io.read()
                print('When feeding dogs, use "f" for feed and "w" for water.')
                print('To skin a dog, use the dog, then type "s".')
                print("The more you feed him, the more meat you get from skinning him.")
                print("See EVENT HELP for dogs")
                io.read()
                print('To quit, type "q" after the line.')
                io.read()
            elseif section == "12" then
                print("OPTION HELP")
                print('Type "o" after the line to change options.')
                print("Autostats will automatically dispay your stats after a said amount of turns.")
                print(
                    "Stat Seach lets you look at sections of your stats individually. (Useful if stats are running out of your screen.)"
                )
                print("Stat Sections lets you choose which sections of stats to view when your stats are shown.")
                print("You can change your name using options.")
                io.read()
            elseif section == "13" then
                print("GAMEMODE HELP")
                print(
                    "The recruit gamemode gives you all the medical supplies, a road flare, a bottle of water, a revolver, a Vest Pouch, and 5 steak. You have 22,000 health."
                )
                print("The easy gamemode gives you 5 bandaids, 7 pop, and 5 beans. You have 20,000 health.")
                print("The medium gamemode gives you 2 beans and a 3 pop. You have 15,000 health.")
                print("The hard gamemode gives you nothing with 12,000 health.")
                print("See ITEM HELP for items or INFORMATION HELP for health.")
                io.read()
            else
                section = "0"
            end
        until section == "0"
    end
    function zombiedrop() --(X)--(X)--(X)--(X)--(!)--(X)--(X)
        if clothedrop == "y" then
            clothes = math.random(1, 10)
            if clothes == 1 then
                print("It had a bloody shirt.")
                print("Take?")
                pickup = io.read()
                if pickup == "y" then
                    print("You now have a bloody shirt.")
                    io.read()
                    shirt = "bloody"
                elseif pickup ~= "y" then
                    print("You left it there.")
                    io.read()
                end
            else
                print("It had a ripped shirt.")
                print("Take?")
                pickup = io.read()
                if pickup == "y" then
                    print("You now have a ripped shirt.")
                    io.read()
                    shirt = "ripped"
                elseif pickup ~= "y" then
                    print("You left it there.")
                    io.read()
                end
            end
            print("It had ripped pants.")
            print("Take?")
            pickup = io.read()
            if pickup == "y" then
                print("You now have ripped pants.")
                io.read()
                pants = "ripped"
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        end
        drop = math.random(1, 7)
        if drop == 3 then
            bandaiditem()
        elseif drop == 4 then
            beansitem()
        elseif drop == 5 then
            popitem()
        elseif drop == 6 then
            roadflareitem()
        elseif drop == 7 then
            vestpouchitem()
        end
    end
    function enemydrop() --(X)--(X)--(X)--(X)--(!)--(X)--(X)
        if clothedrop == "y" then
            color = math.random(1, 28)
            coloring()
            print("They had a " .. ccolor .. " shirt.")
            print("Take?")
            pickup = io.read()
            if pickup == "y" then
                print("You now have a " .. ccolor .. " shirt.")
                io.read()
                shirt = ccolor
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
            color = math.random(1, 7)
            coloring()
            print("They had " .. ccolor .. " pants.")
            print("Take?")
            pickup = io.read()
            if pickup == "y" then
                print("You now have " .. ccolor .. " pants.")
                io.read()
                pants = ccolor
            elseif pickup ~= "y" then
                print("You left it there.")
                io.read()
            end
        end
        drop = math.random(1, 37)
        if drop == 1 then
            makarovitem()
        elseif drop == 2 then
            revolveritem()
        elseif drop == 3 then
            amount = math.random(1, 7)
            if amount == 1 then
                M16item()
            else
                beansitem()
            end
        elseif drop == 37 then
            gillieitem()
        elseif drop == 4 then
            amount = math.random(1, 2)
            if amount == 1 then
                crossbowitem()
            else
                popitem()
            end
        elseif drop == 5 then
            amount = math.random(1, 2)
            if amount == 1 then
                hatchetitem()
            else
                beansitem()
            end
        elseif drop == 6 then
            amount = math.random(1, 10)
            if amount == 1 then
                leeenfielditem()
            else
                popitem()
            end
        elseif drop == 7 then
            amount = math.random(1, 40)
            if amount == 1 then
                FNFALitem()
            else
                beansitem()
            end
        elseif drop == 8 then
            amount = math.random(1, 100)
            if amount == 1 then
                AS50item()
            else
                popitem()
            end
        elseif drop == 9 then
            amount = math.random(1, 5)
            if amount == 1 then
                gogglesitem()
            else
                beansitem()
            end
        elseif drop == 10 then
            amount = math.random(1, 30)
            if amount == 1 then
                coyotepackitem()
            else
                popitem()
            end
        elseif drop == 11 then
            amount = math.random(1, 5)
            if amount == 1 then
                filledjerrycanitem()
            else
                jerrycanitem()
            end
        elseif drop == 12 then
            beartrapitem()
        elseif drop == 13 then
            matchitem()
        elseif drop == 14 then
            amount = math.random(1, 3)
            if amount == 1 then
                filledbottleitem()
            else
                bottleitem()
            end
        elseif drop == 15 then
            tentitem()
        elseif drop == 16 then
            knifeitem()
        elseif drop == 17 then
            amount = math.random(1, 3)
            if amount == 1 then
                antibioticsitem()
            else
                beansitem()
            end
        elseif drop == 18 then
            morphineitem()
        elseif drop == 19 then
            if droppedbook == "y" then
                amount = math.random(1, 10)
                if amount == 1 then
                    findbook = "y"
                    booksitem()
                    findbook = "n"
                    droppedbook = "n"
                else
                    booksitem()
                end
            else
                booksitem()
            end
        elseif drop == 20 then
            heatpackitem()
        elseif drop == 21 then
            painkilleritem()
        elseif drop == 22 then
            amount = math.random(1, 15)
            if amount == 1 then
                alicepackitem()
            else
                popitem()
            end
        elseif drop == 23 then
            vestpouchitem()
        elseif drop == 24 then
            penitem()
        elseif drop == 25 then
            roadflareitem()
        elseif drop == 26 then
            bloodbagitem()
        elseif drop == 27 then
            bandaiditem()
        elseif drop == 28 then
            amount = math.random(1, 40)
            if amount == 1 then
                grenadeitem()
            else
                beansitem()
            end
        elseif drop == 29 then
            amount = math.random(1, 35)
            if amount == 1 then
                smokegrenadeitem()
            else
                popitem()
            end
        elseif drop == 30 then
            ammoitem()
        elseif drop == 31 then
            radioitem()
        elseif drop == 32 then
            amount = math.random(1, 15)
            if amount == 1 then
                g36citem()
            else
                beansitem()
            end
        elseif drop == 33 then
            amount = math.random(1, 7)
            if amount == 1 then
                AK47item()
            else
                popitem()
            end
        elseif drop == 34 then
            amount = math.random(1, 7)
            if amount == 1 then
                M4A1item()
            else
                beansitem()
            end
        elseif drop == 35 then
            amount = math.random(1, 4)
            if amount == 1 then
                DBshotgunitem()
            else
                popitem()
            end
        elseif drop == 36 then
            watchitem()
        end
    end
    function word()
        words = math.random(1, 19)
        if words == 1 then
            writing = "You shouldn't have killed me..."
        elseif words == 2 then
            amount = math.random(20, 100)
            amounts = math.random(2, 5)
            writing = "Day " .. amount .. ", I began work on a house. Killed " .. amounts .. " cows."
        elseif words == 3 then
            writing = "Find meat, set up camp, fill bottle"
        elseif words == 4 then
            writing =
                "If my family finds this, I'm already dead. I attached my will to the following page...I wish you the best."
        elseif words == 5 then
            writing = "I'll kill dat boy!"
        elseif words == 6 then
            writing = "I want halp, food. English my not firsts langwage"
        elseif words == 7 then
            writing = "TIC TAC TOE #"
        elseif words == 8 then
            writing = "SURVIVE"
        elseif words == 9 then
            writing = "I AM SUPERBEAN!"
        elseif words == 10 then
            writing = "Another failed attempt at a cure."
        elseif words == 11 then
            writing = "You found me!  1-18-89"
        elseif words == 12 then
            writing = "The end is near"
        elseif words == 13 then
            writing = "What you are about to read is an account following the multiple deaths of 205 AD."
        elseif words == 14 then
            writing = "The Journal of Jonson Brown"
        elseif words == 15 then
            writing = "The Adventures of Sherlock Holmes by Sir Aurthor Connan Doyle"
        elseif words == 16 then
            writing = " "
        elseif words == 17 then
            writing = "LOL "
        elseif words == 18 then
            writing = "Beans to you Sir. "
        elseif words == 19 then
            writing = "Died by a Zombie while witnessing paint dry. "
        end
    end
    function giving()
        drop = math.random(1, 41)
        if request == "y" then
            if droppedwriting == "Help: Food" then
                drop = 39
            elseif droppedwriting == "Help: Water" then
                if bottle == "y" then
                    filledbottleitem()
                elseif bottle == "n" then
                    drop = 40
                end
            elseif droppedwriting == "Help: Ammo" then
                drop = 30
            elseif droppedwriting == "Help: Bandaid" then
                drop = 27
            end
        end
        giveamount = math.random(0, 4)
        repeat
            if giveamount > 0 then
                if drop == 1 then
                    amount = math.random(1, 4)
                    if amount == 1 then
                        makarovitem()
                    else
                        popitem()
                    end
                elseif drop == 38 then
                    steakitem()
                elseif drop == 39 then
                    beansitem()
                elseif drop == 40 then
                    popitem()
                elseif drop == 41 then
                    amount = math.random(1, 45)
                    if amount == 1 then
                        gillieitem()
                    else
                        beansitem()
                    end
                elseif drop == 37 then
                    print("The player wants to give you fuel.")
                    print("Accept?")
                    pickup = io.read()
                    if pickup == "y" then
                        if can == "y" then
                            if cfilled == "n" then
                                print("They filled your jerry can.")
                                io.read()
                                cfilled = "y"
                            elseif cfilled == "y" then
                                print("Already filled.")
                                io.read()
                            end
                        elseif can ~= "y" then
                            print("You have no can.")
                            io.read()
                        end
                    elseif pickup ~= "y" then
                        print("You declined.")
                        io.read()
                    end
                elseif drop == 2 then
                    amount = math.random(1, 4)
                    if amount == 1 then
                        revolveritem()
                    else
                        beansitem()
                    end
                elseif drop == 3 then
                    amount = math.random(1, 10)
                    if amount == 1 then
                        M16item()
                    else
                        beansitem()
                    end
                elseif drop == 4 then
                    amount = math.random(1, 5)
                    if amount == 1 then
                        crossbowitem()
                    else
                        popitem()
                    end
                elseif drop == 5 then
                    amount = math.random(1, 4)
                    if amount == 1 then
                        hatchetitem()
                    else
                        beansitem()
                    end
                elseif drop == 6 then
                    amount = math.random(1, 20)
                    if amount == 1 then
                        leeenfielditem()
                    else
                        popitem()
                    end
                elseif drop == 7 then
                    amount = math.random(1, 70)
                    if amount == 1 then
                        FNFALitem()
                    else
                        beansitem()
                    end
                elseif drop == 8 then
                    amount = math.random(1, 200)
                    if amount == 1 then
                        AS50item()
                    else
                        popitem()
                    end
                elseif drop == 9 then
                    amount = math.random(1, 10)
                    if amount == 1 then
                        gogglesitem()
                    else
                        beansitem()
                    end
                elseif drop == 10 then
                    amount = math.random(1, 50)
                    if amount == 1 then
                        coyotepackitem()
                    else
                        popitem()
                    end
                elseif drop == 11 then
                    amount = math.random(1, 10)
                    if amount == 1 then
                        filledjerrycanitem()
                    else
                        jerrycanitem()
                    end
                elseif drop == 12 then
                    beartrapitem()
                elseif drop == 13 then
                    matchitem()
                elseif drop == 14 then
                    amount = math.random(1, 2)
                    if amount == 1 then
                        filledbottleitem()
                    else
                        bottleitem()
                    end
                elseif drop == 15 then
                    amount = math.random(1, 4)
                    if amount == 1 then
                        tentitem()
                    else
                        popitem()
                    end
                elseif drop == 16 then
                    knifeitem()
                elseif drop == 17 then
                    amount = math.random(1, 5)
                    if amount == 1 then
                        antibioticsitem()
                    else
                        beansitem()
                    end
                elseif drop == 18 then
                    morphineitem()
                elseif drop == 19 then
                    booksitem()
                elseif drop == 20 then
                    heatpackitem()
                elseif drop == 21 then
                    painkilleritem()
                elseif drop == 22 then
                    amount = math.random(1, 30)
                    if amount == 1 then
                        alicepackitem()
                    else
                        popitem()
                    end
                elseif drop == 23 then
                    amount = math.random(1, 10)
                    if amount == 1 then
                        vestpouchitem()
                    else
                        popitem()
                    end
                elseif drop == 24 then
                    penitem()
                elseif drop == 25 then
                    roadflareitem()
                elseif drop == 26 then
                    bloodbagitem()
                elseif drop == 27 then
                    bandaiditem()
                elseif drop == 28 then
                    amount = math.random(1, 70)
                    if amount == 1 then
                        grenadeitem()
                    else
                        beansitem()
                    end
                elseif drop == 29 then
                    amount = math.random(1, 50)
                    if amount == 1 then
                        smokegrenadeitem()
                    else
                        popitem()
                    end
                elseif drop == 30 then
                    ammoitem()
                elseif drop == 31 then
                    radioitem()
                elseif drop == 32 then
                    amount = math.random(1, 30)
                    if amount == 1 then
                        g36citem()
                    else
                        beansitem()
                    end
                elseif drop == 33 then
                    amount = math.random(1, 30)
                    if amount == 1 then
                        AK47item()
                    else
                        popitem()
                    end
                elseif drop == 34 then
                    amount = math.random(1, 30)
                    if amount == 1 then
                        M4A1item()
                    else
                        beansitem()
                    end
                elseif drop == 35 then
                    amount = math.random(1, 15)
                    if amount == 1 then
                        DBshotgunitem()
                    else
                        popitem()
                    end
                elseif drop == 36 then
                    watchitem()
                end
                drop = math.random(1, 40)
                giveamount = giveamount - 1
            elseif giveamount < 1 then
                print("You leave the player.")
                io.read()
            end
        until giveamount < 1
    end
     -- end of give
    cheatkey = "@cheat"
    password = "cheatcodecentral"
    function used()
        stats()
        print("What do you want to use?")
        drop = io.read()
        if drop == "bandaid" then
            usebandaid()
        elseif drop == "antibiotic" then
            useantibiotic()
        elseif drop == "goggles" then
            usegoggles()
        elseif drop == "tent" then
            usetent()
        elseif drop == "bear trap" then
            usebeartrap()
        elseif drop == "radio" then
            useradio()
        elseif drop == "dog" then
            usedog()
        elseif drop == "water" then
            usewater()
        elseif drop == "grenade" then
            usegrenade()
        elseif drop == "steak" then
            usesteak()
        elseif drop == "meat" then
            usemeat()
        elseif drop == "pain killer" then
            usepainkiller()
        elseif drop == "morphine" then
            usemorphine()
        elseif drop == "road flare" then
            useroadflare()
        elseif drop == "super bean" then
            usesuperbean()
        elseif drop == "heat pack" then
            useheatpack()
        elseif drop == "hatchet" then
            usehatchet()
        elseif drop == "match" then
            usematch()
        elseif drop == "beans" then ----------------------Change into functions then make using items on the spot-- radio: already started
            usebeans()
        elseif drop == "pop" then
            usepop()
        elseif drop == "book" then
            usebook()
        end
    end
    function coloring()
        if color == 1 then
            ccolor = "blue"
        elseif color == 2 then
            ccolor = "black"
        elseif color == 3 then
            ccolor = "grey"
        elseif color == 4 then
            ccolor = "brown"
        elseif color == 5 then
            ccolor = "camo"
        elseif color == 6 then
            ccolor = "ripped"
        elseif color == 7 then
            ccolor = "dress"
        elseif color == 23 then
            ccolor = "yellow"
        elseif color == 8 then
            ccolor = "green"
        elseif color == 9 then
            ccolor = "orange"
        elseif color == 10 then
            ccolor = "purple"
        elseif color == 11 then
            ccolor = "red"
        elseif color == 12 then
            ccolor = "pink"
        elseif color == 13 then
            ccolor = "polka-dot"
        elseif color == 14 then
            ccolor = "striped"
        elseif color == 15 then
            ccolor = "plaid"
        elseif color == 16 then
            ccolor = "magenta"
        elseif color == 17 then
            ccolor = "rainbow"
        elseif color == 18 then
            ccolor = "turquoise"
        elseif color == 19 then
            ccolor = "white"
        elseif color == 20 then
            ccolor = "T"
        elseif color == 21 then
            ccolor = "long-sleeved"
        elseif color == 24 then
            ccolor = "Science"
        elseif color == 22 then
            ccolor = "ripped"
        elseif color == 28 then
            ccolor = "turtle neck"
        elseif color == 25 then
            ccolor = "Got BeanZ?"
        elseif color == 26 then
            ccolor = "Zombie Survival"
        elseif color == 27 then
            ccolor = "Mountain Dew"
        end
    end
    function stats() -------------------------------------Stats
        if statsearch == "y" then
            repeat
                print("Choose a section to view.")
                print(
                    'Section 1:INFORMATION, Section 2:STATS, Section 3:WEAPON, Section 4:DOGS, Section 5:ITEMS, Section 6:INJURIES, Section 7:OUTFIT, or "all" for all.'
                )
                want = io.read()
                if want == "1" then
                    stats1()
                elseif want == "2" then
                    stats2()
                elseif want == "3" then
                    stats3()
                elseif want == "4" then
                    stats4()
                elseif want == "5" then
                    stats5()
                elseif want == "6" then
                    stats6()
                elseif want == "7" then
                    stats7()
                elseif want == "all" then
                    stats1()
                    stats2()
                    stats3()
                    stats4()
                    stats5()
                    stats6()
                    stats7()
                else
                    want = "0"
                end
            until want == "0"
        elseif statsearch ~= "y" then
            if statA == "y" then
                stats1()
            end
            if statB == "y" then
                stats2()
            end
            if statC == "y" then
                stats3()
            end
            if statD == "y" then
                stats4()
            end
            if statE == "y" then
                stats5()
            end
            if statF == "y" then
                stats6()
            end
            if statG == "y" then
                stats7()
            end
        end
    end
    function dropped() -----------------------------------------Drop
        stats()
        if store == "n" then
            print("What do you want to drop?")
        else
            print("What do you want to store?")
        end
        dropping = io.read()
        if dropping == "bloodbag" then
            if bloodbags >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    bloodbagstore = bloodbagstore + bloodbags
                else
                    print("Dropped.")
                    io.read()
                end
                bloodbags = 0
                space = space + 1
            elseif bloodbags < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "super bean" then
            if superbean == "y" then
                superbean = "n"
                if store == "y" then
                    print("Stored.")
                    io.read()
                    superbeanstore = "y"
                else
                    print("Dropped.")
                    io.read()
                end
                space = space + .5
            elseif superbean == "n" then
                print("...")
                io.read()
            end
        elseif dropping == "meat" then
            if meat >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    meatstore = meatstore + meat
                else
                    print("Dropped.")
                    io.read()
                end
                meat = 0
                space = space + 1
            elseif meat < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "steak" then
            if steak >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    steakstore = steakstore + steak
                else
                    print("Dropped.")
                    io.read()
                end
                steak = 0
                space = space + 1
            elseif steak < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "book" then
            if book == "y" then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    bookstore = "y"
                    storedwriting = text
                    storedcolor = ccolor
                    book = "n"
                    space = space + 2
                else
                    print("Dropped.")
                    io.read()
                    book = "n"
                    space = space + 2
                    droppedwriting = text
                    droppedbook = "y"
                    droppedcolor = cover
                end
            elseif book == "n" then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "road flare" then
            if roadflare >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    roadflarestore = roadflarestore + roadflare
                else
                    print("Dropped.")
                    io.read()
                end
                roadflare = 0
                space = space + 1
            elseif roadflare < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "smoke grenade" then
            if smoke >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    smokestore = smokestore + smoke
                else
                    print("Dropped.")
                    io.read()
                end
                smoke = 0
                space = space + 1
            elseif smoke < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "grenade" then
            if grenade >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    grenadestore = grenadestore + grenade
                else
                    print("Dropped.")
                    io.read()
                end
                grenade = 0
                space = space + 1
            elseif grenade < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "antibiotic" then
            if antibiotics >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    antibioticstore = antibioticstore + antibiotics
                else
                    print("Dropped.")
                    io.read()
                end
                antibiotics = 0
                space = space + 1
            elseif antibiotics < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "tent" then
            if tent == "y" then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    tentstore = "y"
                else
                    print("Dropped.")
                    io.read()
                end
                tent = "n"
                space = space + 7
            elseif tent ~= "y" then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "bear trap" then
            if beartrap == "y" then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    beartrapstore = "y"
                else
                    print("Dropped.")
                    io.read()
                end
                beartrap = "n"
                space = space + 2
            elseif beartrap ~= "y" then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "goggles" then
            if goggles == "y" then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    gogglestore = "y"
                else
                    print("Dropped.")
                    io.read()
                end
                goggles = "n"
                if vision ~= "y" then
                    space = space + 2
                end
                vision = "n"
            elseif goggles ~= "y" then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "bandaid" then
            if bandaids >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    bandaidstore = bandaidstore + bandaids
                else
                    print("Dropped.")
                    io.read()
                end
                bandaids = 0
                space = space + 1
            elseif bandaids < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "jerry can" then
            if can == "y" then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    canstore = "y"
                    if cfilled == "y" then
                        cfilledstore = "y"
                    else
                        cfilledstore = "n"
                    end
                else
                    print("Dropped.")
                    io.read()
                end
                can = "n"
                cfilled = "n"
                space = space + 5
            elseif can ~= "y" then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "bottle" then
            if bottle == "y" then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    bottlestore = "y"
                    if filled == "y" then
                        filledstore = "y"
                    else
                        filledstore = "n"
                    end
                else
                    print("Dropped.")
                    io.read()
                end
                bottle = "n"
                filled = "n"
                space = space + 1
            elseif bottle ~= "y" then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "gillie suit" then
            if gillie == "y" then
                if store == "y" then
                    print("stored.")
                    io.read()
                    gillie = "n"
                    gilliestore = "y"
                else
                    print("Dropped.")
                    io.read()
                    gillie = "n"
                end
            else
                print("Unowned.")
                io.read()
            end
        elseif dropping == "watch" then
            if watch == "y" then
                if store == "y" then
                    print("stored.")
                    io.read()
                    watch = "n"
                    watchstore = "y"
                    storedwcolor = watchcolor
                else
                    print("Dropped.")
                    io.read()
                    watch = "n"
                end
            else
                print("Unowned.")
                io.read()
            end
        elseif dropping == "epi-pen" then
            if morphine >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    epipenstore = epipenstore + morphine
                else
                    print("Dropped.")
                    io.read()
                end
                morphine = 0
                space = space + 1
            elseif morphine < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "knife" then
            if knife == "y" then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    knifestore = "y"
                else
                    print("Dropped.")
                    io.read()
                end
                knife = "n"
                space = space + 2
            elseif knife ~= "y" then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "gun" then
            dropgun()
        elseif dropping == "pain killer" then
            if epipen >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    painkillerstore = painkillerstore + epipen
                else
                    print("Dropped.")
                    io.read()
                end
                epipen = 0
                space = space + 1
            elseif epipen < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "morphine" then
            if painkillers >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    morphinestore = morphinestore + painkillers
                else
                    print("Dropped.")
                    io.read()
                end
                painkillers = 0
                space = space + 1
            elseif painkillers < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "heat pack" then
            if heatpacks >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    heatpackstore = heatpackstore + heatpacks
                else
                    print("Dropped.")
                    io.read()
                end
                heatpacks = 0
                space = space + 1
            elseif heatpacks < 1 then
                print("You have no heat packs.")
                io.read()
            end
        elseif dropping == "match" then
            if matches >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    matchstore = matchstore + matches
                else
                    print("Dropped.")
                    io.read()
                end
                matches = 0
                space = space + 1
            elseif matches < 1 then
                print("You have no matches.")
                io.read()
            end
        elseif dropping == "wood" then
            if wood == "y" then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    woodstore = "y"
                else
                    print("Dropped.")
                    io.read()
                end
                wood = "n"
                space = space + 2
            elseif wood == "n" then
                print("You have no wood.")
                io.read()
            end
        elseif dropping == "radio" then
            if radio == "y" then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    radiostore = "y"
                else
                    print("Dropped.")
                    io.read()
                end
                radio = "n"
                space = space + 1
            elseif radio == "n" then
                print("You don't have a radio.")
                io.read()
            end
        elseif dropping == "beans" then
            if beans >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    beanstore = beanstore + beans
                else
                    print("Dropped.")
                    io.read()
                end
                beans = 0
                space = space + 1
            elseif beans < 1 then
                print("Unowned.")
                io.read()
            end
        elseif dropping == "pop" then
            if pop >= 1 then
                if store == "y" then
                    print("Stored.")
                    io.read()
                    popstore = popstore + pop
                else
                    print("Dropped.")
                    io.read()
                end
                pop = 0
                space = space + 1
            elseif pop < 1 then
                print("Unowned.")
                io.read()
            end
        end
    end
    function niceplayer()
        if health < fullhealth - 3000 then
            if bloodbags >= 1 then --bloodbags
                print("The player has given you a blood transfusion using your bag.")
                io.read()
                bloodbags = bloodbags - 1
                if bloodbags < 1 then
                    space = space + 1
                end
                health = fullhealth
            elseif bloodbags < 1 then
                amount = math.random(1, 5)
                if amount == 1 then
                    print("The player has given you a blood transfusion.")
                    io.read()
                    health = fullhealth
                end
            end
        end
        if broken == "y" then
            if painkillers >= 1 then
                print("The player healed your broken bone with your morphine.")
                broken = "n"
                painkillers = painkillers - 1
                if painkillers < 1 then
                    space = space + 1
                end
                io.read()
            else
                amount = math.random(1, 6)
                if amount == 1 then
                    print("The player healed your broken bone.")
                    broken = "n"
                    io.read()
                end
            end
        end
        if bleeding == "y" then
            if bandaids >= 1 then
                print("The player used one of your bandaids on you.")
                io.read()
                bleeding = "n"
                bandaids = bandaids - 1
                if bandaids < 1 then
                    space = space + 1
                end
            else
                amount = math.random(1, 3)
                if amount == 1 then
                    print("The player used a bandaid on you.")
                    bleeding = "n"
                    io.read()
                end
            end
        end
        if infection == "y" then
            if antibiotics >= 1 then
                print("The player used one of your antibiotics on you.")
                io.read()
                infection = "n"
                antibiotics = antibiotics - 1
                if antibiotics < 1 then
                    space = space + 1
                end
            else
                amount = math.random(1, 5)
                if amount == 1 then
                    print("The player used an antibiotic on you.")
                    infection = "n"
                    io.read()
                end
            end
        end
        if cold == "y" then
            if heatpacks >= 1 then
                print("The player used one of your heatpacks on you.")
                io.read()
                heatpacks = heatpacks - 1
                if heatpacks < 1 then
                    space = space + 1
                end
                temperature = temperature + math.random(5, 7)
                if temperature >= 33 then
                    if cold == "y" then
                        print("You lost your cold.")
                        io.read()
                        cold = "n"
                    end
                end
            else
                amount = math.random(1, 5)
                if amount == 1 then
                    print("The player used a heat pack on you.")
                    temperature = temperature + math.random(5, 7)
                    if temperature >= 33 then
                        if cold == "y" then
                            print("You lost your cold.")
                            io.read()
                            cold = "n"
                        end
                    end
                    io.read()
                end
            end
        end
        if gender == 1 then
            print("The player lets you look through his stuff.")
        else
            print("The player lets you look through her stuff.")
        end
        io.read()
        giving()
    end
     -- end of health
    function playerevent()
        gender = math.random(1, 2)
        if gender == 1 then
            print("You found a survivor, approach him?")
        else
            print("You found a survivor, approach her?")
        end
        zhealth = math.random(5000, 12000)
        zhealth = zhealth + pain
        approach = io.read()
        if approach == "y" then
            sick = math.random(1, 20)
            if sick == 1 then
                print("You got an infection from the player.")
                io.read()
                infection = "y"
            end
            if gang == "y" then
                player = 2
            else
                if bandit == "y" then
                    amount = math.random(1, 3)
                    if amount == 1 then
                        player = 1
                    else
                        player = 2
                    end
                elseif hero == "y" then
                    amount = math.random(1, 3)
                    if amount == 1 then
                        player = 2
                    else
                        player = 1
                    end
                else
                    player = math.random(1, 2)
                end
            end
            print("Attack?")
            approach = io.read()
            if approach == "y" then
                attackchoice = "y"
                player = 2
                print("You prepare to attack.")
                io.read()
                moral = moral - math.random(5, 30)
                hero = "n"
                if moral < 0 then
                    moral = 0
                    bandit = "y"
                end
            elseif approach ~= "y" then
                print("You prepare to approach.")
                io.read()
            end
            if player == 1 then
                print("The player is friendly.")
                io.read()
                if droppedbook == "y" then
                    find = math.random(1, 10)
                    if find == 1 then
                        print("I found your " .. droppedcolor .. ' book, the one that said "' .. droppedwriting .. '".')
                        io.read()
                        print("Here it is.")
                        io.read()
                        findbook = "y"
                        booksitem()
                        droppedbook = "n"
                        findbook = "n"
                        if droppedwriting == "Help: Food" then
                            giving()
                            request = "y"
                        elseif droppedwriting == "Help: Water" then
                            giving()
                            request = "y"
                        elseif droppedwriting == "Help: Ammo" then
                            giving()
                            request = "y"
                        elseif droppedwriting == "Help: Bandaid" then
                            giving()
                            request = "y"
                        end
                    elseif find ~= 1 then
                        niceplayer()
                    end
                else
                    niceplayer()
                end
            elseif player == 2 then -----------------------------Evil player
                amount = math.random(1, 7)
                if amount == 1 then
                    if mygun ~= "no weapon" then
                        holdup = "y"
                    elseif myguntwo ~= "no weapon" then
                        holdup = "y"
                    else
                        holdup = "n"
                    end
                    if holdup == "y" then
                        print("The player wants you to drop your weapons.")
                        print("Drop them(1), or fight(2)?")
                        want = io.read()
                        if want == "1" then
                            slot = "1"
                            if slot == "2" then
                                mygunthree = myguntwo
                                gunspacethree = gunspacetwo
                            else
                                mygunthree = mygun
                                gunspacethree = gunspace
                                slot = "1"
                            end
                            if mygunthree ~= "no weapon" then
                                mygunthree = "no weapon"
                                space = space + gunspacethree
                                myammothree = 0
                                gunspacethree = 0
                                damagethree = 0
                                accuracythree = 0
                                fullaccuracythree = 0
                                takegun()
                            end
                            slot = "2"
                            if slot == "2" then
                                mygunthree = myguntwo
                                gunspacethree = gunspacetwo
                            else
                                mygunthree = mygun
                                gunspacethree = gunspace
                                slot = "1"
                            end
                            if mygunthree ~= "no weapon" then
                                mygunthree = "no weapon"
                                space = space + gunspacethree
                                myammothree = 0
                                gunspacethree = 0
                                damagethree = 0
                                accuracythree = 0
                                fullaccuracythree = 0
                                takegun()
                            end
                            print("Dropped.")
                            io.read()
                            amount = math.random(1, 5)
                            if amount == 1 then
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    io.read()
                                    bleeding = "y"
                                end
                                brake = math.random(1, 7)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(2000, 5000)
                                print("The player killed you.")
                                health = 0
                                health = health - math.random(1000, 8000)
                            else
                                print("The player takes your weapons and leaves.")
                                io.read()
                            end
                         --myammo
                        else
                            playerfight()
                        end
                     ------------------------------------------------------------------------------------------------------------------------WIP
                    elseif holdup == "n" then
                        bleed = math.random(1, 2)
                        if bleed == 1 then
                            print("You are bleeding.")
                            bleeding = "y"
                        end
                        brake = math.random(1, 7)
                        if brake == 1 then
                            print("You broke your leg.")
                            io.read()
                            broken = "y"
                            bleeding = "y"
                        end
                        pain = pain + math.random(2000, 5000)
                        print("The player killed you because you had no weapons for them.")
                        health = 0
                        health = health - math.random(1000, 8000)
                    end
                else
                    playerfight()
                end
            end
         --end of fight
        elseif approach ~= "y" then
            if gillie == "n" then
                amount = math.random(70, 150)
            else
                amount = math.random(200, 400)
            end
            if tired < amount then
                print("You have escaped.")
                io.read()
                tired = tired + math.random(20, 70)
            else
                if smoke >= 1 then
                    print("You used a smoke grenade.")
                    io.read()
                    smoke = smoke - 1
                    if smoke < 1 then
                        space = space + 1
                    end
                elseif smoke < 1 then
                    bleed = math.random(1, 2)
                    if bleed == 1 then
                        print("You are bleeding.")
                        bleeding = "y"
                    end
                    brake = math.random(1, 7)
                    if brake == 1 then
                        print("You broke your leg.")
                        io.read()
                        broken = "y"
                        bleeding = "y"
                    end
                    pain = pain + math.random(2000, 5000)
                    print("The player caught you.")
                    if gang ~= "y" then
                        if bandit == "y" then
                            amount = math.random(1, 3)
                            if amount == 1 then
                                escape = 1
                            else
                                escape = 2
                            end
                        elseif hero == "y" then
                            amount = math.random(1, 3)
                            if amount == 1 then
                                escape = 2
                            else
                                escape = 1
                            end
                        else
                            escape = math.random(1, 2)
                        end
                    else
                        escape = 2
                    end
                    if escape == 2 then
                        print("They killed you.")
                        health = 0
                        health = health - math.random(1000, 8000)
                    elseif escape == 1 then
                        print("The player let you go.")
                        io.read()
                    end
                end
            end
         --end of fle
        end
    end -- end of player
    --uses
    function usebandaid()
        if bleeding == "y" then
            if bandaids >= 1 then
                print("You used a bandaid.")
                io.read()
                bleeding = "n"
                bandaids = bandaids - 1
                if bandaids < 1 then
                    space = space + 1
                end
            elseif bandaids < 1 then
                print("You have no bandaids.")
                io.read()
            end
        elseif bleeding == "n" then
            print("You are not bleeding.")
            io.read()
        end
    end
    function useantibiotic()
        if infection == "y" then
            if antibiotics >= 1 then
                print("You used an antibiotic.")
                io.read()
                infection = "n"
                antibiotics = antibiotics - 1
                if antibiotics < 1 then
                    space = space + 1
                end
            elseif antibiotics < 1 then
                print("You have no antibiotics.")
                io.read()
            end
        elseif infection == "n" then
            print("You are not infected.")
            io.read()
        end
    end

    function usegoggles() --(X)--(!)--(!)--(!)--(!)--(!)--(X)
        if goggles == "y" then
            if vision == "y" then
                repeat
                    if space >= 2 then
                        print("You took off your goggles.")
                        io.read()
                        vision = "n"
                        space = space - 2
                        if light == "light" then
                            accuracy = fullaccuracy
                            accuracytwo = fullaccuracytwo
                        elseif light == "dark" then
                            accuracy = fullaccuracy
                            accuracy = accuracy - 4
                            accuracytwo = fullaccuracytwo
                            accuracytwo = accuracytwo - 4
                        end
                        break
                    elseif space < 2 then
                        print("Not enough space to put away.")
                        io.read()
                        dropped()
                        used()
                        print("Take off?")
                        pickup = io.read()
                    end
                until pickup ~= "y"
            elseif vision == "n" then
                print("You put on your goggles.")
                io.read()
                vision = "y"
                space = space + 2
                if light == "dark" then
                    accuracy = fullaccuracy
                    accuracytwo = fullaccuracytwo
                elseif light == "light" then
                    accuracy = fullaccuracy
                    accuracy = accuracy - 4
                    accuracytwo = fullaccuracytwo
                    accuracytwo = accuracytwo - 4
                end
            end
        elseif goggles == "n" then
            print("You have no goggles.")
            io.read()
        end
    end
    function usetent() --(X)--(X)--(X)--(!)--(X)--(!)--(!)
        if tentplaced == "y" then
            print("You taveled to your tent.")
            io.read()
            tired = tired + tenttravel
            tenttravel = 0
            repeat
                print("Do you want to store(1), or take out(2)?")
                want = io.read()
                if want == "1" then
                    store = "y"
                    dropped()
                    store = "n"
                elseif want == "2" then
                    print("")
                    print("TENT INVENTORY")
                    print("_______________")
                    print("ITEMS")
                    print("<food>")
                    if bottlestore == "y" then
                        if filledstore == "y" then
                            print("Water bottle")
                        else
                            print("empty bottle")
                        end
                    end
                    if beanstore >= 1 then
                        print(beanstore .. " can(s) of beans")
                    end
                    if popstore >= 1 then
                        print(popstore .. " pop")
                    end
                    if meatstore >= 1 then
                        print(meatstore .. " meat")
                    end
                    if steakstore >= 1 then
                        print(steakstore .. " steak(s)")
                    end
                    if superbeanstore == "y" then
                        print("Super Bean?")
                    end
                    print(". . . . . . . . . . . .")
                    print("<medical>")
                    if bloodbagstore >= 1 then
                        print(bloodbagstore .. " blood bag(s)")
                    end
                    if bandaidstore >= 1 then
                        print(bandaidstore .. " bandaid(s)")
                    end
                    if epipenstore >= 1 then
                        print(epipenstore .. " epi-pen(s)")
                    end
                    if painkillerstore >= 1 then
                        print(painkillerstore .. " pain killer(s)")
                    end
                    if antibioticstore >= 1 then
                        print(antibioticstore .. " antibiotic(s)")
                    end
                    if morphinestore >= 1 then
                        print(morphinestore .. " morphine")
                    end
                    if heatpackstore >= 1 then
                        print(heatpackstore .. " heatpack(s)")
                    end
                    print(". . . . . . . . . . . .")
                    print("<tools>")
                    if knifestore == "y" then
                        print("Knife")
                    end
                    if matchstore >= 1 then
                        print(matchstore .. " match(es)")
                    end
                    if woodstore == "y" then
                        print("Wood")
                    end
                    if beartrapstore == "y" then
                        print("Bear Trap")
                    end
                    if gogglesstore == "y" then
                        print("NV Goggles")
                    end
                    if roadflarestore >= 1 then
                        print(roadflarestore .. " road flare(s)")
                    end
                    if smokestore >= 1 then
                        print(smokestore .. " smoke grenade(s)")
                    end
                    if tentstore == "y" then
                        print("Tent")
                    end
                    if canstore == "y" then
                        if cfilledstore == "y" then
                            print("Filled Jerry can")
                        elseif cfilledstore ~= "y" then
                            print("Jerry can")
                        end
                    end
                    print(". . . . . . . . . . . .")
                    print("<other>")
                    if bookstore == "y" then
                        print(storedcolor .. " book")
                    end
                    if radiostore == "y" then
                        print("radio")
                    end
                    print("------------------------")
                    print("WEAPONS")
                    print(". . . . . . . . . . . .")
                    print("<slot 1>")
                    if gunstoreone ~= "no weapon" then
                        print(gunstoreone)
                        if gunstoreone ~= "Hatchet" then
                            print(ammostoreone .. " ammo")
                        end
                    end
                    print(". . . . . . . . . . . .")
                    print("<slot 2>")
                    if gunstoretwo ~= "no weapon" then
                        print(gunstoretwo)
                        if gunstoretwo ~= "Hatchet" then
                            print(ammostoretwo .. " ammo")
                        end
                    end
                    print(". . . . . . . . . . . .")
                    print("<slot 3>")
                    if gunstorethree ~= "no weapon" then
                        print(gunstorethree)
                        if gunstorethree ~= "Hatchet" then
                            print(ammostorethree .. " ammo")
                        end
                    end
                    print(". . . . . . . . . . . .")
                    print("<other>")
                    if grenadestore >= 1 then
                        print(grenadestore .. " grenade(s)")
                    end
                    print("------------------------")
                    print("OUTFIT")
                    if gilliestore == "y" then
                        print("Gillie Suit")
                    end
                    if watchstore == "y" then
                        print(storedwcolor .. " watch")
                    end
                    print("")
                    print("What do you want to take out?")
                    want = io.read()
                    store = "y"
                    if want == "pop" then
                        if popstore >= 1 then
                            popitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "bottle" then
                        if bottlestore == "y" then
                            if filledstore == "y" then
                                filledbottleitem()
                            else
                                bottleitem()
                            end
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "gillie suit" then
                        if gilliestore == "y" then
                            gillieitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "watch" then
                        if watchstore == "y" then
                            watchitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "beans" then
                        if beanstore >= 1 then
                            beansitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "meat" then
                        if meatstore >= 1 then
                            meatitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "steak" then
                        if steakstore >= 1 then
                            steakitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "super bean" then
                        if superbeanstore == "y" then
                            print("You took the super bean.")
                            io.read()
                            superbean = "y"
                            superbeanstore = "n"
                            if space >= .5 then
                                space = space - .5
                            else
                                print("...You don't have enough space.")
                                print("Here, just take it.")
                                io.read()
                            end
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "blood bag" then
                        if bloodbagstore >= 1 then
                            bloodbagitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "bandaid" then
                        if bandaidstore >= 1 then
                            bandaiditem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "epi-pen" then
                        if epipenstore >= 1 then
                            penitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "pain killer" then
                        if painkillerstore >= 1 then
                            painkilleritem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "antibiotic" then
                        if antibioticstore >= 1 then
                            antibioticsitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "morphine" then
                        if morphinestore >= 1 then
                            morphineitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "heatpack" then
                        if heatpackstore >= 1 then
                            heatpackitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "knife" then
                        if knifestore == "y" then
                            knifeitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "match" then
                        if matchstore == "y" then
                            matchitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "wood" then
                        if woodstore == "y" then
                            wooditem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "beartrap" then
                        if beartrapstore == "y" then
                            beartrapitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "goggles" then
                        if gogglestore == "y" then
                            gogglesitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "road flare" then
                        if roadflarestore >= 0 then
                            roadflareitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "smoke grenade" then
                        if smokestore == "y" then
                            smokegrenadeitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "tent" then
                        if tentstore == "y" then
                            tentitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "jerry can" then
                        if canstore == "y" then
                            if cfilledstore == "y" then
                                filledjerrycanitem()
                            else
                                jerrycanitem()
                            end
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "book" then
                        if bookstore == "y" then
                            booksitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "radio" then
                        if radiostore == "y" then
                            radioitem()
                        else
                            print("Unowned.")
                            io.read()
                        end
                    elseif want == "gun" then
                        print("Which tent slot?")
                        want = io.read()
                        if want == "1" then
                            if gunstoreone ~= "no weapon" then
                                repeat
                                    print("Pickup?")
                                    pickup = io.read()
                                    print("Put in which slot?")
                                    slot = io.read()
                                    if pickup == "y" then
                                        if slot == "2" then
                                            mygunthree = myguntwo
                                            myammothree = myammotwo
                                            damagethree = damagetwo
                                            gunspacethree = gunspacetwo
                                            accuracythree = accuracytwo
                                            fullaccuracythree = fullaccuracytwo
                                        else
                                            gunspacethree = gunspace
                                            mygunthree = mygun
                                            myammothree = myammo
                                            damagethree = damage
                                            accuracythree = accuracy
                                            fullaccuracythree = fullaccuracy
                                            slot = "1"
                                        end
                                        if mygunthree ~= gunstoreone then
                                            if space >= gunspacestoreone - gunspacethree then
                                                print("You have picked it up")
                                                io.read()
                                                myammothree = ammostoreone
                                                damagethree = damagestoreone + (1000 * dogs)
                                                mygunthree = gunstoreone
                                                accuracythree = accuracystoreone
                                                fullaccuracythree = fullaccuracystoreone
                                                space = space - (gunspacestoreone - gunspacethree)
                                                gunspacethree = gunspacestoreone
                                                gunstoreone = "no weapon"
                                                gunspacestoreone = 0
                                                damagestoreone = 0
                                                ammostoreone = 0
                                                accuracystoreone = 0
                                                fullaccuracystoreone = 0

                                                takegun()
                                                break
                                            elseif space < gunspacestoreone - gunspacethree then
                                                print("Not enough space.")
                                                io.read()
                                                dropped()
                                                used()
                                            end
                                        elseif mygunthree == gunstoreone then
                                            print("You took the ammo.")
                                            if slot == "2" then
                                                myammotwo = myammotwo + myammothree
                                            else
                                                myammo = myammo + myammothree
                                            end
                                            io.read()
                                            myammothree = myammothree + ammostoreone
                                            gunstoreone = "no weapon"
                                            gunspacestoreone = 0
                                            damagestoreone = 0
                                            ammostoreone = 0
                                            accuracystoreone = 0
                                            fullaccuracystoreone = 0
                                            break
                                        end
                                    elseif pickup ~= "y" then
                                        print("You left it there.")
                                        io.read()
                                    end
                                until pickup ~= "y"
                            else
                                print("There is no weapon in slot one.")
                                io.read()
                            end
                        elseif want == "2" then
                            if gunstoretwo ~= "no weapon" then
                                repeat
                                    print("Pickup?")
                                    pickup = io.read()
                                    print("Put in which slot?")
                                    slot = io.read()
                                    if pickup == "y" then
                                        if slot == "2" then
                                            mygunthree = myguntwo
                                            myammothree = myammotwo
                                            damagethree = damagetwo
                                            gunspacethree = gunspacetwo
                                            accuracythree = accuracytwo
                                            fullaccuracythree = fullaccuracytwo
                                        else
                                            gunspacethree = gunspace
                                            mygunthree = mygun
                                            myammothree = myammo
                                            damagethree = damage
                                            accuracythree = accuracy
                                            fullaccuracythree = fullaccuracy
                                            slot = "1"
                                        end
                                        if mygunthree ~= gunstoretwo then
                                            if space >= gunspacestoretwo - gunspacethree then
                                                print("You have picked it up")
                                                io.read()
                                                myammothree = ammostoretwo
                                                damagethree = damagestoretwo + (1000 * dogs)
                                                mygunthree = gunstoretwo
                                                accuracythree = accuracystoretwo
                                                fullaccuracythree = fullaccuracystoretwo
                                                space = space - (gunspacestoretwo - gunspacethree)
                                                gunspacethree = gunspacestoretwo
                                                gunstoretwo = "no weapon"
                                                gunspacestoretwo = 0
                                                damagestoretwo = 0
                                                ammostoretwo = 0
                                                accuracystoretwo = 0
                                                fullaccuracystoretwo = 0

                                                takegun()
                                                break
                                            elseif space < gunspacestoretwo - gunspacethree then
                                                print("Not enough space.")
                                                io.read()
                                                dropped()
                                                used()
                                            end
                                        elseif mygunthree == gunstoretwo then
                                            print("You took the ammo.")
                                            if slot == "2" then
                                                myammotwo = myammotwo + myammothree
                                            else
                                                myammo = myammo + myammothree
                                            end
                                            io.read()
                                            myammothree = myammothree + ammostoretwo
                                             -------------------------------------------------------------
                                            gunstoretwo = "no weapon"
                                            gunspacestoretwo = 0
                                            damagestoretwo = 0
                                            ammostoretwo = 0
                                            accuracystoretwo = 0
                                            fullaccuracystoretwo = 0
                                            break
                                        end
                                    elseif pickup ~= "y" then
                                        print("You left it there.")
                                        io.read()
                                    end
                                until pickup ~= "y"
                            else
                                print("There is no weapon in slot two.")
                                io.read()
                            end
                        elseif want == "3" then
                            if gunstorethree ~= "no weapon" then
                                repeat
                                    want = "4"
                                    print("Pickup?")
                                    pickup = io.read()
                                    print("Put in which slot?")
                                    slot = io.read()
                                    if pickup == "y" then
                                        if slot == "2" then
                                            mygunthree = myguntwo
                                            myammothree = myammotwo
                                            damagethree = damagetwo
                                            gunspacethree = gunspacetwo
                                            accuracythree = accuracytwo
                                            fullaccuracythree = fullaccuracytwo
                                        else
                                            gunspacethree = gunspace
                                            mygunthree = mygun
                                            myammothree = myammo
                                            damagethree = damage
                                            accuracythree = accuracy
                                            fullaccuracythree = fullaccuracy
                                            slot = "1"
                                        end
                                        if mygunthree ~= gunstorethree then
                                            if space >= gunspacestorethree - gunspacethree then
                                                print("You have picked it up")
                                                io.read()
                                                myammothree = ammostorethree
                                                damagethree = damagestorethree + (1000 * dogs)
                                                mygunthree = gunstorethree
                                                accuracythree = accuracystorethree
                                                fullaccuracythree = fullaccuracystorethree
                                                space = space - (gunspacestorethree - gunspacethree)
                                                gunspacethree = gunspacestorethree
                                                gunstorethree = "no weapon"
                                                gunspacestorethree = 0
                                                damagestorethree = 0
                                                ammostorethree = 0
                                                accuracystorethree = 0
                                                fullaccuracystorethree = 0

                                                takegun()
                                                break
                                            elseif space < gunspacestorethree - gunspacethree then
                                                print("Not enough space.")
                                                io.read()
                                                dropped()
                                                used()
                                            end
                                        elseif mygunthree == gunstorethree then
                                            print("You took the ammo.")
                                            if slot == "2" then
                                                myammotwo = myammotwo + myammothree
                                            else
                                                myammo = myammo + myammothree
                                            end
                                            io.read()
                                            myammothree = myammothree + ammostorethree
                                            gunstorethree = "no weapon"
                                            gunspacestorethree = 0
                                            damagestorethree = 0
                                            ammostorethree = 0
                                            accuracystorethree = 0
                                            fullaccuracystorethree = 0
                                            break
                                        end
                                    elseif pickup ~= "y" then
                                        print("You left it there.")
                                        io.read()
                                    end
                                until pickup ~= "y"
                            else
                                print("There is no weapon in slot three.")
                                io.read()
                            end
                        else
                            print("Invalid.")
                            io.read()
                        end
                    else
                        print("Invalid.")
                        io.read()
                    end
                else
                    want = "3"
                end
                store = "n"
            until want == "3"
            store = "n"
        elseif tentplaced == "n" then
            if tent == "y" then
                tentplaced = "y"
                tent = "n"
                space = space + 4
                print("You placed your tent.")
                io.read()
            elseif tent == "n" then
                print("You have no tent.")
                io.read()
            end
        end
    end
    function usebeartrap()
        if beartrap == "y" then
            if set == "n" then
                print("Trap set.")
                io.read()
                set = "y"
                beartrap = "n"
                space = space + 2
            elseif set == "y" then
                print("Already one set.")
                io.read()
            end
        elseif beartrap == "n" then
            print("You have no a trap.")
            io.read()
        end
    end
    function useradio()
        if radio == "y" then
            rname = math.random(1, 5)
            if rname == 1 then
                radioname = "Nikolai"
            elseif rname == 2 then
                radioname = "Rick"
            elseif rname == 3 then
                radioname = "Frankie"
            elseif rname == 4 then
                radioname = "Columbus"
            elseif rname == 5 then
                radioname = "R"
            end
            print("Hello, this is " .. radioname .. ", over.")
            repeat
                say = io.read()
                if say == "Hello, I'm " .. name .. "." then
                    print("Hello, " .. name .. ", over.")
                elseif say == "Help!" then
                    print("Sorry, can't, over.")
                elseif say == "I'm going to die!" then
                    print("I can't do anything for you, sorry, over.")
                elseif say == "You are an idiot!" then
                    print("Look who's talking, over.")
                elseif say == "Hello?" then
                    print("Didn't you hear me the first time? I'm " .. radioname .. ", over.")
                elseif say == "Hello." then
                    print("How are you doing? Over.")
                elseif say == "Hello, " .. radioname .. "." then
                    print("Hello, " .. name .. ", over.")
                elseif say == "How are you?" then
                    print("I'm fine, over.")
                elseif say == "Super Bean?" then
                    print("It is just a legend, over.")
                elseif say == "You suck!" then
                    print("You will be the first to die, over.")
                elseif say == "I'm going to kill you!" then
                    print("Prove it, over.")
                elseif say == "Good bye." then
                    print("Bye, over.")
                    io.read()
                    break
                elseif say == "I'm fine." then
                    print("Good to here, over.")
                elseif say == "Not so well." then
                    print("Sorry to hear, over.")
                elseif say == "Awesomely!" then
                    print("Great, over.")
                elseif say == "What started all this?" then
                    print("Some dude named Reece Mathews, he got a new computer program and went to work, over.")
                elseif say == "" then
                    print("See you later, over.")
                    io.read()
                else
                    amount = math.random(1, 10)
                    if amount == 1 then
                        print("What? Over.")
                    elseif amount == 2 then
                        print("I don't understand, over.")
                    elseif amount == 3 then
                        print(say .. " to you too, over.")
                    elseif amount == 4 then
                        print("Oh really? Over.")
                    elseif amount == 5 then
                        print("...")
                    elseif amount == 6 then
                        print("Haha")
                    elseif amount == 7 then
                        print("Be more specific, over.")
                    elseif amount == 8 then
                        print("I have no clue what the heck you just said, over.")
                    elseif amount == 9 then
                        print("Speak up, over.")
                    elseif amount == 10 then
                        print("Could you repeat that? Over.")
                    end
                end
            until say == ""
        elseif radio ~= "y" then
            print("You don't own a radio.")
            io.read()
        end
    end
    function usedog()
        if dogs >= 1 then
            print("Feed, water, or skin?")
            want = io.read()
            if want == "w" then
                if dogwater < 500 then
                    if filled == "y" then
                        filled = "n"
                        dogwater = dogwater + math.random(300, 500)
                        print("Your dog(s) drank some water.")
                        io.read()
                    elseif filled == "n" then
                        print("You have no water.")
                        io.read()
                    end
                 --end of eat
                elseif dogwater > 500 then
                    print("They are not thirsty.")
                end
            elseif want == "f" then
                if dogfood < 500 then
                    if steak >= dogs then
                        steak = steak - dogs
                        dogfood = dogfood + math.random(300, 500)
                        doghealth = doghealth + 800
                        print("Your dog(s) ate some food")
                        io.read()
                        dogfeed = dogfeed + 2
                        if steak < 1 then
                            space = space + 1
                        end
                    elseif beans >= dogs then
                        beans = beans - dogs
                        dogfood = 0
                        dogfood = dogfood + math.random(100, 200)
                        health = health + 200
                        print("Your dog(s) ate some food")
                        io.read()
                        dogfeed = dogfeed + 1
                        if beans < 1 then
                            space = space + 1
                        end
                    else
                        print("You have no food.")
                        io.read()
                    end
                 --end of eat
                elseif dogfood > 500 then
                    print("They are not hungry.")
                    io.read()
                end
            elseif want == "s" then
                skindog()
            end
        elseif dogs < 1 then
            print("You have no dogs.")
            io.read()
        end
    end
    function usewater()
        if water < 700 then
            if filled == "y" then
                filled = "n"
                water = water + math.random(300, 500)
                print("You drank some water.")
                io.read()
            elseif filled == "n" then
                print("You have no water.")
                io.read()
            end
        elseif water >= 700 then
            print("You are not thirsty.")
            io.read()
        end
    end
    function usegrenade()
        if grenade >= 1 then
            print("You threw a grenade at someone.")
            io.read()
            grenade = grenade - 1
            if grenade < 1 then
                space = space + 1
            end
            dropamount = math.random(1, 5)
            clothedrop = "y"
            repeat
                enemydrop()
                dropamount = dropamount - 1
                clothedrop = "n"
            until dropamount == 0
            enemydrop()
        elseif grenade < 1 then
            print("You have no grenades.")
            io.read()
        end
    end
    function usesteak()
        if food < 500 then
            if steak >= 1 then
                steak = steak - 1
                food = food + math.random(300, 500)
                health = health + 800
                print("You ate some food")
                io.read()
                if steak < 1 then
                    space = space + 1
                end
            elseif steak < 1 then
                print("You have no steak.")
                io.read()
            end
        elseif food >= 500 then
            print("You are not hungry.")
            io.read()
        end
    end
    function usemeat()
        if food < 500 then
            if meat >= 1 then
                meat = meat - 1
                food = food + math.random(50, 150)
                health = health + 100
                print("You ate some food")
                io.read()
                amount = math.random(1, 2)
                if amount == 1 then
                    print("You got an infection from the meat.")
                    infection = "y"
                end
                if meat < 1 then
                    space = space + 1
                end
            elseif meat < 1 then
                print("You have no meat.")
                io.read()
            end
        elseif food >= 500 then
            print("You are not hungry.")
            io.read()
        end
    end
    function usepainkiller()
        if epipen >= 1 then
            if pain >= 700 then
                print("You used a pain killer.")
                io.read()
                epipen = epipen - 1
                if epipen < 1 then
                    space = space + 1
                end
                pain = pain - math.random(3000, 7000)
                if pain < 0 then
                    pain = 0
                end
            elseif pain < 700 then
                print("You are not badly hurt.")
                io.read()
            end
        elseif epipen < 1 then
            print("You have no pain killers.")
            io.read()
        end
    end
    function usemorphine()
        if painkillers >= 1 then
            print("You used a morphine.")
            io.read()
            broken = "n"
            painkillers = painkillers - 1
            if painkillers < 1 then
                space = space + 1
            end
        elseif painkillers < 1 then
            print("You have no morpine.")
            io.read()
        end
    end
    function useroadflare()
        if roadflare >= 1 then
            roadflare = roadflare - 1
            if roadflare < 1 then
                space = space + 1
            end
            flare = "y"
            print("Flare used.")
            io.read()
        elseif roadflare < 1 then
            print("You have no flare.")
            io.read()
        end
    end
    function usesuperbean()
        if superbean == "y" then
            print("You ate a scrumptious Super Bean... Yum.")
            io.read()
            superbean = "n"
            shirt = "Super"
            pants = "Super"
            symbol = ":P"
            invincible = "y"
            space = space + .5
        elseif superbean == "n" then
            print("You can has no haxs for you.")
            io.read()
            name = "I R Stupid."
        end
    end
    function useheatpack()
        if heatpacks >= 1 then
            print("You used a heat pack.")
            io.read()
            heatpacks = heatpacks - 1
            if heatpacks < 1 then
                space = space + 1
            end
            temperature = temperature + math.random(5, 7)
            if temperature >= 33 then
                if cold == "y" then
                    print("You lost your cold.")
                    io.read()
                    cold = "n"
                end
            end
        elseif heatpacks < 1 then
            print("You have no heat packs.")
            io.read()
        end
    end
    function usehatchet() --(X)--(!)--(X)--(!)--(!)--(!)--(X)
        if mygun == "Hatchet" then
            if spawn == 3 then
                repeat
                    if space >= 2 then
                        if wood ~= "y" then
                            print("You cut down a tree.")
                            io.read()
                            wood = "y"
                            space = space - 2
                            break
                        elseif wood == "y" then
                            print("Already owned.")
                            io.read()
                            break
                        end
                    elseif space < 2 then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                        print("Chop down?")
                        pickup = io.read()
                    end
                until pickup ~= "y"
            elseif spawn ~= 3 then
                print("You are not in a forest.")
                io.read()
            end
        elseif myguntwo == "Hatchet" then
            if spawn == 3 then
                repeat
                    if space >= 2 then
                        if wood ~= "y" then
                            print("You cut down a tree.")
                            io.read()
                            wood = "y"
                            space = space - 2
                            break
                        elseif wood == "y" then
                            print("Already owned.")
                            io.read()
                            break
                        end
                    elseif space < 2 then
                        print("Not enough space.")
                        io.read()
                        dropped()
                        used()
                        print("Chop down?")
                        pickup = io.read()
                    end
                until pickup ~= "y"
            elseif spawn ~= 3 then
                print("You are not in a forest.")
                io.read()
            end
        elseif myguntwo ~= "Hatchet" then
            print("You have no hatchet.")
            io.read()
        end
    end
    function usematch()
        if matches >= 1 then
            if wood == "y" then
                repeat
                    print("Light a fire?")
                    approach = io.read()
                    if approach == "y" then
                        if meat >= 1 then
                            print("You cooked some meat and warm yourself.")
                            io.read()
                            temperature = temperature + math.random(1, 3)
                            if temperature > 50 then
                                temperature = 50
                            end
                            if temperature >= 33 then
                                if cold == "y" then
                                    print("You lost your cold.")
                                    io.read()
                                    cold = "n"
                                end
                            end
                            steak = steak + meat
                            meat = 0
                            matches = matches - 1
                            if matches < 1 then
                                space = space + 1
                            end
                            break
                        elseif meat < 1 then
                            print("You have no meat but warm yourself.")
                            io.read()
                            temperature = temperature + math.random(1, 3)
                            if temperature > 50 then
                                temperature = 50
                            end
                            if temperature >= 33 then
                                if cold == "y" then
                                    print("You lost your cold.")
                                    io.read()
                                    cold = "n"
                                end
                            end
                            break
                        end
                    elseif approach ~= "y" then
                        print("You left.")
                        io.read()
                        break
                    end
                until pickup ~= "y"
            elseif wood == "n" then
                print("You have no wood.")
                io.read()
            end
        elseif matches < 1 then
            print("You have no matches.")
            io.read()
        end
    end
    function usebeans()
        if food < 500 then
            if beans >= 1 then
                beans = beans - 1
                food = food + math.random(100, 200)
                health = health + 200
                print("You ate some food")
                io.read()
                if beans < 1 then
                    space = space + 1
                end
            elseif beans < 1 then
                print("You have no beans.")
                io.read()
            end
        elseif food >= 500 then
            print("You are not hungry.")
            io.read()
        end
    end
    function usepop()
        if water < 700 then
            if pop >= 1 then
                pop = pop - 1
                if pop < 1 then
                    space = space + 1
                end
                water = water + math.random(100, 200)
                print("You drank some pop.")
                io.read()
            elseif pop < 1 then
                print("You have no pop.")
                io.read()
            end
        elseif water >= 700 then
            print("You are not thirsty.")
            io.read()
        end
    end
    function usebook()
        if book == "y" then
            repeat
                print("What do you want to do?")
                print('"r" for read, "w" for write, "e" for erase, and "q" for quit.')
                choice = io.read()
                if choice == "r" then
                    if booknow == "n" then
                        print(text)
                        io.read()
                    else
                        if store == "n" then
                            print(writing)
                            io.read()
                        else
                            print(storedwriting)
                            io.read()
                        end
                    end
                elseif choice == "w" then
                    if booknow == "n" then
                        print("The book says: " .. text)
                        print("Please write what you want to add.")
                        add = io.read()
                        text = text .. add
                        print("The book now reads: " .. text)
                        io.read()
                    else
                        if store == "n" then
                            print("The book says: " .. writing)
                            print("Please write what you want to add.")
                            add = io.read()
                            writing = writing .. add
                            print("The book now reads: " .. writing)
                            io.read()
                        else
                            print("The book says: " .. storedwriting)
                            print("Please write what you want to add.")
                            add = io.read()
                            storedwriting = storedwriting .. add
                            print("The book now reads: " .. storedwriting)
                            io.read()
                        end
                    end
                elseif choice == "e" then
                    if booknow == "n" then
                        text = ""
                    else
                        writing = ""
                    end
                    print("Erased.")
                    io.read()
                else
                    choice = "q"
                    break
                end
            until choice == "q"
        elseif book == "n" then
            print("Unowned.")
            io.read()
        end
    end
    color = math.random(1, 23)
    coloring()
    shirt = ccolor
    color = math.random(1, 7)
    coloring()
    pants = ccolor
    print("Welcome to Zombie Survival Lua Edition V. 1.6")
    print('Press ENTER to continue or type "help" and hit ENTER or RETURN for help.')
    reece = io.read()
    if reece == cheatkey then -----------------------------------------Cheats
        print("Please enter the code.")
        code = io.read()
        if code == password then
            print("Welcome.")
            creator = "y"
            repeat
                cheat = io.read()
                if cheat == "health" then
                    print("How much health?")
                    amount = io.read("*n")
                    health = amount
                    print("updated")
                    io.read()
                elseif cheat == "damage" then
                    print("How much damage?")
                    amount = io.read("*n")
                    damage = amount
                    print("Updated")
                    io.read()
                elseif cheat == "space" then
                    print("How much space?")
                    amount = io.read("*n")
                    space = amount
                    print("Updated")
                    io.read()
                elseif cheat == "day" then
                    print("What is the day?")
                    amount = io.read("*n")
                    day = amount
                    print("Updated")
                    io.read()
                elseif cheat == "spawn" then
                    print("Which spawn?")
                    spawn = io.read("*n")
                    print("You have spawned at spawn " .. spawn .. ".")
                    io.read()
                elseif cheat == "godmode" then
                    print("activated")
                    io.read()
                    invincible = "y"
                    health = 1000000
                    water = 1000000
                    food = 1000000
                    myammo = 1000000
                    damage = 1000000
                    tired = 0
                elseif cheat == "symbol" then
                    print("Please make a symbol for your name.")
                    symbol = io.read()
                    print("Your symbol is " .. symbol .. ".")
                elseif cheat == "item" then
                    print("What do you want?")
                    want = io.read()
                    if want == "bloodbag" then
                        print("How many?")
                        amount = io.read("*n")
                        bloodbags = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "pack" then
                        print("Which one?")
                        want = io.read()
                        if want == "Coyote" then
                            print("Obtained.")
                            io.read()
                            cpack = "y"
                            space = space + 20
                        elseif want == "Alice" then
                            print("Obtained.")
                            io.read()
                            pack = "y"
                            space = space + 10
                        elseif want == "Vest Pouch" then
                            print("Obtained.")
                            io.read()
                            vpack = "y"
                            space = space + 6
                        end
                    elseif want == "meat" then
                        print("How much?")
                        amount = io.read("*n")
                        meat = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "road flare" then
                        print("How many?")
                        amount = io.read("*n")
                        roadflare = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "smoke grenade" then
                        print("How many?")
                        amount = io.read("*n")
                        smoke = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "grenade" then
                        print("How many?")
                        amount = io.read("*n")
                        grenade = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "antibiotic" then
                        print("How many?")
                        amount = io.read("*n")
                        antibiotics = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "radio" then
                        print("Obtained.")
                        io.read()
                        radio = "y"
                    elseif want == "tent" then
                        print("Obtained.")
                        io.read()
                        tent = "y"
                    elseif want == "book" then
                        print("what color?")
                        ccolor = io.read()
                        cover = ccolor
                        book = "y"
                        word()
                        print("Obtained.")
                        io.read()
                    elseif want == "watch" then
                        print("what color?")
                        ccolor = io.read()
                        watchcolor = ccolor
                        watch = "y"
                        print("Obtained.")
                        io.read()
                    elseif want == "jerry can" then
                        can = "y"
                        print("Filled?")
                        fill = io.read()
                        if fill == "y" then
                            print("Obtained.")
                            io.read()
                            cfilled = "y"
                        elseif fill ~= "y" then
                            print("Obtained.")
                            io.read()
                        end
                    elseif want == "bottle" then
                        bottle = "y"
                        print("Filled?")
                        fill = io.read()
                        if fill == "y" then
                            print("Obtained.")
                            filled = "y"
                        elseif fill ~= "y" then
                            print("Obtained.")
                            io.read()
                        end
                    elseif want == "epi-pen" then
                        print("How much?")
                        amount = io.read("*n")
                        morphine = amount
                        print("obtained")
                        io.read()
                    elseif want == "knife" then
                        knife = "y"
                        print("obtained")
                        io.read()
                    elseif want == "bear trap" then
                        beartrap = "y"
                        print("obtained")
                        io.read()
                    elseif want == "goggles" then
                        goggles = "y"
                        print("obtained")
                        io.read()
                    elseif want == "bandaid" then
                        print("How many?")
                        amount = io.read("*n")
                        bandaids = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "pop" then
                        print("How much?")
                        amount = io.read("*n")
                        pop = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "pain killer" then
                        print("How many?")
                        amount = io.read("*n")
                        epipen = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "gillie" then
                        print("You now have a gillie suit.")
                        io.read()
                        gillie = "y"
                    elseif want == "morphine" then
                        print("How many?")
                        amount = io.read("*n")
                        painkillers = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "heatpack" then
                        print("How many?")
                        amount = io.read("*n")
                        heatpacks = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "match" then
                        print("How many?")
                        amount = io.read("*n")
                        matches = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "super bean" then
                        superbean = "y"
                        print("Obtained.")
                        io.read()
                    elseif want == "wood" then
                        wood = "y"
                        print("Obtained.")
                        io.read()
                    elseif want == "steak" then
                        print("How much?")
                        amount = io.read("*n")
                        steak = amount
                        print("Obtained.")
                        io.read()
                    elseif want == "beans" then
                        print("How much?")
                        amount = io.read("*n")
                        beans = amount
                        print("Obtained.")
                        io.read()
                    end
                elseif cheat == "gun" then
                    print("Put in which slot?")
                    slot = io.read()
                    if slot == "2" then
                        mygunthree = myguntwo
                        gunspacethree = gunspacetwo
                        myammothree = myammotwo
                        damagethree = damagetwo
                        accuracythree = accuracytwo
                        fullaccuracythree = fullaccuracytwo
                    else
                        mygunthree = mygun
                        myammothree = myammo
                        gunspacethree = gunspace
                        damagethree = damage
                        accuracythree = accuracy
                        fullaccuracythree = fullaccuracy
                        slot = "1"
                    end
                    print("Which one?")
                    want = io.read()
                    if want == "Revolver" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "Revolver"
                        myammothree = amount
                        gunspacethree = 3
                        damagethree = 1839
                        accuracythree = 4
                        fullaccuracythree = 4
                        takegun()
                        print("obtained")
                        io.read()
                    elseif want == "Makarov" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "Makarov"
                        accuracythree = 4
                        fullaccuracythree = 4
                        gunspacethree = 3
                        damagethree = 889
                        myammothree = amount
                        takegun()
                        print("obtained")
                        io.read()
                    elseif want == "Crossbow" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "Crossbow"
                        accuracythree = 6
                        fullaccuracythree = 6
                        gunspacethree = 6
                        damagethree = 3555
                        myammothree = amount
                        takegun()
                        print("obtained")
                        io.read()
                    elseif want == "Create" then
                        print("What do you want to name it?")
                        gunname = io.read()
                        mygunthree = gunname
                        print("How much ammo?")
                        amount = io.read("*n")
                        myammothree = amount
                        print("How much accuracy?")
                        amount = io.read("*n")
                        if amount > 10 then
                            amount = 10
                        elseif amount < 0 then
                            amount = 0
                        end
                        accuracythree = amount
                        fullaccuracythree = amount
                        print("How much space?")
                        amount = io.read("*n")
                        gunspacethree = amount
                        print("How much damage?")
                        amount = io.read("*n")
                        damagethree = amount
                        takegun()
                        print("Obtained")
                        io.read()
                    elseif want == "Lee Enfield" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "Lee Enfield"
                        accuracythree = 7
                        fullaccuracythree = 7
                        gunspacethree = 7
                        damagethree = 6722
                        myammothree = amount
                        takegun()
                        print("Obtained")
                        io.read()
                    elseif want == "M16" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "M16"
                        accuracythree = 6
                        fullaccuracythree = 6
                        gunspacethree = 7
                        damagethree = 3555
                        myammothree = amount
                        takegun()
                        print("Obtained")
                        io.read()
                    elseif want == "AS50" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "AS50"
                        accuracythree = 10
                        fullaccuracythree = 10
                        gunspacethree = 8
                        damagethree = 174205
                        myammothree = amount
                        takegun()
                        print("Obtained")
                        io.read()
                    elseif want == "FN FAL" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "FN FAL"
                        accuracythree = 8
                        fullaccuracythree = 8
                        gunspacethree = 7
                        damagethree = 8000
                        myammothree = amount
                        takegun()
                        print("Obtained")
                        io.read()
                    elseif want == "G36C" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "G36C"
                        accuracythree = 7
                        fullaccuracythree = 7
                        gunspacethree = 6
                        damagethree = 3555
                        myammothree = amount
                        takegun()
                        print("Obtained")
                        io.read()
                    elseif want == "M4A1" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "M4A1"
                        accuracythree = 8
                        fullaccuracythree = 8
                        gunspacethree = 7
                        damagethree = 3555
                        myammothree = amount
                        takegun()
                        print("Obtained")
                        io.read()
                    elseif want == "AK47" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "AK47"
                        accuracythree = 8
                        fullaccuracythree = 8
                        gunspacethree = 7
                        damagethree = 2722
                        myammothree = amount
                        takegun()
                        print("Obtained")
                        io.read()
                    elseif want == "DB Shotgun" then
                        print("How much ammo?")
                        amount = io.read("*n")
                        mygunthree = "DB Shotgun"
                        accuracythree = 3
                        fullaccuracythree = 3
                        gunspacethree = 6
                        damagethree = 4500
                        myammothree = amount
                        takegun()
                        print("Obtained")
                        io.read()
                    elseif want == "Hatchet" then
                        mygunthree = "Hatchet"
                        accuracythree = 10
                        fullaccuracythree = 10
                        gunspacethree = 6
                        damagethree = 4500
                        myammothree = 99999
                        takegun()
                        print("Obtained")
                        io.read()
                    end
                elseif cheat == "moral" then
                    print("How much?")
                    amount = io.read("*n")
                    moral = amount
                    if moral > 99 then
                        hero = "y"
                        bandit = "n"
                        moral = 100
                    elseif moral < 1 then
                        moral = 0
                        bandit = "y"
                        hero = "n"
                    end
                    print("Updated")
                    io.read()
                elseif cheat == "dog" then
                    print("What do you want to call your dog?")
                    dognameadd = io.read()
                    if dogs >= 1 then
                        dogname = dogname .. " and " .. dognameadd
                    else
                        dogname = dognameadd
                    end
                    print("You now have " .. dogname .. ".")
                    io.read()
                    dogs = dogs + 1
                    doghealth = 10000
                    dogfood = 500
                    dogwater = 500
                elseif cheat == "water" then
                    print("How much?")
                    amount = io.read("*n")
                    water = amount
                    print("Updated")
                    io.read()
                elseif cheat == "food" then
                    print("How much?")
                    amount = io.read("*n")
                    food = amount
                    print("Updated")
                    io.read()
                elseif cheat == "exhaustion" then
                    print("How much?")
                    amount = io.read("*n")
                    tired = amount
                    print("Updated")
                    io.read()
                elseif cheat == "accuracy" then
                    print("How much?")
                    amount = io.read("*n")
                    accuracy = amount
                    print("Updated")
                    io.read()
                elseif cheat == "pain" then
                    print("How much?")
                    amount = io.read("*n")
                    pain = amount
                    print("Updated")
                    io.read()
                elseif cheat == "temperature" then
                    print("What temperature?")
                    temperature = io.read("*n")
                    print("Updated.")
                    io.read()
                elseif cheat == "clothes" then
                    print("Which one?")
                    want = io.read()
                    if want == "shirt" then
                        print("What color?")
                        ccolor = io.read()
                        shirt = ccolor
                        print("You now have a " .. ccolor .. " shirt.")
                        io.read()
                    elseif want == "pants" then
                        print("What color?")
                        ccolor = io.read()
                        pants = ccolor
                        print("You now have " .. ccolor .. " pants.")
                        io.read()
                    end
                end
            until cheat == "Leave"
        elseif code ~= password then
            print("HAAAAAAAAAAAAAAAAAAAAAX!")
            health = 0
            print("You died from hax.") --------------------------------------Help
        end
    elseif reece == "help" then
        help()
    end
     --------------------------------------------------------Gamemode
    print("     Choose a game mode.")
    print("Recruit   Easy   Medium   Hard")
    mode = io.read()
    if mode == "e" then
        print("Easy.")
        io.read()
        gamemode = "Easy"
        bandaids = 5
        beans = 5
        pop = 7
        tent = "y"
        health = 20000
        fullhealth = 20000
        space = 2
    elseif mode == "r" then
        print("Recruit.")
        io.read()
        gamemode = "Recruit"
        myguntwo = "Revolver"
        myammotwo = 10
        damagetwo = 1839
        accuracytwo = 5
        fullaccuracytwo = 5
        bandaids = 5
        epipen = 1
        morphine = 2
        antibiotics = 2
        heatpacks = 2
        bloodbags = 1
        painkillers = 4
        steak = 5
        bottle = "y"
        filled = "y"
        health = 22000
        fullhealth = 22000
        vpack = "y"
        tent = "y"
        space = 0
    elseif mode == "m" then
        print("Medium.")
        io.read()
        gamemode = "Medium"
        beans = 2
        pop = 3
        health = 15000
        fullhealth = 15000
        space = 7
    elseif mode == "h" then
        print("Hard.")
        io.read()
        gamemode = "Hard"
    else
        print("Medium.")
        io.read()
        gamemode = "Medium"
        beans = 2
        pop = 3
        health = 15000
        fullhealth = 15000
        space = 7
    end
     --------------------------------------------------Name
    print("What is your name?")
    name = io.read()
    if name == "" then
        name = "Player"
    end
    print("Hello " .. name .. ".")
    io.read()
    if spawn == 1 then
        print("You have spawned in the city.")
    elseif spawn == 2 then
        print("You have spawned on the shore.")
    elseif spawn == 3 then
        print("You have spawned in the forest.")
    end
     -- end of spawn
    io.read()
    stats()
    io.read()
    optionline()
    repeat ------------------------------------------------------Events
        repeat
            if flare ~= "y" then
                event = math.random(1, 7)
            elseif flare == "y" then
                attract = math.random(1, 5)
                if attract == 1 then
                    event = 4
                    print("Your flare atracted something.")
                    io.read()
                else
                    event = 2
                    print("Your flare atracted something.")
                    io.read()
                end
                flare = "n"
            end
            if event == 1 then ----------------------------------------------------------------------------------------------------------------------------------------------------------------------Event 1
                gun = math.random(1, 4)
                if gun == 1 then --------------------Revolver
                    revolveritem()
                elseif gun == 2 then -------------------------------Makarov
                    makarovitem()
                elseif gun == 3 then
                    hatchetitem()
                elseif gun == 4 then -------------------------------crossbow
                    find = math.random(1, 5)
                    if find == 1 then
                        crossbowitem()
                    elseif find ~= 1 then
                        print("Nothing happened.")
                        io.read()
                    end
                end
            elseif event == 2 then --------------------------------EVent 2
                print("You found a zombie, attack it?")
                move = io.read()
                if move == "y" then --attack
                    zhealth = math.random(2000, 3000) + pain
                    if myammo >= zhealth / damage - (accuracy - 10) then
                        myammo = myammo - zhealth / damage + (accuracy - 10)
                        health = health - math.random(0, 3000)
                        doghealth = doghealth - math.random(0, 2000)
                        tired = tired + math.random(1, 10)
                        if bleeding == "y" then
                            sick = math.random(1, 5)
                            if sick == 1 then
                                print("You got an infection.")
                                io.read()
                                infection = "y"
                            end
                        end
                        bleed = math.random(1, 7)
                        if bleed == 1 then
                            print("You are bleeding.")
                            io.read()
                            bleeding = "y"
                        end
                        brake = math.random(1, 15)
                        if brake == 1 then
                            print("You broke your leg.")
                            io.read()
                            broken = "y"
                            bleeding = "y"
                        end
                        pain = pain + math.random(500, 2000)
                        if myguntwo == "Hatchet" then
                            myammotwo = 99999
                            health = health - math.random(0, 1000)
                        end
                        print("You killed it.")
                        io.read()
                        moral = moral + math.random(5, 10)
                        bandit = "n"
                        if moral > 100 then
                            moral = 100
                            hero = "y"
                        end
                        print("You search its pockets.")
                        io.read()
                        dropamount = math.random(1, 4)
                        clothedrop = "y"
                        repeat
                            zombiedrop()
                            dropamount = dropamount - 1
                            clothedrop = "n"
                        until dropamount == 0
                    elseif myammotwo >= zhealth / damagetwo - (accuracytwo - 10) then
                        print("You killed it with your secondary.")
                        io.read()
                        myammotwo = myammotwo - zhealth / damagetwo + (accuracytwo - 10)
                        health = health - math.random(0, 3000)
                        doghealth = doghealth - math.random(0, 2000)
                        tired = tired + math.random(1, 10)
                        if bleeding == "y" then
                            sick = math.random(1, 2)
                            if sick == 1 then
                                print("You got an infection.")
                                io.read()
                                infection = "y"
                            end
                        end
                        bleed = math.random(1, 7)
                        if bleed == 1 then
                            print("You are bleeding.")
                            io.read()
                            bleeding = "y"
                        end
                        brake = math.random(1, 15)
                        if brake == 1 then
                            print("You broke your leg.")
                            io.read()
                            broken = "y"
                            bleeding = "y"
                        end
                        pain = pain + math.random(500, 2000)
                        if myguntwo == "Hatchet" then
                            myammotwo = 99999
                            health = health - math.random(0, 1000)
                        end
                        moral = moral + math.random(5, 10)
                        bandit = "n"
                        if moral > 100 then
                            moral = 100
                            hero = "y"
                        end
                        print("You search its pockets.")
                        io.read()
                        dropamount = math.random(1, 3)
                        clothedrop = "y"
                        repeat
                            zombiedrop()
                            dropamount = dropamount - 1
                            clothedrop = "n"
                        until dropamount == 0
                    elseif dogs >= 1 then
                        print("Your dog killed it.")
                        io.read()
                        health = health - math.random(0, 3000)
                        doghealth = doghealth - math.random(0, 4000)
                        tired = tired + math.random(1, 10)
                        if bleeding == "y" then
                            sick = math.random(1, 2)
                            if sick == 1 then
                                print("You got an infection.")
                                io.read()
                                infection = "y"
                            end
                        end
                        bleed = math.random(1, 7)
                        if bleed == 1 then
                            print("You are bleeding.")
                            io.read()
                            bleeding = "y"
                        end
                        brake = math.random(1, 15)
                        if brake == 1 then
                            print("You broke your leg.")
                            io.read()
                            broken = "y"
                            bleeding = "y"
                        end
                        pain = pain + math.random(500, 2000)
                        moral = moral + math.random(5, 10)
                        bandit = "n"
                        if moral > 100 then
                            moral = 100
                            hero = "y"
                        end
                        print("You search its pockets.")
                        io.read()
                        dropamount = math.random(1, 3)
                        clothedrop = "y"
                        repeat
                            zombiedrop()
                            dropamount = dropamount - 1
                            clothedrop = "n"
                        until dropamount == 0
                    elseif dogs < 1 then
                        if bleeding == "y" then
                            sick = math.random(1, 2)
                            if sick == 1 then
                                print("You got an infection.")
                                io.read()
                                infection = "y"
                            end
                        end
                        bleed = math.random(1, 2)
                        if bleed == 1 then
                            print("You are bleeding.")
                            io.read()
                            bleeding = "y"
                        end
                        brake = math.random(1, 12)
                        if brake == 1 then
                            print("You broke your leg.")
                            io.read()
                            broken = "y"
                            bleeding = "y"
                        end
                        pain = pain + math.random(1000, 3000)
                        print("The zombie killed you.")
                        health = 0
                        health = health - math.random(1000, 6000)
                        break
                    end
                 --end of attack
                elseif move ~= "y" then --flee
                    if gillie == "y" then
                        amount = math.random(500, 800)
                    else
                        amount = math.random(250, 500)
                    end
                    if tired >= amount then
                        if smoke >= 1 then
                            print("You used a smoke grenade.")
                            io.read()
                            smoke = smoke - 1
                            if smoke < 1 then
                                space = space + 1
                            end
                        elseif smoke < 1 then
                            bleed = math.random(1, 5)
                            if bleed == 1 then
                                print("You are bleeding.")
                                io.read()
                                bleeding = "y"
                            end
                            brake = math.random(1, 12)
                            if brake == 1 then
                                print("You broke your leg.")
                                io.read()
                                broken = "y"
                                bleeding = "y"
                            end
                            pain = pain + math.random(1000, 3000)
                            print("The zombie caught you.")
                            health = 0
                            health = health - math.random(1000, 6000)
                            break
                        end
                    elseif tired < amount then
                        print("You ran away")
                        io.read()
                        tired = tired + math.random(10, 50)
                    end
                 --end if escape
                end --end of y/n attack
            elseif event == 3 then --------------------------------------Event 4
                print("You look around.")
                io.read()
                item = math.random(1, 17)
                if item == 2 then
                    if spawn == 3 then
                        cowitem()
                    else
                        popitem()
                    end
                elseif item == 3 then
                    knifeitem()
                elseif item == 4 then
                    if spawn == 1 then
                        tentitem()
                    elseif spawn ~= 1 then
                        beansitem()
                    end
                elseif item == 5 then
                    bottleitem()
                elseif item == 6 then -- water
                    if spawn == 2 then
                        watersourceitem()
                    else
                        popitem()
                    end
                elseif item == 7 then
                    jerrycanitem()
                elseif item == 8 then
                    bandaiditem()
                elseif item == 9 then
                    painkilleritem()
                elseif item == 10 then
                    morphineitem()
                elseif item == 11 then
                    heatpackitem()
                elseif item == 12 then
                    matchitem()
                elseif item == 13 then
                    beansitem()
                elseif item == 14 then
                    popitem()
                elseif item == 15 then
                    roadflareitem()
                elseif item == 16 then
                    vestpouchitem()
                elseif item == 17 then
                    watchitem()
                elseif item == 1 then
                    print("You found a dog, approach?")
                    approach = io.read()
                    if approach == "y" then
                        if steak >= 1 then
                            print("You fed the dog a steak.")
                            io.read()
                            steak = steak - 1
                            if steak == 0 then
                                space = space + 1
                            end
                            damage = damage + 1000
                            if dogs < 1 then
                                doghealth = 10000
                                dogfood = 500
                                dogwater = 500
                            end
                            print("What do you want to call your dog?")
                            dognameadd = io.read()
                            if dogs >= 1 then
                                dogname = dogname .. " and " .. dognameadd
                            else
                                dogname = dognameadd
                            end
                            print("You now have " .. dogname .. ".")
                            io.read()
                            dogs = dogs + 1
                        elseif steak < 1 then
                            zhealth = math.random(7000, 12000)
                            if myammo >= zhealth / damage - (accuracy - 10) then
                                print("The dog attacked you but you killed it.")
                                io.read()
                                health = health - math.random(0, 3000)
                                doghealth = doghealth - math.random(0, 2000)
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    io.read()
                                    bleeding = "y"
                                end
                                brake = math.random(1, 10)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(1000, 3000)
                                if mygun == "Hatchet" then
                                    myammo = 99999
                                    health = health - math.random(0, 2000)
                                end
                                myammo = myammo - zhealth / damage + (accuracy - 10)
                                wild = "y"
                                skindog()
                                wild = "n"
                            elseif myammotwo >= zhealth / damagetwo - (accuracytwo - 10) then
                                print("The dog attacked you but you killed it with your secondary.")
                                io.read()
                                health = health - math.random(0, 3000)
                                doghealth = doghealth - math.random(0, 2000)
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    io.read()
                                    bleeding = "y"
                                end
                                brake = math.random(1, 10)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(1000, 3000)
                                if myguntwo == "Hatchet" then
                                    myammotwo = 99999
                                    health = health - math.random(0, 2000)
                                end
                                myammotwo = myammotwo - zhealth / damagetwo + (accuracytwo - 10)
                                wild = "y"
                                skindog()
                                wild = "n"
                            elseif dogs >= 1 then
                                print("The dog attacked you but your dog killed it.")
                                io.read()
                                health = health - math.random(0, 3000)
                                doghealth = doghealth - math.random(0, 5000)
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    io.read()
                                    bleeding = "y"
                                end
                                brake = math.random(1, 10)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(1000, 3000)
                                wild = "y"
                                skindog()
                                wild = "n"
                            elseif dogs < 1 then
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    bleeding = "y"
                                end
                                brake = math.random(1, 7)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(2000, 5000)
                                print("The dog killed you.")
                                health = 0
                                health = health - math.random(1000, 8000)
                                break
                            end
                        end
                    elseif approach ~= "y" then
                        if gillie == "n" then
                            amount = math.random(20, 100)
                        else
                            amount = math.random(100, 200)
                        end
                        if tired >= amount then
                            if smoke >= 1 then
                                print("You used a smoke grenade.")
                                io.read()
                                smoke = smoke - 1
                                if smoke < 1 then
                                    space = space + 1
                                end
                            elseif smoke < 1 then
                                bleed = math.random(1, 5)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    io.read()
                                    bleeding = "y"
                                end
                                brake = math.random(1, 12)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(1000, 3000)
                                print("The dog caught you.")
                                health = 0
                                health = health - math.random(1000, 6000)
                                break
                            end
                        elseif tired < amount then
                            print("You ran away")
                            io.read()
                            tired = tired + math.random(10, 50)
                        end
                     --end if escape
                    end
                 --end of fight
                end
             --end of item
            elseif event == 4 then -------------------------------------Event 5
                amount = math.random(1, 10)
                if amount == 1 then
                    gangamount = math.random(2, 5)
                    print("You see a gang of " .. gangamount .. " people in a small house.")
                    print("Enter?")
                    approach = io.read()
                    if approach == "y" then
                        gang = "y"
                        repeat
                            gangamount = gangamount - 1
                            playerevent()
                            if gangamount ~= 0 then
                                optionline()
                            end
                        until gangamount == 0
                        gang = "n"
                    elseif approach ~= "y" then
                        if tired < math.random(50, 100) then
                            print("You have escaped.")
                            io.read()
                            tired = tired + math.random(50, 150)
                        else
                            if smoke >= 1 then
                                print("You used a smoke grenade.")
                                io.read()
                                smoke = smoke - 1
                                if smoke < 1 then
                                    space = space + 1
                                end
                            elseif smoke < 1 then
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    bleeding = "y"
                                end
                                brake = math.random(1, 7)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(2000, 5000)
                                print("The gang caught you.")
                                print("They killed you.")
                                health = 0
                                health = health - math.random(1000, 8000)
                            end
                        end
                     --end of fle
                    end
                else
                    playerevent()
                end
            elseif event == 5 then ------------------------------------Event 6
                amount = math.random(1, 6)
                if amount == 1 then
                    vehiclename = "GAZ"
                elseif amount == 2 then
                    vehiclename = "Tractor"
                elseif amount == 3 then
                    vehiclename = "Helix"
                elseif amount == 4 then
                    vehiclename = "UAZ"
                elseif amount == 5 then
                    vehiclename = "MotorCycle"
                elseif amount == 6 then
                    vehiclename = "ATV"
                end
                print("You found a " .. vehiclename .. ", use it?.")
                 ----------Vehicle
                fix = io.read()
                if fix == "y" then
                    if cfilled == "y" then
                        print("You have used your fuel.")
                        io.read()
                        cfilled = "n"
                        if spawn == 1 then
                            spawning = math.random(2, 3)
                        elseif spawn == 2 then
                            spawning = math.random(1, 2)
                            if spawning == 2 then
                                spawning = 3
                            end
                        elseif spawn == 3 then
                            spawning = math.random(1, 2)
                        end
                        if spawning == 1 then
                            print("You have traveled to the city.")
                            spawn = 1
                        elseif spawning == 2 then
                            print("You have traveled to the shore.")
                            spawn = 2
                        elseif spawning == 3 then
                            print("You have traveled to the forest.")
                            spawn = 3
                        end
                         -- end of vehicle
                        io.read()
                    elseif cfilled == "n" then
                        print("You have no fuel.")
                        io.read()
                    end
                elseif fix ~= "y" then
                    print("You left the vehicle.")
                    io.read()
                end
            elseif event == 6 then ------------------Event 7!
                site = math.random(1, 30)
                if site ~= 1 then
                    print("You found a campsite.")
                    print("Approach?")
                    approach = io.read()
                    if approach == "y" then -----------camp
                        print("You prepare to approach.")
                        io.read()
                        trap = math.random(1, 6)
                        if trap == 1 then
                            print("You broke your leg on a bear trap.")
                            io.read()
                            broken = "y"
                            bleeding = "y"
                        elseif trap == 2 then
                            playerevent()
                            if health >= 1 then
                                print("The place is empty.")
                                io.read()
                            else
                                break
                            end
                        else
                            trap = math.random(1, 3)
                            if trap == 1 then
                                print("You found a fire at the camp.")
                                repeat
                                    print("Use it?")
                                    approach = io.read()
                                    if approach == "y" then
                                        if meat >= 1 then
                                            print("You cooked some meat and warm yourself.")
                                            io.read()
                                            temperature = temperature + math.random(1, 3)
                                            if temperature > 50 then
                                                temperature = 50
                                            end
                                            if temperature >= 33 then
                                                if cold == "y" then
                                                    print("You lost your cold.")
                                                    io.read()
                                                    cold = "n"
                                                end
                                            end
                                            steak = steak + meat
                                            meat = 0
                                            break
                                        elseif meat < 1 then
                                            print("You have no meat but warm yourself.")
                                            io.read()
                                            temperature = temperature + math.random(1, 3)
                                            if temperature > 50 then
                                                temperature = 50
                                            end
                                            if temperature >= 33 then
                                                if cold == "y" then
                                                    print("You lost your cold.")
                                                    io.read()
                                                    cold = "n"
                                                end
                                            end
                                            break
                                        end
                                    elseif approach ~= "y" then
                                        print("You left.")
                                        io.read()
                                        break
                                    end
                                until pickup ~= "y"
                            elseif trap ~= 1 then
                                print("You search The camp.")
                                io.read()
                                dropamount = math.random(1, 7)
                                repeat
                                    drop = math.random(1, 37)
                                    dropamount = dropamount - 1
                                    if drop == 1 then
                                        makarovitem()
                                    elseif drop == 37 then
                                        gillieitem()
                                    elseif drop == 2 then
                                        revolveritem()
                                    elseif drop == 3 then
                                        amount = math.random(1, 3)
                                        if amount == 1 then
                                            M16item()
                                        else
                                            beansitem()
                                        end
                                    elseif drop == 4 then
                                        amount = 1
                                        if amount == 1 then
                                            crossbowitem()
                                        else
                                            popitem()
                                        end
                                    elseif drop == 5 then
                                        amount = 1
                                        if amount == 1 then
                                            hatchetitem()
                                        else
                                            beansitem()
                                        end
                                    elseif drop == 6 then
                                        amount = math.random(1, 4)
                                        if amount == 1 then
                                            leeenfielditem()
                                        else
                                            popitem()
                                        end
                                    elseif drop == 7 then
                                        amount = math.random(1, 30)
                                        if amount == 1 then
                                            FNFALitem()
                                        else
                                            beansitem()
                                        end
                                    elseif drop == 8 then
                                        amount = math.random(1, 70)
                                        if amount == 1 then
                                            AS50item()
                                        else
                                            popitem()
                                        end
                                    elseif drop == 9 then
                                        amount = math.random(1, 2)
                                        if amount == 1 then
                                            gogglesitem()
                                        else
                                            beansitem()
                                        end
                                    elseif drop == 10 then
                                        amount = math.random(1, 20)
                                        if amount == 1 then
                                            coyotepackitem()
                                        else
                                            popitem()
                                        end
                                    elseif drop == 11 then
                                        amount = math.random(1, 2)
                                        if amount == 1 then
                                            filledjerrycanitem()
                                        else
                                            jerrycanitem()
                                        end
                                    elseif drop == 12 then
                                        beartrapitem()
                                    elseif drop == 13 then
                                        matchitem()
                                    elseif drop == 14 then
                                        amount = math.random(1, 2)
                                        if amount == 1 then
                                            filledbottleitem()
                                        else
                                            bottleitem()
                                        end
                                    elseif drop == 15 then
                                        tentitem()
                                    elseif drop == 16 then
                                        knifeitem()
                                    elseif drop == 17 then
                                        amount = 1
                                        if amount == 1 then
                                            antibioticsitem()
                                        else
                                            beansitem()
                                        end
                                    elseif drop == 18 then
                                        morphineitem()
                                    elseif drop == 19 then
                                        if droppedbook == "y" then
                                            amount = math.random(1, 10)
                                            if amount == 1 then
                                                findbook = "y"
                                                booksitem()
                                                findbook = "n"
                                                droppedbook = "n"
                                            else
                                                booksitem()
                                            end
                                        else
                                            booksitem()
                                        end
                                    elseif drop == 20 then
                                        heatpackitem()
                                    elseif drop == 21 then
                                        painkilleritem()
                                    elseif drop == 22 then
                                        amount = math.random(1, 5)
                                        if amount == 1 then
                                            alicepackitem()
                                        else
                                            popitem()
                                        end
                                    elseif drop == 23 then
                                        vestpouchitem()
                                    elseif drop == 24 then
                                        penitem()
                                    elseif drop == 25 then
                                        roadflareitem()
                                    elseif drop == 26 then
                                        bloodbagitem()
                                    elseif drop == 27 then
                                        bandaiditem()
                                    elseif drop == 28 then
                                        amount = math.random(1, 20)
                                        if amount == 1 then
                                            grenadeitem()
                                        else
                                            beansitem()
                                        end
                                    elseif drop == 29 then
                                        amount = math.random(1, 15)
                                        if amount == 1 then
                                            smokegrenadeitem()
                                        else
                                            popitem()
                                        end
                                    elseif drop == 30 then
                                        ammoitem()
                                    elseif drop == 31 then
                                        radioitem()
                                    elseif drop == 32 then
                                        amount = math.random(1, 3)
                                        if amount == 1 then
                                            g36citem()
                                        else
                                            beansitem()
                                        end
                                    elseif drop == 33 then
                                        amount = math.random(1, 2)
                                        if amount == 1 then
                                            AK47item()
                                        else
                                            popitem()
                                        end
                                    elseif drop == 34 then
                                        amount = math.random(1, 3)
                                        if amount == 1 then
                                            M4A1item()
                                        else
                                            beansitem()
                                        end
                                    elseif drop == 35 then
                                        DBshotgunitem()
                                    elseif drop == 36 then
                                        watchitem()
                                    end
                                until dropamount == 0
                                print("You leave the camp.")
                                io.read()
                            elseif approach ~= "y" then
                                print("You left.")
                                io.read()
                            end
                        end
                    end
                elseif site == 1 then --------------------------------Millitary
                    print("You found a Military Camp.")
                    print("Approach?")
                    approach = io.read()
                    if approach == "y" then
                        trap = math.random(1, 7)
                        if trap == 1 then
                            print("You sneak past the guards.")
                            io.read()
                            print("You search the Military camp.")
                            io.read()
                            dropamount = math.random(1, 3)
                            repeat
                                drop = math.random(1, 6)
                                dropamount = dropamount - 1
                                if drop == 1 then
                                    smokegrenade()
                                elseif drop == 2 then
                                    AS50item()
                                elseif drop == 3 then
                                    grenadeitem()
                                elseif drop == 4 then
                                    coyotepackitem()
                                elseif drop == 5 then
                                    gogglesitem()
                                elseif drop == 6 then
                                    gillieitem()
                                end
                            until dropamount == 0
                        elseif trap ~= 1 then ------------------------------------------------Guard
                            zhealth = math.random(12000, 22000)
                            if myammo >= zhealth / damage - (accuracy - 10) then --win?
                                print("The player guard shot you but you killed them.")
                                io.read()
                                health = health - math.random(0, 10000)
                                doghealth = doghealth - math.random(0, 7000)
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    io.read()
                                    bleeding = "y"
                                end
                                brake = math.random(1, 10)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(1000, 3000)
                                if mygun == "Hatchet" then
                                    myammo = 99999
                                    health = health - math.random(0, 2000)
                                end
                                myammo = myammo - zhealth / damage + (accuracy - 10)
                                print("They had a Soldier Shirt.")
                                print("Take?")
                                pickup = io.read()
                                if pickup == "y" then
                                    print("You now have a Soldier Shirt.")
                                    io.read()
                                    shirt = "Soldier"
                                elseif pickup ~= "y" then
                                    print("You left it there.")
                                    io.read()
                                end
                                print("They had Soldier Pants.")
                                print("Take?")
                                pickup = io.read()
                                if pickup == "y" then
                                    print("You now have Soldier Pants.")
                                    io.read()
                                    pants = "Soldier"
                                elseif pickup ~= "y" then
                                    print("You left it there.")
                                    io.read()
                                end
                                print("You search his pockets.")
                                io.read()
                                dropamount = math.random(1, 4)
                                repeat
                                    guarddrop()
                                    dropamount = dropamount - 1
                                until dropamount == 0
                                guarddrop()
                            elseif myammotwo >= zhealth / damagetwo - (accuracytwo - 10) then
                                print("The player guard shot you but you killed them with your secondary.")
                                io.read()
                                health = health - math.random(0, 10000)
                                doghealth = doghealth - math.random(0, 7000)
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    io.read()
                                    bleeding = "y"
                                end
                                brake = math.random(1, 10)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(1000, 3000)
                                if myguntwo == "Hatchet" then
                                    myammotwo = 99999
                                    health = health - math.random(0, 2000)
                                end
                                myammotwo = myammotwo - zhealth / damagetwo + (accuracytwo - 10)
                                drop = math.random(1, 3)
                                print("They had a Soldier Shirt.")
                                print("Take?")
                                pickup = io.read()
                                if pickup == "y" then
                                    print("You now have a Soldier Shirt.")
                                    io.read()
                                    shirt = "Soldier"
                                elseif pickup ~= "y" then
                                    print("You left it there.")
                                    io.read()
                                end
                                print("You search his pockets.")
                                io.read()
                                dropamount = math.random(1, 4)
                                repeat
                                    guarddrop()
                                    dropamount = dropamount - 1
                                until dropamount == 0
                                guarddrop()
                            elseif dogs >= 1 then
                                print("The player guard shot you but your dog killed them.")
                                io.read()
                                health = health - math.random(0, 10000)
                                doghealth = doghealth - math.random(0, 10000)
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    io.read()
                                    bleeding = "y"
                                end
                                brake = math.random(1, 10)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(1000, 3000)
                                drop = math.random(1, 3)
                                print("They had a Soldier Shirt.")
                                print("Take?")
                                pickup = io.read()
                                if pickup == "y" then
                                    print("You now have a Soldier Shirt.")
                                    io.read()
                                    shirt = "Soldier"
                                elseif pickup ~= "y" then
                                    print("You left it there.")
                                    io.read()
                                end
                                print("You search his pockets.")
                                io.read()
                                dropamount = math.random(1, 4)
                                repeat
                                    guarddrop()
                                    dropamount = dropamount - 1
                                until dropamount == 0
                                guarddrop()
                            elseif dogs < 1 then
                                bleed = math.random(1, 2)
                                if bleed == 1 then
                                    print("You are bleeding.")
                                    bleeding = "y"
                                end
                                brake = math.random(1, 7)
                                if brake == 1 then
                                    print("You broke your leg.")
                                    io.read()
                                    broken = "y"
                                    bleeding = "y"
                                end
                                pain = pain + math.random(2000, 5000)
                                print("The player guard killed you.")
                                 --------------------------Die
                                health = 0
                                health = health - math.random(1000, 8000)
                                break
                            end
                         --myammo
                        end
                     --end of fight
                    end
                elseif approach ~= "y" then
                    print("You left.")
                    io.read()
                end
            elseif event == 7 then --------------------------------------------------------------------------EVENT 8
                if spawn == 1 then
                    site = math.random(1, 5)
                    if site == 1 then
                        print("You found a hospital, approach?.")
                        approach = io.read()
                        if approach == "y" then
                            print("You prepare to approach.")
                            io.read()
                            amount = math.random(1, 3)
                            if amount == 1 then
                                playerevent()
                                if health <= 0 then
                                    break
                                else
                                    print("The player already cleared out the place.")
                                    io.read()
                                end
                            else
                                print("You don't see anyone.")
                                io.read()
                                dropamount = math.random(1, 4)
                                repeat
                                    drop = math.random(1, 8)
                                    dropamount = dropamount - 1
                                    if drop == 1 then
                                        penitem()
                                    elseif drop == 2 then
                                        morphineitem()
                                    elseif drop == 3 then
                                        bandaiditem()
                                    elseif drop == 4 then
                                        bloodbagitem()
                                    elseif drop == 5 then
                                        antibioticsitem()
                                    elseif drop == 6 then
                                        heatpackitem()
                                    elseif drop == 7 then
                                        roadflareitem()
                                    elseif drop == 8 then
                                        print("You find a medbox and look inside.")
                                        io.read()
                                        penitem()
                                        morphineitem()
                                        bandaiditem()
                                        bloodbagitem()
                                        antibioticsitem()
                                        heatpackitem()
                                        painkilleritem()
                                        print("You left the box.")
                                        io.read()
                                    end
                                until dropamount == 0
                                print("You leave the building.")
                                io.read()
                            end
                        elseif approach ~= "y" then
                            print("You leave.")
                            io.read()
                        end
                    elseif site == 2 then
                        print("You found a police station, approach?.")
                        approach = io.read()
                        if approach == "y" then
                            print("You prepare to approach.")
                            io.read()
                            amount = math.random(1, 2)
                            if amount == 1 then
                                playerevent()
                                if health <= 0 then
                                    break
                                else
                                    print("The player already cleared out the place.")
                                    io.read()
                                end
                            else
                                print("You don't see anyone.")
                                io.read()
                                dropamount = math.random(1, 3)
                                repeat
                                    drop = math.random(1, 13)
                                    dropamount = dropamount - 1
                                    if drop == 1 then
                                        makarovitem()
                                    elseif drop == 2 then
                                        revolveritem()
                                    elseif drop == 3 then
                                        amount = 1
                                        if amount == 1 then
                                            M16item()
                                        else
                                            ammoitem()
                                        end
                                    elseif drop == 4 then
                                        amount = 1
                                        if amount == 1 then
                                            crossbowitem()
                                        else
                                            ammoitem()
                                        end
                                    elseif drop == 5 then
                                        amount = 1
                                        if amount == 1 then
                                            hatchetitem()
                                        else
                                            ammoitem()
                                        end
                                    elseif drop == 6 then
                                        amount = math.random(1, 3)
                                        if amount == 1 then
                                            leeenfielditem()
                                        else
                                            ammoitem()
                                        end
                                    elseif drop == 7 then
                                        amount = math.random(1, 25)
                                        if amount == 1 then
                                            FNFALitem()
                                        else
                                            ammoitem()
                                        end
                                    elseif drop == 8 then
                                        amount = math.random(1, 40)
                                        if amount == 1 then
                                            AS50item()
                                        else
                                            ammoitem()
                                        end
                                    elseif drop == 9 then
                                        radioitem()
                                    elseif drop == 10 then
                                        g36citem()
                                    elseif drop == 11 then
                                        AK47item()
                                    elseif drop == 12 then
                                        M4A1item()
                                    elseif drop == 13 then
                                        DBshotgunitem()
                                    end
                                until dropamount == 0
                                print("You leave the building.")
                                io.read()
                            end
                        elseif approach ~= "y" then
                            print("You leave.")
                            io.read()
                        end
                    elseif site == 3 then
                        gasstation()
                    else
                        print("You found a building, approach?.")
                        approach = io.read()
                        if approach == "y" then
                            print("You prepare to approach.")
                            io.read()
                            amount = math.random(1, 5)
                            if amount == 1 then
                                playerevent()
                                if health <= 0 then
                                    break
                                else
                                    print("The player already cleared out the place.")
                                    io.read()
                                end
                            else
                                print("You don't see anyone.")
                                io.read()
                                dropamount = math.random(1, 5)
                                repeat
                                    drop = math.random(1, 16)
                                    dropamount = dropamount - 1
                                    if drop == 1 then
                                        makarovitem()
                                    elseif drop == 2 then
                                        revolveritem()
                                    elseif drop == 3 then
                                        steakitem()
                                    elseif drop == 4 then
                                        popitem()
                                    elseif drop == 5 then
                                        beansitem()
                                    elseif drop == 6 then
                                        knifeitem()
                                    elseif drop == 7 then
                                        matchitem()
                                    elseif drop == 8 then
                                        bandaiditem()
                                    elseif drop == 9 then
                                        amount = math.random(1, 3)
                                        if amount == 1 then
                                            hatchetitem()
                                        else
                                            beansitem()
                                        end
                                    elseif drop == 10 then
                                        roadflareitem()
                                    elseif drop == 11 then
                                        alicepackitem()
                                    elseif drop == 12 then
                                        watersourceitem()
                                    elseif drop == 13 then
                                        vestpouchitem()
                                    elseif drop == 14 then
                                        booksitem()
                                    elseif drop == 15 then
                                        radioitem()
                                    elseif drop == 16 then
                                        watchitem()
                                    end
                                until dropamount == 0
                                print("You leave the building.")
                                io.read()
                            end
                        elseif approach ~= "y" then
                            print("You leave.")
                            io.read()
                        end
                    end
                elseif spawn == 3 then
                    print("You found a farm, approach?.")
                    approach = io.read()
                    if approach == "y" then
                        print("You prepare to approach.")
                        io.read()
                        amount = math.random(1, 2)
                        if amount == 1 then
                            playerevent()
                            if health <= 0 then
                                break
                            else
                                print("The player already cleared out the place.")
                                io.read()
                            end
                        else
                            print("You don't see anyone.")
                            io.read()
                            dropamount = math.random(1, 7)
                            repeat
                                drop = math.random(1, 17)
                                dropamount = dropamount - 1
                                if drop == 1 then
                                    makarovitem()
                                elseif drop == 2 then
                                    revolveritem()
                                elseif drop == 3 then
                                    beartrapitem()
                                elseif drop == 4 then
                                    wooditem()
                                elseif drop == 5 then
                                    beansitem()
                                elseif drop == 6 then
                                    knifeitem()
                                elseif drop == 7 then
                                    matchitem()
                                elseif drop == 8 then
                                    bandaiditem()
                                elseif drop == 9 then
                                    hatchetitem()
                                elseif drop == 10 then
                                    roadflareitem()
                                elseif drop == 11 then
                                    alicepackitem()
                                elseif drop == 12 then
                                    watersourceitem()
                                elseif drop == 13 then
                                    vestpouchitem()
                                elseif drop == 14 then
                                    booksitem()
                                elseif drop == 15 then
                                    steakitem()
                                elseif drop == 16 then
                                    popitem()
                                elseif drop == 16 then
                                    radioitem()
                                elseif drop == 17 then
                                    DBshotgunitem()
                                end
                            until dropamount == 0
                            print("You left the farm.")
                            io.read()
                        end
                    elseif approach ~= "y" then
                        print("You left the farm.")
                        io.read()
                    end
                else
                    gasstation()
                end
            end
            if tired < 0 then
                tired = 0
            end
             ------------------------------------- stats
            if hour == 12 then
                hour = 1
            else
                hour = hour + 1
            end
            if hour == 12 then
                if period == "pm" then
                    period = "am"
                else
                    period = "pm"
                end
            end
            if hour == 8 then
                if period == "pm" then
                    light = "dark"
                    print("It's dark out.")
                    io.read()
                    if vision == "n" then
                        accuracy = fullaccuracy
                        accuracy = accuracy - 4
                        accuracytwo = fullaccuracytwo
                        accuracytwo = accuracytwo - 4
                    elseif vision == "y" then
                        accuracytwo = fullaccuracytwo
                        accuracy = fullaccuracy
                    end
                elseif period == "am" then
                    print("It's light out.")
                    io.read()
                    light = "light"
                    if vision == "n" then
                        accuracy = fullaccuracy
                        accuracytwo = fullaccuracytwo
                    elseif vision == "y" then
                        accuracy = fullaccuracy
                        accuracy = accuracy - 4
                        accuracytwo = fullaccuracytwo
                        accuracytwo = accuracytwo - 4
                    end
                end
            end
            if cold == "y" then
                amount = math.random(1, 10)
                if amount == 10 then
                    print("You got an infection from your cold.")
                    io.read()
                    cold = "y"
                end
            end
            if dogs >= 1 then
                catch = math.random(1, 10)
                if catch == 1 then
                    catch = math.random(1, 3)
                    if catch == 1 then
                        print("Your dog caught someone.")
                        print("You search his pockets.")
                        io.read()
                        dropamount = math.random(1, 5)
                        clothedrop = "y"
                        repeat
                            enemydrop()
                            dropamount = dropamount - 1
                            clothedrop = "n"
                        until dropamount == 0
                    elseif catch == 2 then
                        print("Your dog caught a zombie.")
                        print("You search its pockets.")
                        io.read()
                        dropamount = math.random(1, 4)
                        clothedrop = "y"
                        repeat
                            zombiedrop()
                            dropamount = dropamount - 1
                            clothedrop = "n"
                        until dropamount == 0
                    elseif catch == 3 then
                        if spawn == 3 then
                            dogcow = "y"
                            cowitem()
                            dogcow = "n"
                        end
                    end
                end
            end
            if set == "y" then
                catch = math.random(1, 10)
                if catch == 1 then
                    catch = math.random(1, 3)
                    if catch == 1 then
                        print("You caught someone in your trap.")
                        io.read()
                        dropamount = math.random(1, 3)
                        clothedrop = "y"
                        repeat
                            enemydrop()
                            dropamount = dropamount - 1
                            clothedrop = "n"
                        until dropamount == 0
                        set = "n"
                    elseif catch == 2 then
                        print("You caught a zombie in your trap.")
                        io.read()
                        dropamount = math.random(1, 3)
                        clothedrop = "y"
                        repeat
                            zombiedrop()
                            dropamount = dropamount - 1
                            clothedrop = "n"
                        until dropamount == 0
                        set = "n"
                    elseif catch == 3 then
                        if spawn == 3 then
                            trapcow = "y"
                            cowitem()
                            trapcow = "n"
                            set = "n"
                        elseif spawn ~= 3 then
                            set = "y"
                        end
                    end
                    if set == "n" then
                        print("Do you want back your bear trap?")
                        repeat
                            print("Pickup?")
                            pickup = io.read()
                            if pickup == "y" then
                                if beartrap == "n" then
                                    if space >= 2 then
                                        beartrap = "y"
                                        space = space - 2
                                        print("You picked it up.")
                                        io.read()
                                        break
                                    elseif space < 2 then
                                        print("Not enough room.")
                                        io.read()
                                        dropped()
                                        used()
                                    end
                                elseif beartrap == "y" then
                                    print("Already owned.")
                                    io.read()
                                    break
                                end
                            elseif pickup ~= "y" then
                                print("You left it there.")
                                io.read()
                            end
                        until pickup ~= "y"
                    end
                end
            end
            if tired > 1000 then
                tired = 1000
            end
            water = water - math.random(10)
            food = food - math.random(5)
            if pain > 10000 then
                pain = 10000
            end
            if mygun == "Hatchet" then
                myammo = 99999
            end
            temp = math.random(1, 15)
            if temp == 1 then
                temperature = temperature + math.random(1, 2)
                if temperature > 50 then
                    temperature = 50
                end
                if temperature >= 33 then
                    if cold == "y" then
                        print("You lost your cold.")
                        io.read()
                        cold = "n"
                    end
                end
            end
            if temperature < 33 then
                if cold == "n" then
                    cold = "y"
                    print("You caught a cold.")
                    io.read()
                    pain = pain + math.random(1000, 2000)
                elseif cold == "y" then
                    pain = pain + math.random(200, 700)
                end
            end
            if broken == "y" then
                tired = tired + math.random(50, 100)
            end
            events = events + 1
            if events == objective then
                print("Congrats! You have survived " .. objective .. " events!")
                io.read()
                objective = objective + 50
            end
            if events == 50 then
                print("For reaching 50 events, you will now be rewarded with a cheatcode.")
                print("You will be rewarded more codes the further you get.")
                print('At the welcome screen, type "@cheat" to open the cheat input screen.')
                print('Once there, type "' .. password .. '" to open the cheat screen.')
                print("Be warned, some cheats will be changed when you choose any gamemode but hard.")
                io.read()
            elseif events == 60 then
                print('While on the cheat screen (after the "Welcome",) type "clothes".')
                print('You can then type "shirt" or "pants" to change their color.')
                io.read()
            elseif events == 65 then
                print('While on the cheat screen, type "pain".')
                print("You can then change the amount of pain you have to start with.")
                io.read()
            elseif events == 70 then
                print('While on the cheat screen, type "temperature".')
                print("You can then change the temperature of your body.")
                print("This is in celcius with 42 being the normal body temperature.")
                io.read()
            elseif events == 75 then
                print('While on the cheat screen, type "symbol".')
                print("You can then change the symbol by your name that comes after using cheats.")
                io.read()
            elseif events == 80 then
                print('While on the cheat screen, type "exhaustion".')
                print("You can then change your exhaustion.")
                io.read()
            end
             ---------------------------------------------------------------------------------------------------------------
            if infection == "y" then
                if health > 6000 then
                    health = health - math.random(300, 1000)
                end
            end
            if doghealth < 10000 then
                doghealth = doghealth + math.random(0, 300)
                if doghealth > 10000 then
                    doghealth = 10000
                end
            end
            if health < fullhealth then
                health = health + math.random(0, 500)
                if health > fullhealth then
                    health = fullhealth
                end
            end
            optionline()
            if autostat == "y" then
                turn = turn - 1
                if turn < 1 then
                    stats()
                    io.read()
                    turn = turns
                end
            end
            if bleeding == "y" then
                if health > 2000 then
                    health = health - math.random(100, 1000)
                end
            end
             ------------------------------------------------godmode
            if tentplaced == "y" then
                tenttravel = tenttravel + math.random(5, 10)
            end
            if bleeding == "y" then
                amount = math.random(1, 20)
                if amount == 1 then
                    bleeding = "n"
                    print("You have stopped bleeding.")
                    io.read()
                end
            end
            if light == "dark" then
                if vision == "n" then
                    accuracy = fullaccuracy
                    accuracy = accuracy - 4
                elseif vision == "y" then
                    accuracy = fullaccuracy
                end
            elseif light == "light" then
                if vision == "n" then
                    accuracy = fullaccuracy
                elseif vision == "y" then
                    accuracy = fullaccuracy
                    accuracy = accuracy - 4
                end
            end
            if tired > math.random(1000, 1400) then
                print("You blacked out.")
                io.read()
                days = days + math.random(1, 3)
                tired = 0
                food = food - math.random(50, 100)
                water = water - math.random(100, 200)
                temperature = temperature - math.random(0, 5)
                rain = math.random(1, 3)
                if rain == 1 then
                    print("It rained.")
                    io.read()
                    temperature = temperature - math.random(3, 5)
                end
            end
            if invincible == "y" then
                health = 1000000
                water = 1000000
                food = 1000000
                myammo = 1000000
                damage = 1000000
                tired = 0
            end
             ----------------------------------eating
            if dogs >= 1 then
                if doghealth < 1 then
                    print("Your dog has died.")
                    io.read()
                    dogs = dogs - 1
                    doghealth = 10000
                    damage = damage - 1000
                    if dogs < 1 then
                        dogname = ""
                        dogfeed = 3
                    end
                    skindog()
                end
            end
            if dogs >= 1 then
                dogfood = dogfood - math.random(20, 50)
                dogwater = dogwater - math.random(20, 50)
                if dogfood < 1 then
                    if steak >= dogs then
                        steak = steak - dogs
                        dogfood = 0
                        dogfood = dogfood + math.random(300, 500)
                        doghealth = doghealth + 800
                        print("Your dog(s) ate some food")
                        io.read()
                        dogfeed = dogfeed + 2
                        if steak < 1 then
                            space = space + 1
                        end
                    elseif beans >= dogs then
                        beans = beans - dogs
                        dogfood = 0
                        dogfood = dogfood + math.random(100, 200)
                        doghealth = doghealth + 200
                        print("Your dog(s) ate some food")
                        io.read()
                        dogfeed = dogfeed + 1
                        if beans < 1 then
                            space = space + 1
                        end
                    else
                        print("Your dog(s) starved to death.")
                        io.read()
                        damage = damage - (1000 * dogs)
                        dogs = 0
                        dogfeed = 3
                        doghealth = 0
                        dogfood = 0
                        dogwater = 0
                        skindog()
                    end
                 --end of eat
                end
                 --end of food
                if dogwater < 1 then
                    if filled == "y" then
                        filled = "n"
                        dogwater = 0
                        dogwater = dogwater + math.random(300, 500)
                        print("Your dog(s) drank some water.")
                        io.read()
                    elseif filled == "n" then
                        print("Your dog(s) died of thirst.")
                        io.read()
                        damage = damage - (1000 * dogs)
                        dogs = 0
                        doghealth = 0
                        dogfood = 0
                        dogfeed = 3
                        dogwater = 0
                        skindog()
                    end
                 --end of eat
                end
             --end of food
            end
            if food < 1 then
                if steak >= 1 then
                    steak = steak - 1
                    food = 0
                    food = food + math.random(300, 500)
                    health = health + 800
                    print("You ate some food")
                    io.read()
                    if steak < 1 then
                        space = space + 1
                    end
                elseif beans >= 1 then
                    beans = beans - 1
                    food = 0
                    food = food + math.random(100, 200)
                    health = health + 200
                    print("You ate some food")
                    io.read()
                    if beans < 1 then
                        space = space + 1
                    end
                else
                    print("You starved to death.")
                    health = 0
                    starve = "y"
                    break
                end
             --end of eat
            end
             --end of food
            if water < 1 then
                if filled == "y" then
                    filled = "n"
                    water = 0
                    water = water + math.random(300, 500)
                    print("You drank some water.")
                    io.read()
                elseif filled == "n" then
                    if pop >= 1 then
                        print("You drank some pop.")
                        io.read()
                        water = 0
                        water = water + math.random(100, 200)
                        pop = pop - 1
                        if pop < 1 then
                            space = space + 1
                        end
                    elseif pop < 1 then
                        print("You died of thirst.")
                        health = 0
                        thirst = "y"
                        break
                    end
                end
             --end of eat
            end
         --end of food
        until health <= 0
         --repeat event
        if thirst ~= "y" then -----------------------------epi-pen
            if starve ~= "y" then
                if health <= 0 then
                    if morphine >= 1 then
                        revive = math.random(1, 3)
                        if revive == 1 then
                            morphine = morphine - 1
                            health = health + math.random(500, 5000)
                            print("A player used an epi-pen on you.")
                            print("You have " .. health .. " health.")
                            io.read()
                            if morphine < 1 then
                                space = space + 1
                            end
                            if health < fullhealth - 3000 then
                                if bloodbags >= 1 then --bloodbags
                                    print("The player has given you a blood transfusion.")
                                    io.read()
                                    bloodbags = bloodbags - 1
                                    if bloodbags < 1 then
                                        space = space + 1
                                    end
                                    health = fullhealth
                                end
                            end
                        end
                    end
                end
            end
        end
        if health <= 0 then
            print("You are dead.")
            io.read()
            break
        end
        forever = "forever"
    until forever == "never"
    print("You survived " .. events .. " events.")
    io.read()
    stats()
    io.read()
    print("Play again?")
    playagain = io.read()
until playagain ~= "y"
print("CREDITS")
print("Zombie Survival, Lua Edition by Reece Mathews.")
io.read()
print("Programming by Reece Mathews.")
io.read()
print("Co-Creator: Graham Mathews")
io.read()
print("Made and Developed in the U.S.A")
io.read()
print("Made using the game programming software: Lua")
io.read()
print("THE END")
io.read()
