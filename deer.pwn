new bool:inAnimal[MAX_PLAYERS], Animal[MAX_PLAYERS];

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
