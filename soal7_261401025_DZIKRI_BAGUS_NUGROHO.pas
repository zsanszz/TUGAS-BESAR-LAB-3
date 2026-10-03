//NAMA:DZIKRI BAGUS NUGROHO 
//NIM:261401025
//LAB:3
program TarifParkir;
uses crt;
var
  kode: char;
  jam: integer;
  tarif, tambahan, maksimal: integer;

begin
clrscr;
  write('Masukkan kode kendaraan (X/Y/Z): ');
  readln(kode);

  write('Masukkan lama parkir (jam): ');
  readln(jam);

  case kode of
    'X', 'x':
      begin
        tarif := 5000;
        tambahan := 3000;
        maksimal := 30000;
      end;

    'Y', 'y':
      begin
        tarif := 2000;
        tambahan := 1000;
        maksimal := 10000;
      end;

    'Z', 'z':
      begin
        tarif := 10000;
        tambahan := 5000;
        maksimal := 50000;
      end;

  else
    begin
      writeln('Kode kendaraan tidak valid.');
      exit;
    end;
  end;

  if jam > 1 then
    tarif := tarif + (jam - 1) * tambahan;

  if tarif > maksimal then
    tarif := maksimal;

  writeln('Total tarif parkir = Rp', tarif);
end.