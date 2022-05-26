unit resurce;

interface
uses
  GraphABC,ABCObjects,sprites,PasProc;





procedure Res_Load();



implementation
uses Main;


procedure Res_Load();
var
 I,B:integer;
begin
    window.Caption:='OZOVprod';
    window.Width:=400;
    window.Height:=480;
    window.IsFixedSize:=true;
    

    road:=Sprite_load('data\road.png');
    car:=Sprite_load('data\car 1.png');
   
    car2:=Sprite_load('data\car 2.png'); 
    car3:=Sprite_load('data\car 3.png');
    car4:=Sprite_load('data\car 4.png');     
    car5:=Sprite_load('data\car 5.png');
    car6:=Sprite_load('data\car 6.png');     
    car7:=Sprite_load('data\car 7.png');    
    carf:=Sprite_load('data\car 1f.png');     
    
    
    Gamer.r:=0;
    Gamer.s:=0;
    Gamer.x:=round(window.Width/2);
    Gamer.y:=window.Height-80;
    Gamer.sprite:=car;
    
    for I:=0 to 5 do 
    begin
      B:=0;
      Bot[I].r:=0;
      Bot[I].s:=0;
      randomize;
      B:=random(4);        
      Bot[I].x:=40+(B*40);  
      randomize;
      B:=random(4);       
      Bot[I].y:=-B*20;     
      

    end;
      Bot[0].sprite:=car2;    
      Bot[1].sprite:=car3;   
      Bot[2].sprite:=car4;    
      Bot[3].sprite:=car5;        
      Bot[4].sprite:=car6;    
      Bot[5].sprite:=car7;        
      
      
    OnKeyDown:=KeyDown;
    OnKeyUp:=KeyUp;
end;

end.