#mask attack from john
echo "----------------------2. pbk mask----------------------"
~/src/john/run/john ~/Scalable-Computing/hashes/pbkdf2-HMAC-SHA256.txt --mask=?l?l?l?l?l --pot=pbkCracked.txt