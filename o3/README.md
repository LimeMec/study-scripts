
# Study Scripts: <br> IT- och Cybersecurity @ Frans Schartus Handelsinstitut:

Min samling av script som jag skapat under min utbildning "IT- och Cybersäkerhet".  
  
Kurs: Applied Script



## Kodbeskrivning:

<u>**av-test.py**</u>  
Python-script utvecklat för Windows.
Scriptet testar antivirus- och EDR-funktioner genom att skapa, skriva och läsa en känd 
malware-fil. <br >Syftet är att undersöka antivirusresponsen på systemet och hur skyddsmekanismer i Windows upptäcker, blockerar eller karantäniserar hot.

Den testfil som skapas innehåller en antivirus-signatur vilket gör att scriptet kan simulera ett
virus utan att riskera att skada systemet.
Signaturen är baserad på den välkända EICAR AV TEST, skapad av *European Institute for Computer
Anti-Virus Research, [EICAR](https://www.eicar.org), som är helt ofarligt men ska upptäckas av 
samtliga antivirusprogram.  
  

Detektionen verifieras genom att granska Windows loggbok (Event Viewer);   
- Öppna Program- och tjänsteloggar (Application and Services Logs)
- Microsoft > Windows > Windows Defender > Operational  
  
  

**VARNING: Kör inte detta script i en produktionsmiljö med central loggning eller aktiv XDR.
Även om EICAR AV TEST inte skapar någon skada kan den trigga larm, blockeringar eller notifieringar
till SOC/NOC.**



## Användning:

Kör filen via PowerShell, VS Code eller dubbelklicka på filen (ifall Python är korrekt associerat).



## Krav:

- [Python](https://www.python.org/downloads/)
- Windows  
  
---
  
Trevligt att just du kikad in här!  
//LimeMec, Markus Carlsson
