SELECT DISTINCT fst.model, snd.model, fst.speed, fst.ram
FROM PC fst, PC snd
WHERE 
    fst.speed=snd.speed AND 
    fst.ram=snd.ram AND 
    fst.model>snd.model;