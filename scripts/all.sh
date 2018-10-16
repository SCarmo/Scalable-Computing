
# DES
echo "------------------DES------------------"
hashFile=~/Scalable-Computing/hashes/DES.txt
outputfile=AllCracked.txt
hashCode=1500

hashcat -m $hashCode  -w 4 -O -o $outputfile $hashFile ~/allpasswords.txt

# MD5
echo "------------------MD5------------------"
hashFile=~/Scalable-Computing/hashes/md5c.txt
hashCode=500

hashcat -m $hashCode  -w 4 -O -o $outputfile $hashFile ~/allpasswords.txt

# sha256
echo "------------------SHA256------------------"
hashFile=~/Scalable-Computing/hashes/sha256.txt
hashCode=7400

hashcat -m $hashCode -w4 -O  -o $outputfile $hashFile ~/allpasswords.txt


# sha512 
echo "------------------SHA512------------------"
hashFile=~/Scalable-Computing/hashes/sha512.txt
hashCode=1800


hashcat -m $hashCode  -w 4 -O -o $outputfile $hashFile ~/allpasswords.txt

# pbk
echo "------------------pbk------------------"
~/src/john/run/john ~/Scalable-Computing/hashes/pbkdf2-HMAC-SHA256.txt --wordlist=allpasswords.txt --pot=AllCracked.txt

#argon
echo "------------------argon2 baby------------------"
~/src/john/run/john ~/Scalable-Computing/hashes/argon2.txt --wordlist=allpasswords.txt --pot=AllCracked.txt