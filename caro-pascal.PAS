Program tomau;
//C:\FPC\units\i386-win32\graph\graph.ppu
uses crt,graph,mouse{,windows,wincrt,dos};
const
  kto:fillpatternType=($11,$22,$44,$88,$10,$20,$40,$80);
var gd,gm,s,m,n,i,x,y,a,b,d,k,dem,x1,y1:integer; ch:char;
    KT:array[-251..10001,-251..10001] of integer;
    KTr:boolean;
procedure phaohoa;
begin

end;
procedure inketqua;
begin
k:=KT[a,b];


       if k=1 then      begin
                        setcolor(green);
                        rectangle(((m+1)*40 div 2),25,180+((m+1)*40 div 2),43);
                        outtextxy(((m+1)*40 div 2)+5,30,'Chuc mung ban B thang');
                        delay(300);
                        for i:=1 to 5 do
                        begin
                        setcolor(black);
                        outtextxy(((m+1)*40 div 2)+5,30,'Chuc mung ban B thang');
                        delay(300);
                        setcolor(green);
                        outtextxy(((m+1)*40 div 2)+5,30,'Chuc mung ban B thang');
                        delay(300);
                        end;
                        KTr:=false;
                        end
         else begin
              setcolor(lightred);
              rectangle(((m+1)*40 div 2),25,180+((m+1)*40 div 2),43);
              outtextxy(((m+1)*40 div 2)+5,30,'Chuc mung ban A thang');
              delay(300);
              for i:=1 to 5 do
                        begin
                        setcolor(black);
                        outtextxy(((m+1)*40 div 2)+5,30,'Chuc mung ban A thang');
                        delay(300);
                        setcolor(lightred);
                        outtextxy(((m+1)*40 div 2)+5,30,'Chuc mung ban A thang');
                        delay(300);
                        end;
              KTr:=false;
              end;
      // delay(2000);
       exit;
end;
procedure kiemtra;
begin
k:=0;    //hang ngang
if ((KT[a,b]=KT[a-50,b]) and (KT[a,b]=KT[a-100,b]) and (KT[a,b]=KT[a-150,b]) and (KT[a,b]=KT[a-200,b]) and (KT[a,b]<>0)) and ((KT[a-250,b]=0) or (KT[a+50,b]=0)) then
        begin setcolor(yellow);line(a-200,b,a,b);delay(000);inketqua;end else
if ((KT[a,b]=KT[a-50,b]) and (KT[a,b]=KT[a-100,b]) and (KT[a,b]=KT[a-150,b])and (KT[a,b]=KT[a+50,b]) and (KT[a,b]<>0)) and ((KT[a-200,b]=0) or (KT[a+100,b]=0))then
        begin setcolor(yellow);line(a-150,b,a+50,b);delay(000);inketqua;end else
if ((KT[a,b]=KT[a+50,b]) and (KT[a,b]=KT[a+100,b])and (KT[a,b]=KT[a-50,b]) and (KT[a,b]=KT[a-100,b]) and (KT[a,b]<>0)) and ((KT[a-150,b]=0) or (KT[a+150,b]=0)) then
        begin setcolor(yellow);line(a-100,b,a+100,b);delay(000);inketqua;end else
if ((KT[a,b]=KT[a+50,b]) and (KT[a,b]=KT[a+100,b])and (KT[a,b]=KT[a-50,b]) and (KT[a,b]=KT[a+150,b]) and (KT[a,b]<>0)) and ((KT[a-100,b]=0) or (KT[a+200,b]=0)) then
        begin setcolor(yellow);line(a-50,b,a+150,b);delay(000);inketqua;end else
if ((KT[a,b]=KT[a+50,b]) and (KT[a,b]=KT[a+100,b])and (KT[a,b]=KT[a+150,b]) and (KT[a,b]=KT[a+200,b]) and (KT[a,b]<>0)) and ((KT[a-50,b]=0) or (KT[a+250,b]=0))then
        begin setcolor(yellow);line(a,b,a+200,b);delay(000);inketqua;end else
         // hang doc
if ((KT[a,b]=KT[a,b-50]) and (KT[a,b]=KT[a,b-100]) and (KT[a,b]=KT[a,b-150]) and (KT[a,b]=KT[a,b-200]) and (KT[a,b]<>0)) and ((KT[a,b-250]=0) or (KT[a,b+50]=0)) then
        begin setcolor(yellow);line(a,b,a,b-200);delay(000);inketqua;end else
