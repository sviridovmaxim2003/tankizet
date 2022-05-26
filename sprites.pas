unit sprites;

interface
uses
  GraphABC,ABCObjects;




procedure Sprite(x,y,rot,sx,sy:integer;  texture: pictureABC);
function Sprite_Load(put:string):pictureABC;




implementation
uses resurce,main;



procedure Sprite(x,y,rot,sx,sy:integer;  texture: PictureABC);
begin
  texture.Top:=Y;
  texture.Left:=X;
  texture.Height:=sy;
  texture.Width:=sx;
end;

 

function Sprite_Load(put:string):pictureABC;
var
  p:picture;
  pb:pictureABC;  
begin
    p:=Picture.Create(put);
    p.Load(put);
    pb:=PictureABC.Create(-200,-200,p);
    result:=pb;
end;

 

end.