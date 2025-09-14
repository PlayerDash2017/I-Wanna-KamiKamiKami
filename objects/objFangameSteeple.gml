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

H = instance_create(x,y,objFangameTrigger);
H.IdSteeple = id;
H.image_xscale = 9;

V = instance_create(x,y,objFangameTrigger);
V.IdSteeple = id;
V.image_yscale = 9;
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy_id(H);
instance_destroy_id(V);
