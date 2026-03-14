# 2026_Analysis_12-file-manager
U ovom direktorijumu nalazi se analiza softverskog projekta **12-file-manager** izrađena u okviru samostalnog projekta iz kursa *Verifikacija softvera* na master studijama Matematičkog fakulteta Univerziteta u Beogradu.

## Autor
Ime i prezime: Lazar Dačković

Broj indeksa: 1037/25

## Opis projekta
12-file-manager je aplikacija implementirana u programskom jeziku C++ uz korišćenje Qt framework-a. 

Originalan projekat dostupan je na adresi:
https://gitlab.com/matf-bg-ac-rs/course-rs/projects-2022-2023/12-file-manager

Grana projekta na kojoj je izvršena analiza: main.

Heš kod commit-a: `f4d888816021aca862ca522b312e8589cd147584`

## Priprema projekta

Pre pokretanja analiza, potrebno je da se projekat ispravno klonira. Zatim je potrebno instalirati alat bear, koji nam je potreban zbog fajla compile_commands.json koji koristi alat Clang-Tidy.
- **sudo apt install bear**
  
Nakon toga mozemo pokrenuti skript build.sh koji ce nam izgenerisati izvrsni fajl FileManager.

## Alati
- **Clang-Tidy**
- **Cppcheck**
- **Valgrind**
- **Heaptrack**
- **CLazy**

  ## Clang-Tidy
  - **sudo apt install clang-tools**
  - **cd Clang-Tidy**
  - **chmod +x clang_tidy_script.sh**
  - **./clang_tidy_script.sh**
 
  ## CppCheck
  - **sudo apt install cppcheck**
  - **cd CppCheck**
  - **chmod +x cppcheck.sh**
  - **./cppcheck.sh**
 
  ## Valgrind
   - **sudo apt install valgrind**
   - **cd Valgrind**
   - **chmod +x valgrind.sh**
   - **./valgrind.sh**
 
  ## Heaptrack
   - **sudo apt isntall heaptrack**
   - **sudo apt install heaptrack-gui**
   - **cd Heaptrack**
   - **chmod +x heaptrack.sh**
   - **./heaptrack.sh**

