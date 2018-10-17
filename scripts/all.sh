
# DES
echo "------------------DES------------------"
hashFile=~/Scalable-Computing/hashes/DES.txt
outputfile=AllCracked.txt
hashCode=1500

hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/allpasswords.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/rockyou.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/words2.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ?l?l?l?l?l

# MD5
echo "------------------MD5------------------"
hashFile=~/Scalable-Computing/hashes/md5c.txt
hashCode=500

hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/allpasswords.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/rockyou.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/words2.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ?l?l?l?l?l

# sha256
echo "------------------SHA256------------------"
hashFile=~/Scalable-Computing/hashes/sha256.txt
hashCode=7400

hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/allpasswords.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/rockyou.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/words2.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ?l?l?l?l?l


# sha512 
echo "------------------SHA512------------------"
hashFile=~/Scalable-Computing/hashes/sha512.txt
hashCode=1800


hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/allpasswords.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/rockyou.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ~/words2.txt
hashcat -m $hashCode -w4 -O -o $outputfile $hashFile ?l?l?l?l?l

# pbk
echo "------------------pbk------------------"
jtr=~/src/john/run/john
hashFile=~/Scalable-Computing/hashes/pbkdf2-HMAC-SHA256.txt
jtr $hashFile --wordlist=rockyou.txt --pot=AllCracked.txt
jtr $hashFile --wordlist=allpasswords.txt --pot=AllCracked.txt
jtr $hashFile --wordlist=words2.txt --pot=AllCracked.txt
jtr $hashFile --mask=?l?l?l?l?l --pot=AllCracked.txt
