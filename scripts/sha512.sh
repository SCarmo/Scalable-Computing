hashFile=~/Scalable-Computing/hashes/sha512.txt
outputfile=sha512cracked.txt
hashCode=1800

# sha256 rockyou
hashcat -m $hashCode --remove -w 4 -O -o $outputfile $hashFile ~/rockyou.txt

# sha256 combination attack 
hashcat -m $hashCode --remove -w4 -a0 -O -o $outputfile $hashFile ~/words2.txt

# 5 lower case letters
hashcat -m $hashCode -a 3 --remove -w 4 -O -o $outputfile $hashFile ?l?l?l?l?l