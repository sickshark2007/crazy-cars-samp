#include <a_samp>

new bool:inAnimal[MAX_PLAYERS], Animal[MAX_PLAYERS];

//594 = vaso

CMD:shark(playerid)
{
    if(inAnimal[playerid])return 0;
    new Float:x, Float:y, Float:z, veh;
    GetPlayerPos(playerid, Float:x, Float:y, Float:z);
    veh = CreateVehicle(539, Float:x, Float:y, Float:z, random(360), random(5), random(5), -1, 0);
    PutPlayerInVehicle(playerid, veh, 0);
    LinkVehicleToInterior(veh, 1);
    Animal[playerid] = CreateObject(1608, 0, 0, 0, 0, 0, 0, 96);
    AttachObjectToVehicle(Animal[playerid], veh, 0,0,0,0,0,0);
    inAnimal[playerid] = true;
    return 1;
}


CMD:cow(playerid)
{
    if(inAnimal[playerid])return 0;
    new Float:x, Float:y, Float:z, veh;
    GetPlayerPos(playerid, Float:x, Float:y, Float:z);
    veh = CreateVehicle(594, Float:x, Float:y, Float:z, random(360), random(5), random(5), -1, 0);
    PutPlayerInVehicle(playerid, veh, 0);
    LinkVehicleToInterior(veh, 1);
    Animal[playerid] = CreateObject(19833, 0, 0, 0, 0, 0, 0, 96);
    AttachObjectToVehicle(Animal[playerid], veh, 0,0,0,0,0,0+180);
    inAnimal[playerid] = true;
    return 1;
}

CMD:turtle(playerid)
{
    if(inAnimal[playerid])return 0;
    new Float:x, Float:y, Float:z, veh;
    GetPlayerPos(playerid, Float:x, Float:y, Float:z);
    veh = CreateVehicle(539, Float:x, Float:y, Float:z, random(360), random(5), random(5), -1, 0);
    PutPlayerInVehicle(playerid, veh, 0);
    LinkVehicleToInterior(veh, 1);
    Animal[playerid] = CreateObject(1609, 0, 0, 0, 0, 0, 0, 96);
    AttachObjectToVehicle(Animal[playerid], veh, 0,0,0,0,0,0);
    inAnimal[playerid] = true;
    return 1;
}

CMD:deer(playerid)
{
    if(inAnimal[playerid])return 0;
    new Float:x, Float:y, Float:z, veh;
    GetPlayerPos(playerid, Float:x, Float:y, Float:z);
    veh = CreateVehicle(594, Float:x, Float:y, Float:z, random(360), random(5), random(5), -1, 0);
    PutPlayerInVehicle(playerid, veh, 0);
    LinkVehicleToInterior(veh, 1);
    Animal[playerid] = CreateObject(19315, 0, 0, 0, 0, 0, 0, 96);
    AttachObjectToVehicle(Animal[playerid], veh, 0,0,0,0,0,0+90);
    inAnimal[playerid] = true;
    return 1;
}

CMD:rockingchair(playerid)
{
    if(inAnimal[playerid])return 0;
    new Float:x, Float:y, Float:z, veh;
    GetPlayerPos(playerid, Float:x, Float:y, Float:z);
    veh = CreateVehicle(594, Float:x, Float:y, Float:z, random(360), random(5), random(5), -1, 0);
    PutPlayerInVehicle(playerid, veh, 0);
    LinkVehicleToInterior(veh, 1);
    Animal[playerid] = CreateObject(11734, 0, 0, 0, 0, 0, 0, 96);
    AttachObjectToVehicle(Animal[playerid], veh, 0,0,0,0,0,0);
    inAnimal[playerid] = true;
    return 1;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys == 16 && inAnimal[playerid]){
        DestroyObject(Animal[playerid]);
        DestroyVehicle(GetPlayerVehicleID(playerid));
        RemovePlayerFromVehicle(playerid);
        inAnimal[playerid] = false;
    }
    return 1;
}