if ((KT[a,b]=KT[a,b-50]) and (KT[a,b]=KT[a,b-100]) and (KT[a,b]=KT[a,b-150]) and (KT[a,b]=KT[a,b+50]) and (KT[a,b]<>0)) and ((KT[a,b-200]=0) or (KT[a,b+100]=0))then
        begin setcolor(yellow);line(a,b-150,a,b+50);delay(000);inketqua;end else
if ((KT[a,b]=KT[a,b-50]) and (KT[a,b]=KT[a,b-100])and (KT[a,b]=KT[a,b+50]) and (KT[a,b]=KT[a,b+100]) and (KT[a,b]<>0)) and ((KT[a,b-150]=0) or (KT[a,b+150]=0))then
        begin setcolor(yellow);line(a,b-100,a,b+100);delay(000);inketqua;end else
if ((KT[a,b]=KT[a,b-50]) and (KT[a,b]=KT[a,b+150])and (KT[a,b]=KT[a,b+50]) and (KT[a,b]=KT[a,b+100]) and (KT[a,b]<>0)) and ((KT[a,b-100]=0) or (KT[a,b+200]=0))then
        begin setcolor(yellow);line(a,b-50,a,b+150);delay(000);inketqua;end else
if ((KT[a,b]=KT[a,b+200]) and (KT[a,b]=KT[a,b+150])and (KT[a,b]=KT[a,b+50]) and (KT[a,b]=KT[a,b+100]) and (KT[a,b]<>0)) and ((KT[a,b-50]=0) or (KT[a,b+250]=0))then
        begin setcolor(yellow);line(a,b,a,b+200);delay(000);inketqua;end else
        // hang cheo thuan
if ((KT[a,b]=KT[a-50,b-50]) and (KT[a,b]=KT[a-100,b-100]) and (KT[a,b]=KT[a-150,b-150]) and (KT[a,b]=KT[a-200,b-200]) and (KT[a,b]<>0)) and ((KT[a-250,b-250]=0) or (KT[a+50,b+50]=0)) then
        begin setcolor(yellow);line(a-200,b-200,a,b);delay(000);inketqua;end else
if ((KT[a,b]=KT[a-50,b-50]) and (KT[a,b]=KT[a-100,b-100]) and (KT[a,b]=KT[a-150,b-150]) and (KT[a,b]=KT[a+50,b+50]) and (KT[a,b]<>0)) and ((KT[a-200,b-200]=0) or (KT[a+100,b+100]=0))then
        begin setcolor(yellow);line(a-150,b-150,a+50,b+50);delay(000);inketqua;end else
if ((KT[a,b]=KT[a-50,b-50]) and (KT[a,b]=KT[a-100,b-100])and (KT[a,b]=KT[a+50,b+50]) and (KT[a,b]=KT[a+100,b+100]) and (KT[a,b]<>0)) and ((KT[a-150,b-150]=0) or (KT[a+150,b+150]=0))then
        begin setcolor(yellow);line(a-100,b-100,a+100,b+100);delay(000);inketqua;end else
if ((KT[a,b]=KT[a-50,b-50]) and (KT[a,b]=KT[a+150,b+150])and (KT[a,b]=KT[a+50,b+50]) and (KT[a,b]=KT[a+100,b+100]) and (KT[a,b]<>0)) and ((KT[a-100,b-100]=0) or (KT[a+200,b+200]=0))then
        begin setcolor(yellow);line(a-50,b-50,a+150,b+150);delay(000);inketqua;end else
if ((KT[a,b]=KT[a+150,b+150]) and (KT[a,b]=KT[a+200,b+200])and (KT[a,b]=KT[a+50,b+50]) and (KT[a,b]=KT[a+100,b+100]) and (KT[a,b]<>0)) and ((KT[a-50,b-50]=0) or (KT[a+250,b+250]=0))then
        begin setcolor(yellow);line(a,b,a+200,b+200);delay(000);inketqua;end else
        // hang cheo nghich
if ((KT[a,b]=KT[a-50,b+50]) and (KT[a,b]=KT[a-100,b+100]) and (KT[a,b]=KT[a-150,b+150]) and (KT[a,b]=KT[a-200,b+200]) and (KT[a,b]<>0)) and ((KT[a-250,b+250]=0) or (KT[a+50,b-50]=0)) then
        begin setcolor(yellow);line(a-200,b+200,a,b);delay(00);inketqua;end else
if ((KT[a,b]=KT[a-100,b+100]) and (KT[a,b]=KT[a-150,b+150]) and(KT[a,b]=KT[a-50,b+50]) and (KT[a,b]=KT[a+50,b-50]) and (KT[a,b]<>0)) and ((KT[a-200,b+200]=0) or (KT[a+100,b-100]=0))then
        begin setcolor(yellow);line(a-150,b+150,a+50,b-50);delay(000);inketqua;end else
