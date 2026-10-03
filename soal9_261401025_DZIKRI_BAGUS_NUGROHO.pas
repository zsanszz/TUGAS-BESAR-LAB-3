//NAMA:DZIKRI BAGUS NUGROHO
//NIM:261401025
//LAB:3
program menghitungJumlahHari;
uses crt;
var
  bulan, tahun, jumlahHari: integer;
  kabisat: boolean;

begin
clrscr;
  write('Masukkan bulan (1-12): ');
  readln(bulan);

  write('Masukkan tahun: ');
  readln(tahun);

  kabisat := (tahun mod 400 = 0) or
             ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

  case bulan of
    1, 3, 5, 7, 8, 10, 12:
      jumlahHari := 31;

    4, 6, 9, 11:
      jumlahHari := 30;

    2:
      begin
        if kabisat then
          jumlahHari := 29
        else
          jumlahHari := 28;
      end;

  else
    begin
      writeln('Nomor bulan tidak valid.');
      exit;
    end;
  end;

  writeln('Jumlah hari: ', jumlahHari, ' hari');
end.