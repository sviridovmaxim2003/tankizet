

uses 
  GraphABC, ABCObjects, sprites, Timers, resurce, PasProc,ABCSprites;

var
  car,carf,car2,car3,car4,car5,car6,car7, road: pictureABC;  //загружаю текстурки
  Time, KeyTimer: timer;     
  fony,score,score2: integer;  //счетчики 
  Gamer: PasPlayer;         //игрок
  CarFly:boolean;        
  Bot:array[0..5] of PasPlayer;   

procedure DrawScene();
var
  I:Integer;
begin
  LockDrawingObjects;   //вывод текстур 
  sprite(0, -2+fony-window.Height, 0, round(window.Width*1.5), window.Height*2, road);  //дорога     
  sprite(Gamer.x, Gamer.y, 0, 60, 70, Gamer.sprite);  //игрок
    for I:=0 to 5 do begin 
      sprite(Bot[I].x, Bot[I].y, 0, 60, 70, Bot[I].sprite);   //мобы
   end; 

 RedrawObjects; 
   
//текст   
 font.Color:=color.Black;
 font.Size:=14; 
 textout(300,10,'Окуляри:'); 
 textout(310,40,inttostr(score)); 
 font.Size:=30;    
  fony:=fony+2;   
    if fony >window.Height then fony:=0;
  
  score:=score+1;    //счетчик расстояния
  score2:=Score2+1;  
  if Score2>=230 then
  begin
    score2:=0;
  end;
  

 
  
end;

begin
  res_Load;
  DrawScene;
  Bot_Cross_first();
  
  Time := Timer.Create(50, DrawScene);
  Time.Start; 
  
  KeyTimer := Timer.Create(20, Phizics);
  KeyTimer.Start;
end.