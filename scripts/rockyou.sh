# wordlist attack
echo "----------------------1. pbk rockyou----------------------"
~/src/john/run/john ~/Scalable-Computing/hashes/pbkdf2-HMAC-SHA256.txt --wordlist=rockyou.txt --pot=pbkCracked.txt
