hashFile=~/Scalable-Computing/hashes/DES.txt
outputfile=DEScracked.txt
hashCode=1500

# DES rockyou
hashcat -m $hashCode --remove -w 4 -O -o $outputfile $hashFile ~/rockyou.txt

# DES combination attack 
hashcat -m $hashCode -w4 --remove -O -o $outputfile $hashFile ~/words2.txt

# 5 lower case letters
hashcat -m $hashCode --remove -a3 -w4 -o $outputfile $hashFile ?l?l?l?l?l


hashFile=~/Scalable-Computing/hashes/sha256.txt
outputfile=sha256cracked.txt
hashCode=7400

# sha256 rockyou
hashcat -m $hashCode -w4 -O --remove -o $outputfile $hashFile ~/rockyou.txt

# sha256 combination attack 
hashcat -m $hashCode -w4 -O --remove -o $outputfile $hashFile ~/words2.txt

# 5 lower case letters
hashcat -m $hashCode -a 3 -w4 --remove -o $outputfile $hashFile ?l?l?l?l?l

hashFile=~/Scalable-Computing/hashes/md5c.txt
outputfile=MD5cracked.txt
hashCode=500

# MD5 rockyou
hashcat -m $hashCode --remove -w 4 -O -o $outputfile $hashFile ~/rockyou.txt

# MD5 combination attack 
hashcat -m $hashCode -w4 --remove -O -o $outputfile $hashFile ~/words2.txt

# 5 lower case letters
hashcat -m $hashCode --remove -a3 -w4 -o $outputfile $hashFile ?l?l?l?l?l