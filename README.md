## Magazin-de-muzica

_Scurta descriere:_

Proiectul “Magazinul de muzica” reprezinta o baza de date avand ca scop stocarea datelor pentru un magazin de muzica. Baza de date a fost realizata cu ajutorul Oracle SQL Developer.

Intr-un magazine de muzica exista diferite zone in care se gasesc diferite instrumente si albume (heavy metal, rock etc).
Pentru ca o persoana sa fie angajat al magazinului trebuie sa detina o specializare (tehnic, cantaret, casier etc). Despre angajati cunoastem CNP-ul, numele, prenumele, data angajarii, zona in care lucreaza si aptitudinea sa. 

Legatura dintre tabela ‘Angajati’ si ‘Aptitudini’ se va realiza cu ajutorul unei tabele ‘Legaturi’ care va prelua cheile primare ale tabelelor mentionate anterior.
Un angajat va lucra intr-o singura zona iar o zona va contine mai multi angajati.

Instrumentele si albumele vor apartine de cate o zona in parte.
Vor fi disponibile informatii despre compozitorii unui album de muzica, astfel se va crea o tabela de legatura ‘Contributii’ pentru a putea gestiona informatiile din tabela ‘Albume’ si tabela ‘Artisti’.

_Diagrama ERD:_

![diagrama erd](https://user-images.githubusercontent.com/16005672/50727409-1c6ddb80-1123-11e9-98a9-2b59832bd284.jpg)


