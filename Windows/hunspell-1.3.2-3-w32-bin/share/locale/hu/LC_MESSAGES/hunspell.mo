��    F      L  a   |                      1  �   B  G   �  ?   <  >   |  "   �  (   �       (   %  6   N     �  -   �  (   �     �     	  +   2	  $   ^	  %   �	  2   �	  (   �	  "   
  %   (
  .   N
  B   }
  1   �
     �
  6     >   I  2   �  -   �     �       "     B   7  �   z  
   <  ;   G  @   �     �     �  (   �  4        L  H   ^  0   �     �  �   �     �     �  �   �  @   \  &   �  $  �  Q   �  2   ;     n  %   p     �      �     �     �     �     �     �     �     �        h       k  ;   |     �  �   �  Z   �  A   �  N   (  -   w  3   �     �     �  <     !   U  :   w  %   �  %   �      �  ,     %   L  4   r  1   �      �  #   �  -     4   L  F   �  @   �  /   	  P   9  G   �  1   �  -     0   2     c  *   �  S   �  �        �  D   �  V   ,     �     �  )   �  H   �     #  Q   3  9   �     �  �   �     \     t  �   �  O   ,   /   |   :  �   J   �!  B   2"     u"  (   w"     �"     �"  6   �"     #     #     #     #     #     #      #                1   C   ;   &   @                    +      >   B   .       6         '   F       "      $                     =      9          5                  0                  E               /             2         %   #   7   
          ,   <                 !   	              :   (   D      8             3   -   4   ?          )   A             *    	%s		File: %s

 
-- Type space to continue -- 
 
Commands are:

 
Copyright (C) 2002-2008 László Németh. License: MPL/GPL/LGPL.

Based on OpenOffice.org's Myspell library.
Myspell's copyright (C) Kevin Hendricks, 2001-2002, License: BSD.

 
[SPACE] R)epl A)ccept I)nsert U)ncap S)tem Q)uit e(X)it or ? for help
   --check-url	Check URLs, e-mail addresses and directory paths
   -1		check only first field in lines (delimiter = tabulator)
   -D		show available dictionaries
   -G		print only correct words or lines
   -H		HTML input file format
   -L		print lines with misspelled words
   -P password	set password for encrypted dictionaries
   -a		Ispell's pipe interface
   -d d[,d2,...]	use d (d2 etc.) dictionaries
   -h, --help	display this help and exit
   -i enc	input encoding
   -l		print misspelled words
   -m 		analyze the words of the input text
   -n		nroff/troff input file format
   -p dict	set dict custom dictionary
   -r		warn of the potential mistakes (rare words)
   -s 		stem the words of the input text
   -t		TeX/LaTeX input file format
   -v, --version	print version number
   -vv		print Ispell compatible version number
   -w		print misspelled words (= lines) from one word/line input.

 0-n     Replace with one of the suggested words.
 ?       Show this help screen.
 A       Accept the word for the rest of this session.
 AVAILABLE DICTIONARIES (path is not mandatory for -d option):
 Are you sure you want to throw away your changes?  Bug reports: http://hunspell.sourceforge.net
 Can't create tempfile %s.
 Can't open %s.
 Cannot update personal dictionary. Check spelling of each FILE. Without FILE, check standard input.

 Example: hunspell -d en_US file.txt    # interactive spelling
         hunspell -l file.txt          # print misspelled words
         hunspell -i utf-8 file.txt    # check UTF-8 encoded file

 FORBIDDEN! Hunspell has been compiled without Ncurses user interface.
 I       Accept the word, and put it in your private dictionary.
 LOADED DICTIONARY:
%s
%s
 Line %d: %s ->  Model word (a similar dictionary word):  Model word must be in the dictionary. Press any key! New word (stem):  Q       Quit immediately. Asks for confirmation. Leaves file unchanged.
 R       Replace the misspelled word completely.
 Replace with:  S       Ask a stem and a model word and store them in the private dictionary.
        The stem will be accepted also with the affixes of the model word.
 SEARCH PATH:
%s
 Spelling mistake? This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE,
to the extent permitted by law.
 U       Accept and add lowercase version to private dictionary.
 Usage: hunspell [OPTION]... [FILE]...
 Whenever a word is found that is not in the dictionary
it is printed on the first line of the screen.  If the dictionary
contains any similar words, they are listed with a number
next to each one.  You have the option of replacing the word
completely, or choosing one of the suggested words.
 X       Write the rest of this file, ignoring misspellings, and start next file.
 ^Z      Suspend program. Restart with fg command.
 a error - %s exceeds dictionary limit.
 error - iconv_open: %s -> %s
 error - iconv_open: UTF-8 -> %s
 error - missing HOME variable
 i q r s u x y Project-Id-Version: hunspell
