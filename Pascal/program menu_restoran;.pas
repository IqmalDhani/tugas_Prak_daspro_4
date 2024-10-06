program menu_restoran;

uses crt;

var
    kode, pesan : string;
    harga_makanan, total_harga : longint;
    jumlah : integer;
    lanjut : boolean;

begin
    clrscr;

    writeln('Selamat datang di Nasi Cumi Pak Kris');
    writeln('Berikut adalah menu kami :');
    writeln('Nasi Goreng Cumi dengan kode 1');
    writeln('Nasi Cumi Rendang dengan kode 2');
    writeln('Nasi Cumi Bakar dengan kode 3');
    writeln('Nasi Cumi Goreng dengan kode 4');
    writeln('Nasi Cumi Bakar dengan kode 5');
    writeln('Mie Cumi Goreng dengan kode 6');
    writeln('Bihun Cumi Goreng dengan kode 7');
    writeln('Kwetiau Cumi Goreng dengan kode 8');
    writeln('Sup Cumi Kuah Hitam dengan kode 9');
    writeln('Bubur Cumi dengan kode 10');

    total_harga := 0;
    lanjut := true;

    while lanjut do
    begin
        write('Apakah anda ingin memesan? (Iya / Tidak) : '); readln(pesan);
        
        if (pesan = 'Iya') or (pesan = 'iya') then
        begin
            write('Silakan input kode : '); readln(kode);
            case (kode) of
                '1' : harga_makanan := 15000;
                '2' : harga_makanan := 15000;
                '3' : harga_makanan := 15000;
                '4' : harga_makanan := 15000;
                '5' : harga_makanan := 20000;
                '6' : harga_makanan := 12000; 
                '7' : harga_makanan := 5000;
                '8' : harga_makanan := 5000;
                '9' : harga_makanan := 7000;
                '10' : harga_makanan := 7000;
            else
                begin
                    writeln('Error: Kode tidak valid');
                    continue;
                end;
            end;
            
            write('Berapa jumlah yang ingin anda order? '); readln(jumlah);
            total_harga := total_harga + (harga_makanan * jumlah);
        end
        else
        begin
            lanjut := false;
        end;
    end;

    writeln('Anda harus membayar Rp', total_harga);
end.