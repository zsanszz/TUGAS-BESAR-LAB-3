//NAMA: DZIKRI BAGUS NUGROHO
//NIM: 261401025
//LAB: 3
program DeretAngka;
uses crt;
var
  N, pilihan, i: integer;

begin
clrscr;
  write('Masukkan nilai N: ');
  readln(N);

  writeln('Pilih kategori deret:');
  writeln('1. Ganjil');
  writeln('2. Genap');
  write('Pilihan: ');
  readln(pilihan);

  i := 1;

  writeln('Deret hasil penyaringan:');

  while i <= N do
  begin
    { Lewati kelipatan 5 }
    if i mod 5 = 0 then
    begin
      i := i + 1;
      continue;
    end;

    { Lewati angka yang tidak sesuai kategori }
    if (pilihan = 1) and (i mod 2 = 0) then
    begin
      i := i + 1;
      continue;
    end;

    if (pilihan = 2) and (i mod 2 <> 0) then
    begin
      i := i + 1;
      continue;
    end;

    write(i, ' ');
    i := i + 1;
  end;

  writeln;
end.