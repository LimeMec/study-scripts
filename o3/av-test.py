import time
import os
import errno

# Sträng med känd virus-signatur  
eicar_str = r"X5O!P%@AP[4\PZX54(P^)7CC)7}$EICAR-STANDARD-ANTIVIRUS-TEST-FILE!$H+H*"

#Spara fil med signaturen i "temp" som är minst restriktiv för AV-tester
temp_dir = os.environ.get("TEMP", ".")
filnamn = os.path.join(temp_dir, "AV_TEST_NOT_DANGEROUS.txt")

print(f"Försöker skapa EICAR-testfil i:\n{filnamn}\n")

try:
    with open(filnamn, "w", encoding="utf-8") as f:
        f.write(eicar_str)

    print("[---] Filen skapades.")

# Väntar 3 skeunder för att ge tid för AV-skanningen att upptäcka den skapade filen   
    print("[---] Väntar 3 sekunder för AV-skanning...")
    time.sleep(3)

# Kollar ifall den skapade filen finns kvar eller om antivirusprogrammet raderat/flyttat filen
    with open(filnamn, "r", encoding="utf-8") as f:
        if f.read() == eicar_str:
            print("[!!!] Filen finns kvar och är oförändrad.")
            print("[!!!] AV/EDR har INTE blockerat EICAR.")

except OSError as e:
    # ⛔ Tolka AV/EDR-blockering
    if e.errno in (errno.EACCES, errno.EPERM, errno.EINVAL):
        print("[✔] Åtkomst blockerades vid filskapande.")
        print("[✔] Detta tolkas som aktivt AV/EDR-skydd.")
        print(f"[i] errno={e.errno} ({e.strerror})")

    else:
        print("[!!!] Oväntat OS-fel uppstod.")
        print(f"[!] errno={e.errno} ({e.strerror})")

except FileNotFoundError:
    print("[✔] Filen försvann efter skapande.")
    print("[✔] AV/EDR tog sannolikt bort eller karantänade filen.")

except Exception as e:
    print("[!!!] Okänt fel (möjligen kodproblem).")
    print(e)