if ((KT[a,b]=KT[a-50,b+50]) and (KT[a,b]=KT[a-100,b+100]) and(KT[a,b]=KT[a+50,b-50]) and (KT[a,b]=KT[a+100,b-100]) and (KT[a,b]<>0)) and ((KT[a-150,b+150]=0) or (KT[a+150,b-150]=0))then
        begin setcolor(yellow);line(a-100,b+100,a+100,b-100);delay(000);inketqua;end else
if ((KT[a,b]=KT[a-50,b+50]) and (KT[a,b]=KT[a+150,b-150]) and (KT[a,b]=KT[a+50,b-50]) and (KT[a,b]=KT[a+100,b-100]) and (KT[a,b]<>0)) and ((KT[a-100,b+100]=0) or (KT[a+200,b-200]=0))then
        begin setcolor(yellow);line(a-50,b+50,a+150,b-150);delay(000);inketqua;end else
if ((KT[a,b]=KT[a+200,b-200]) and (KT[a,b]=KT[a+150,b-150]) and (KT[a,b]=KT[a+50,b-50]) and (KT[a,b]=KT[a+100,b-100]) and (KT[a,b]<>0)) and ((KT[a-50,b+50]=0) or (KT[a+250,b-250]=0))then
        begin setcolor(yellow);line(a,b,a+200,b-200);delay(000);inketqua;end
end;
Begin
  clrscr;
 // initMouse;
  KTr:=true;
  Gd:=detect;
  InitGraph(gd,gm,'C:\bP\BGI');
 // x1:=getmousex;
 // y1:=getmousey;
 // circle(x1,y1,100);
  fillchar(KT,sizeof(KT),0);
  Write('Nhap kich thuoc (NxM)(max:12x20)(min:5x5):');read(n,m);
  for i:=1 to n+1 do begin s:=s+50;line(50,s,50*(m+1),s);end;
  s:=0;
  for i:=1 to m+1 do begin s:=s+50;line(s,50,s,50*(n+1));end;
  line(50,50,50,50);
  outtextxy(10,676,'Nhan ESC + ENTER de thoat');
  outtextxy(1117,70,'HUONG DAN:');
  outtextxy(1117,83,'Nhan cac phim di chuyen');
  outtextxy(1117,96,'+ Enter de danh');
  Outtextxy(1117,52,'-Ban A danh truoc-');
  setcolor(green);
  outtextxy(1146,676,'Ton That Hai - 11 Tin');


  write('Nhap toa do cua ban danh truoc:(x,y)=');read(x,y);
  a:=50*y+25;
  b:=50*x+25;
  setcolor(lightred);
  circle(a,b,20);KT[a,b]:=2;//writeln('KT[',a,',',b,']=',KT[a,b]);
  inc(dem);
  clrscr;
  writeln('Nhan cac phim di chuyen + Enter de danh!');
  writeln('Luu y: A la nguoi danh truoc! (A hinh tron)');
  d:=0;
  Repeat
  ch:=readkey;
  if ch=#75 then a:=a-50
   else if ch=#77 then a:=a+50
    else if ch=#72 then b:=b-50
     else if ch=#80 then b:=b+50;
  if (ch=#13) and (d mod 2=1) and (KT[a,b]=0) and (a>=50) and (a<=50*(m+1)) and (b>=50) and (b<=50*(n+1)) then begin
                                     setcolor(lightred);
                                     circle(a,b,20);
                                     inc(d);
                                     KT[a,b]:=2;//writeln('KT[',a,',',b,']=',KT[a,b]);
                                     inc(dem);
                                     end
   else if (ch=#13) and (d mod 2=0) and (KT[a,b]=0)  and (a>=50) and (a<=50*(m+1)) and (b>=50) and (b<=50*(n+1))then begin setcolor(green);
                                                 line(a-20,b-20,a+20,b+20);
                                                 line(a-20,b+20,a+20,b-20);
                                                 inc(d);
                                                 KT[a,b]:=1;//writeln('KT[',a,',',b,']=',KT[a,b]);
                                                 inc(dem);
                                                 end
    else
     begin setcolor(yellow);outtextxy(a,b,'.');delay(10);
           setcolor(black);outtextxy(a,b,'.');delay(10);
     end;
  kiemtra;
  if (dem=n*m) then begin setcolor(yellow);outtextxy(((m+1)*40 div 2)+5,30,'Bat phan thang bai!');KTr:=false;end;
  until (ch=#27) or (KTr=false);
  clrscr;
  Writeln('Nhan ENTER de thoat');

  readln;
  readln;

  closegraph
End.
