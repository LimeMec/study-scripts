
# Study Scripts: IT- och Cybersecurity @ Frans Schartus Handelsinstitut

Min samling av skript som jag skapat under min utbildning "IT- och Cybersäkerhet"



## Kodbeskrivning:

**md5-hasher.py**  

Ett modifierat Python-script som genererar slumpmässiga numeriska lösenord och ger output med en lista av 10st hashes av lämplig längd för att motstå attacker av rainbow tables.

**md5-hashcat.sh**
Bash-script som kör Haschat mot en hashfil med valfri mask för att knäcka MD5-hashar. Scriptet kontrollerarinstallation av hashcat och startar en mask-attack med angiva parametrar.


**mina_hashar.txt**
Textfil innehållande de 10st hashes som md5-hasher.py genererar.

**screenshot.png**
Screenshot på resultatet efter kört md5-hashcat.sh



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
