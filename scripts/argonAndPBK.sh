#Argon
#mask attack from john
echo "1. Argon mask----------------------"
~/src/john/run/john ~/Scalable-Computing/hashes/argon2.txt --mask=?l?l?l?l?l --pot=argon2Cracked.txt

# wordlist attack
echo "2. Argon rockyou----------------------"
~/src/john/run/john ~/Scalable-Computing/hashes/argon2.txt --wordlist=rockyou.txt --pot=argon2Cracked.txt

# using the other wordlist
echo "3. Argon words2----------------------"
~/src/john/run/john ~/Scalable-Computing/hashes/argon2.txt --wordlist=words2.txt --pot=argon2Cracked.txt

#PBK
#mask attack from john
echo "4. pbk mask----------------------"
~/src/john/run/john ~/Scalable-Computing/hashes/pbkdf2-HMAC-SHA256.txt --mask=?l?l?l?l?l --pot=pbkCracked.txt

# wordlist attack
echo "5. pbk rockyou----------------------"
~/src/john/run/john
~/Scalable-Computing/hashes/pbkdf2-HMAC-SHA256.txt --wordlist=rockyou.txt --pot=pbkCracked.txt

# using the other wordlist
echo "6. pbk words2----------------------"
~/src/john/run/john ~/Scalable-Computing/hashes/pbkdf2-HMAC-SHA256.txt --wordlist=words2.txt --pot=pbkCracked.txt