Report-Msgid-Bugs-To: nemeth@numbertext.org
POT-Creation-Date: 2011-02-16 15:45+0100
PO-Revision-Date: 2005-09-03 11:22+0200
Last-Translator: László Németh <nemeth dot lacko at gmail>
Language-Team: Hungarian <openscope.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: hu
 	%s		Fájl: %s

 
-- Továbblépés a szóköz billentyű leütésével -- 
 
Billentyűparancsok: 

 
Copyright (C) 2002-2008 Németh László. Licenc: MPL/GPL/LGPL.

Az OpenOffice.org Myspell programkönyvtárán alapul.
MySpell copyright (C) Kevin Hendricks, 2001-2002, Licenc: BSD.

 
Szóköz=tovább <szám> C)sere J)ó F)elvesz K)isbetűvel T)ő M)égsem V)ége ?=Súgó
   --check-url	URL-ek, e-mail címek és útvonalak ellenőrzése
   -1		csak az első mezőt ellenőrzi a sorban (mezőhatároló = tabulátor)
   -D		az elérhető szótárak kilistázása
   -G		kiírja a bemenet helyes szavait vagy sorait
   -H		HTML bemeneti formátum
   -L		kiírja a hibás sorokat
   -P jelszó	jelszó megadása a titkosított szótárakhoz
   -a		Ispell-szerű csőfelület
   -d d[,d2,...]	a d (d2 stb.) nevű szótárat használja
   -h, --help	kiírja ezt a leírást
   -i kód	bemeneti karakterkódolás
   -l		kiírja a hibás szavakat
   -m 		szövegszavak morfológiai elemzése
   -n		nroff/troff bemeneti formátum
   -p tár	a tár nevű saját szótárat használja
   -r		lehetséges hibák (ritka szavak) jelzése
   -s 		szövegszavak tövezése
   -t		TeX/LaTeX bemeneti formátum
   -v, --version	kiírja a változat számát
   -vv		kiírja a változat számát Ispell-szerűen
   -w		kiírja a hibás szavakat a soronként egy szavas bemenetből.

 0-n    A javasolt szavak közül az adott sorszámúra cserél.
 ?       Ennek a leírásnak a megjelenítése.
 J       A szó minden előfordulását jónak tekinti a program futása során.
 ELÉRHETŐ SZÓTÁRAK (az útvonal nem kötelező a -d kapcsolónál):
 Kilép a módosítások mentése nélkül (i/n)?  Hibajelzés: http://hunspell.sourceforge.net
 Nem lehet létrehozni a(z) %s átmeneti fájlt.
 Nem lehet megnyitni a(z) %s-t.
 Nem lehet frissíteni a saját szótárat. A FÁJL(OK) (ennek hiányában a szabványos bemenet) helyesírását ellenőrzi.

 Példák: hunspell -d en_US fájl.txt    # interaktív helyesírás-ellenőrzés
        hunspell -l fájl.txt          # kiírja a hibás szavakat
        hunspell -i utf-8 fájl.txt    # UTF-8-as fájl ellenőrzése

 TILTOTT! A Hunspell Ncurses felhasználói felület nélkül lett fordítva.
 F       A szót felveszi a saját szótárba, így új indításkor is ismerni fogja.
 BETÖLTÖTT SZÓTÁR:
%s
%s
 %d. sor: %s ->  Mintaszó (egy hasonló szótári szó):  A minta csak szótári szó lehet! Továbblépés billentyűleütéssel. Új szó(tő):  M       Kilép a javítások mentése nélkül, de előtte megerősítést kér.
 C       A hibás szó kicserélése egy megadott szóra.
 Csere:  T       Szótő és mintaszó bekérése és saját szótárban való tárolása.
        A tő felveheti a mintául megadott szó toldalékait is.
 KERESÉSI ÚTVONAL:
%s
 Helyesírási hiba? Ez egy szabad szoftver: lásd a forráskódot a licencfeltételekről.
NINCS garancia, még az eladhatóságra vagy valamely célra való
alkalmazhatóságra sem.
 K       Mint az előző, de a szót kisbetűsen veszi fel a saját szótárba.
 Használat: hunspell [KAPCSOLÓ]... [FÁJL]...
 A hibás, vagy fel nem ismert szavak az első sorban jelennek meg.
Amennyiben van javítási javaslat, az számozott lista formájában
jelenik meg. A sorszám leütésével választhatunk ki ezek közül
egyet, de megadhatunk akár egy új szót is.
Részletes leírás a program lehetőségeiről: man hunspell.
 V       Menti az eddigi javításokat, és rátér a következő fájlra.
 ^Z      A program felfüggesztése. Újraindítás fg paranccsal.
 j hiba - %s meghaladja a szótárlimitet.
 hiba - iconv_open: %s -> %s
 hiba - iconv_open: UTF-8 -> %s
 hiba - nincs definiálva a HOME környezeti változó
 f m c t k v i 