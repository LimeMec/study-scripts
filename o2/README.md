
# Study Scripts: <br> IT- och Cybersecurity @ Frans Schartus Handelsinstitut

Min samling av script som jag skapat under min utbildning "IT- och Cybersäkerhet"  
  
Kurs: Applied Script



## Kodbeskrivning:

<u>**md5-hasher.py**  </u> <br> Ett modifierat Python-script som genererar slumpmässiga numeriska lösenord och ger output med en lista av 10st hashes av lämplig längd för att motstå attacker av rainbow tables. <br> Crackstatoin [CrackStation][https://www.crackstation.net] är en populär onlinetjänst som erbjuder rainbow-table sökningar för att knäcka hashvärden. Rainbow-tables fungerar bara på hashfunktioner utan salt och blir snabbt ineffektiva vid längre eller mer komplexa lösenord.
 
<u>**md5-hashcat.sh**</u> <br> Bash-script som kör Haschat mot en hashfil med valfri mask för att knäcka MD5-hashar.<br>  Scriptet kontrollerar installation av hashcat och startar en mask-attack med angiva parametrar. <br> Kontrollera i scripet vilka värden som är förinställda (hashfil, mask, hashtyp) och ändra dem vid behov så att de passar din hashfil och den mask-attack du vill köra. <br> När sciptet hittar de matchande
löenord visas detta i terminalen och spaaras automatiskt i Hashcats egna fil "haschcat.potfile" som
normalt ligger i användarens hemkatalog och fungerar som en historik över tidigare knäckta lösenord.


<u>**mina_hashar.txt**</u> <br> Den textfil innehållande de 10st hashes som md5-hasher.py genererar. Hashes som motstår rainbow-table, men kan de motstå Hashcat?

<u>**screenshot.png**</u> <br> Screenshot på resultatet efter kört md5-hashcat.sh mot den genererade textfilen.  <br> Här kan man kan utläsa i fätet "Recovered: 10/10" att samtliga tio genererade hashvärden har hittats och matchats med sina ursprungliga lösenord. < br> Hashcat kan användas som ett verktyg för att återställa förlorade eller bortglömda lösenord i testmiljöer. Resultatet bekräftar också att att de lösenord som scriptet genererar
ligger inom den mask och sökmetod som anvöndes vid körningen.



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
___

Trevligt att just du kikad in här!  
//LimeMec, Markus Carlsson
