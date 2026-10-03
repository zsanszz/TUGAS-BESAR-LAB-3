//NAMA:DZIKRI BAGUS NUGROHO
//NIM:261401025
//LAB:3
program NamaHari;
uses crt;

var
pilihan:integer;

begin
clrscr;

write('input(1-7): ');
readln(pilihan);

case pilihan of
1: writeln('Hari senin');
2: writeln('Hari selasa');
3: writeln('Hari rabu');
4: writeln('Hari kamis');
5: writeln('Hari jumat');
6: writeln('Hari sabtu');
7: writeln('Hari minggu');

else
    writeln('input tidak valid');
end;

end.