% UZMAN SİSTEMLER DERSİ 2. ÖDEVİ

% 201220025
% ZAHİD ESAT MUTLU
% f201220025@ktun.edu.tr


start:-
writeln("****************************** Laptop Seçimi Öneri Sistemi ****************************"),
writeln("******************** İhtiyaçlarınıza yönelik laptopu saniyeler içinde bulabilirsiniz! ********************"),nl,
menu.
 
menu:-
writeln('Lütfen ilgilendiğiniz alanı seçiniz: '),
writeln('1- Ofis Programları'),
writeln('2- Yazılım'),
writeln('3- Oyun ve Tasarım'),
read(A),
(not(A==1),not(A==2),not(A==3) ->
writeln("Bilinmeyen seçim! Lütfen 1 ile 3 arasında bir sayı seçiniz..."), menu;
category(A)).


% ------------------------- Ofis Programları -------------------------------

category(1):-
    writeln('Mac OS?'),
writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),category(1);
((A=='yes') ->
q1_DU;
q2_DU)
).

q1_DU:-
    writeln('Touch Bar istiyor musunuz?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q2_DU;
((A=='yes') ->
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Apple MacBook Pro 13 M2 Retiena + Touch Bar'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort);
        
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Apple MacBook Pro M2 Çip'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort )
        )
).

q2_DU:-
    writeln('Rahat taşınabilir olması tercihiniz mi?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q3_DU;
((A=='yes') ->
q4_DU;
q5_DU)
).

q4_DU:-
    writeln('Bütçeniz sınırlı mı?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q5_DU;
((A=='yes') ->
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Acer Aspire 3 A315-56'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort);
        
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('HP Pavillion 14-dv2022nx'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort )
        )
).

q3_DU:-
    writeln('Dokunmatik ekran olmasını istiyor musunuz?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q4_DU;
((A=='yes') ->
q5_DU;	
        q4_DU)
).

q5_DU:-
    writeln('Ters katlanabilir Tablet-Laptop istiyor musunuz?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q5_DU;
((A=='yes') ->
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Mircosoft Surface Pro 9 2-in-2 Tablet Laptop'),
            writeln('Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız.'), abort);
        
            q4_DU)
).


% ------------------------ Yazılım ------------------------------

category(2):-
    writeln('Okul için mi kullanılacak?'),
writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),category(2);
((A=='yes') ->
q10_PRG;
q20_PRG)
).

q10_PRG:-
    writeln('LED ekran tercih eder misiniz?'),
    writeln('(yes/no)'),
    read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q10_PRG;
(((A=='yes'); (A=='no')) ->
        	q11_PRG)
).

q11_PRG:-
    writeln('Bilgisayarı okula taşımanız gerekebilir mi?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q10_PRG;
((A=='yes') ->
        q111_PRG;
        q112_PRG)
    ).

q111_PRG:-
    writeln('Uzun batarya ömrü önceliğiniz mi?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q11_PRG;
((A=='yes') ->
       		(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Dell inspiron 13 5310'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort );
       
    		(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Apple MacBook Air M1 Çip'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort )
        )
). 

q112_PRG:- 
    writeln('Geniş ekran boyutu önceliğiniz mi?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q11_PRG;
((A=='yes') ->
        q1121_PRG;
        q1122_PRG)
    ).

q1121_PRG:-
    writeln('Bütçeniz sınırlı mı?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q112_PRG;
((A=='yes') ->
        	(writeln('Sizin için ideal laptop önerisi: '),
            writeln('Lenovo IdealPad 5'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort);
        
q111_PRG)
).

q1122_PRG:- 
    (   
    q111_PRG).
 
 
q20_PRG:-
    writeln('iOS geliştirme yapacak mısınız?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Öneri sistemimizi kullandığınız için teşekkürler!"),q20_PRG;
((A=='yes') ->
q21_PRG;
q22_PRG)
).

q21_PRG:-
    writeln('Rahat taşınabilir olması tercihiniz mi?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q21_PRG;
((A=='yes') ->
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Apple MacBook Pro 13-inç'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort);
        
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Apple MacBook pro 16-inç'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort )
        )
).

q22_PRG:-
    writeln('Windows işletim sistemi tercihiniz mi?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q22_PRG;
((A=='yes') ->
q23_PRG;
q21_PRG)
).

q23_PRG:-
    writeln('Oyun geliştirme yapacak mısınız?'),
    writeln('(yes/no)'),
    read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q22_PRG;
((A=='yes') ->
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Asus ROG Zephyrus G15'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort);
q24_PRG)
).

q24_PRG:-
    writeln('Rahat taşınabilir olması tercihiniz mi?'),
    writeln('(yes/no)'),
read(A),
(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q24_PRG;
((A=='yes') ->
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('HP Spectre x360'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort);
        
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('Lenovo ThinkPad X1 Extreme'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort )
        )
).


% ------------------------ Oyun ve Tasarım ------------------------------

category(3):-
    writeln('Bütçeniz sınırlı mı?'),
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),category(3);
     	((A == 'yes') -> 
    	question3_1; 
      	question3_2)
    ). 

question3_2:- 
    writeln('Yüksek kalite ekran tercihiniz mi?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),question3_2;
     question3_3). 
 
question3_3:- 
    writeln('Geniş ekran boyutu önceliğiniz mi?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),question3_3;
    question3_1).
 
question3_1:-
    writeln('Yüksek SSD kapasitesi tercih eder misiniz?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),question3_1;
     question3_4). 
 
question3_4:- 
    writeln('Yüksek veri transferi önceliğiniz mi?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),question3_4;
     question3_5). 
 
 question3_5:- 
    writeln('Yüksek performans önceliğiniz mi?'), 
    writeln('(yes/no)'), 
read(A),
 	(not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),question3_5;
     question3_6).
 
question3_6:-
    writeln('Gün içinde uzun süreli kullanıma uygun ister misiniz?'), 
    writeln('(yes/no)'), 
read(A),
    (not(A=='yes'), not(A=='no') ->
writeln("Bilinmeyen seçim! Lütfen yes veya no seçimi yapınız."),q24_PRG;
((A=='yes') ->
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('ASUS ROG Zephyrus'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort);
        
(   writeln('Sizin için ideal laptop önerisi: '),
            writeln('ASUS A15'),
            writeln('Öneri sistemimizi kullandığınız için teşekkürler!'), abort )
        )
).
