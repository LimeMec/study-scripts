
# Study Scripts: <br> IT- och Cybersecurity @ Frans Schartus Handelsinstitut

Min samling av script som jag skapat under min utbildning "IT- och Cybersäkerhet"  
  
Kurs: Applied Script



## Kodbeskrivning:

<u>**md5-hasher.py**  </u> <br> Ett modifierat Python-script som genererar slumpmässiga numeriska lösenord och ger output med en lista av 10st hashes av lämplig längd för att motstå attacker av rainbow tables.

<u>**md5-hashcat.sh**</u> <br> Bash-script som kör Haschat mot en hashfil med valfri mask för att knäcka MD5-hashar. Scriptet kontrollerarinstallation av hashcat och startar en mask-attack med angiva parametrar.


<u>**mina_hashar.txt**</u> <br> Textfil innehållande de 10st hashes som md5-hasher.py genererar.

<u>**screenshot.png**</u> <br> Screenshot på resultatet efter kört md5-hashcat.sh



## Användning:

För att köra skripten (.sh-fil) navigera till mappen.



**Få skriptet körbart (för .sh-filer):**
```bash
chmod +x skript_namn.sh
```
**Köra skriptet:**
```bash
./skript_namn.sh
```


## Krav:
- [Python 3.x](www.python.org)
- Bash (finns inbyggt i Linux/macOS, Windows kan använda WSL eller Git Bash)




Trevligt att just du kikad in här!  
//LimeMec, Markus Carlsson
