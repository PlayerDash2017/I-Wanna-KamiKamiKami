#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (place_meeting(x,y,objRandDestroyer)){
    instance_destroy();
    exit;
}

Back = bDefaultTiles;
xTile = 1;
yTile = 3;
xSep = 0;
ySep = 0;
xOffset = 0;
yOffset = 0;

switch (room){
    //Stage 1
    case rConquerBlowGame:
        Back = bDefaultTiles;
        xTile = 0;
        yTile = 0;
    break;
    case rScoreAttack:
        Back = bTilesScoreAttack;
        xTile = 0;
        yTile = 0;
    break;
    case rEnjoyTheGame:
        Back = bDefaultTiles;
        xTile = 0;
        yTile = 1;
    break;
    case rMiddle:
        Back = bTilesStage1;
        xTile = 0;
        yTile = 1;
    break;
    case rFangame:
        Back = bDefaultTiles;
        xTile = 0;
        yTile = 0;
    break;

    //Stage 2
    case rWinterVacation:
        Back = bTilesStage2;
        xTile = 0;
        yTile = 1;
    break;

    //Stgage 3
    case rGreeeen:
        Back = bTilesColor;
        xTile = 2;
        yTile = 5;
    break;
    case rRunTheTerminal: case rFinalBossRTT:
        Back = bTilesStage3;
        xTile = 1;
        yTile = 0;
    break;
    case rMagicGirl:
        Back = bTilesColor;
        xTile = 0;
        yTile = 7;
    break;
    case rGreenMoon:
        Back = bTilesStage3;
        xTile = 0;
        yTile = 0;
    break;
    case rGuy:
        Back = bDefaultTiles;
        xTile = 0;
        yTile = 0;
    break;
    case rHeavenTrap2:
        Back = bDefaultTiles;
        xTile = 0;
        yTile = 0;
    break;

    //Stage 4
    case rCoolGuy:
        Back = bTilesStage4;
        xTile = 3;
        yTile = 0;
    break;
    case rSkyclad:
        Back = bTilesStage4;
        xTile = 1;
        yTile = 0;
    break;
    case rBucho:
        Back = bTilesStage4;
        xTile = 0;
        yTile = 1;
    break;
    case rKillTheGuy:
        Back = bTilesStage4;
        xTile = 2;
        yTile = 0;
    break;
    case rPlayWHG:
        Back = bTilesWHG;
        xTile = 3;
        yTile = 3;
    break;
    case rGB:
        xTile = 1;
        yTile = 1;
    break;

    //Stage 5
    case rSadist:
        Back = bTilesStage5;
        xTile = 1;
        yTile = 1;
    break;
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_alpha(image_alpha);
for (i = 0; i < image_xscale; i += 1){
    for (j = 0; j < image_yscale; j += 1)
        draw_background_part(Back,xTile*32,yTile*32,32,32,x+(32*i),y+(32*j));
}
draw_set_alpha(1);
