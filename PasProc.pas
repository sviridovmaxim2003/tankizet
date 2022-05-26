

unit PasProc;

interface
uses
  GraphABC,ABCObjects;



Type
PasPlayer = record
x,y,s,r:integer;
Frames:integer;
sprite: pictureABC;

public
  procedure Load_Frames();
  procedure Damage();
  function Gravitation():boolean;
  function check_block():byte;
end;


var
dl,dr,du,dd,ds:boolean;



procedure KeyDown(Key: integer);
procedure KeyUp(Key: integer);
function Key_Move(player:PasPlayer):PasPlayer;
procedure Phizics();
procedure Bot_Cross();
procedure Bot_Cross_first();
procedure Destroy();



implementation
uses Main;

 

procedure PasPlayer.Load_Frames();
begin

end;



procedure PasPlayer.Damage();
begin

end;



function PasPlayer.check_block():byte;
begin

end;



function PasPlayer.Gravitation():boolean;
begin

end;



procedure KeyDown(Key: integer);
  
   begin
     case Key of
       VK_Left: dl:=true; 
       VK_Right: dr:=true;  
       VK_Down : dd:=true;  
       VK_UP :  du:=true; 
       VK_Space : ds:=true;       
     end;
end;



procedure KeyUp(Key: integer);
   begin
     case Key of
       VK_Left: dl:=false; 
       VK_Right: dr:=false;  
       VK_Down : dd:=false;  
       VK_UP :  du:=false; 
       VK_Space : ds:=false;
     end;

end;



function Key_Move(player:PasPlayer):PasPlayer;
var
  P:PasPlayer;
begin
  P:=player;
    if dl=true then begin  P.X:=player.X-2; end;
    if dr=true then begin  P.X:=player.X+2; end;
    if dd=true then begin  P.Y:=player.Y+2; end;
    if du=true then begin  P.Y:=player.Y-2; end;
    if ds=true then
    begin
   
      
    end;
  result:=p;
end;

 

procedure Phizics();
begin
  Gamer:=Key_Move(Gamer);
 if Gamer.x<40 then Gamer.x:=40;
 if Gamer.x>195 then Gamer.x:=195;
 if Gamer.y<10 then Gamer.y:=10;
 if Gamer.y>400 then Gamer.y:=400; 
  Bot_Cross(); 
   Destroy(); 
end;



procedure Bot_Cross();
var
  I,B,C:integer;
begin
randomize;  
  for I:=0 to 5 do
    begin
      B:=0;
      C:=0;
      If Bot[I].y>480 then 
        begin          
          C:=random(100);
          B:=random(4);
          Bot[I].x:=40+(B*50);
          Bot[I].y:=-80-C;          
        end;
      Bot[I].y:=Bot[I].y+3;
    end;
end;





procedure Bot_Cross_first();
var
  I,B,C:integer;
begin
randomize;  
  for I:=0 to 5 do
    begin
      B:=0;
      C:=0;
        begin          
          C:=random(800);
          B:=random(4);
          Bot[I].x:=40+(B*50);
          Bot[I].y:=-80-C;          
        end;
    end;
end;



procedure Destroy();
var I:integer;
begin
for I:=0 to 5 do begin
  if (Gamer.x<Bot[I].x+35) and (Gamer.x>Bot[I].x-35) and (Gamer.y<Bot[I].y+65) and (Gamer.y>Bot[I].y-65) and (CarFly=false) then begin//////если коллизия есть то совершаем сброс статистики
     font.Size:=30;
     font.Color:=color.Red;
     Bot_Cross_first();     
     Time.Stop;
     textout(100,200,'ПІДБИТ!!!');       
     sleep(1000);
     Gamer.x:=round(window.Width/2);
     Gamer.y:=window.Height-80;
     score:=0;
   
     score2:=0;
     window.Clear;
     Time.Start;  
  end;
  end;
  
end;

end.