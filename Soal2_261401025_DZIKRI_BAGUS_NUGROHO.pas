//NAMA: DZIRKI BAGUS NUGROHO
//NIM: 261401025
//LAB: 3
program VerifikasiPassword;
uses crt;
var
  password: string;
  percobaan: integer;
  benar: boolean;

begin
clrscr;
  percobaan := 0;
  benar := false;

  repeat
    percobaan := percobaan + 1;

    write('Masukkan kata sandi: ');
    readln(password);

    if password = 'pascalribet321' then
    begin
      writeln('Login Berhasil! Selamat Datang');
      benar := true;
      break;
    end
    else
      writeln('Kata sandi salah.');

  until percobaan = 3;

  if not benar then
    writeln('Akses Ditolak! Akun Terkunci.');
end.