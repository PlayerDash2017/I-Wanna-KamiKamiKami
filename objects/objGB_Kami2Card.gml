#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!config_get("titlecard")){
    instance_destroy();
    exit;
}

image_speed=0;
speed=3;
direction=270;
alarm[0]=51;
alarm[2]=1;
A=0;

self.x=view_xview[0]+800;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
speed=0;
alarm[1]=60;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity=0.1;
gravity_direction=90;
A=1;
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop("gb_kami2title");
sound_play("gb_kami2title");
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if place_meeting(x,y,Player)
{if image_alpha>0.2{image_alpha-=0.1;}}

if !place_meeting(x,y,Player)
{{if image_alpha<1{image_alpha+=0.1;}}}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
self.x=view_xview[0]+800;
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if A=1{instance_destroy();}
