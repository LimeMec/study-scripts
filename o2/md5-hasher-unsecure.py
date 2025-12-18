#!/usr/bin/env python3
import random
import hashlib

def generate_random_number_string():
    return ''.join(random.choice("0123456789") for X in range(PWD_LGT))

def md5_hash(text):
    return hashlib.md5(text.encode()).hexdigest()

def main():
    # 'w' betyder "write mode", vilket skapar filen eller skriver över befintligt innehåll
    with open("mina_hashar.txt", "w") as f:
        for i in range(NO_PASS):
            password = generate_random_number_string()
            hash_value = md5_hash(password)
            
            # Skriv till filen istället för terminalen
            f.write(f"{hash_value}\n")
    
    print(f"{NO_PASS}st hashar har sparats i mina_hashar.txt")

PWD_LGT = 10
NO_PASS = 10

if __name__ == "__main__":
    main()

