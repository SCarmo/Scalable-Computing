hashFile=~/Scalable-Computing/hashes/DES.txt
outputfile=DEScracked.txt
hashCode=1500

# sha256 rockyou
hashcat -m $hashCode --remove -w 4 -O -o $outputfile $hashFile ~/rockyou.txt

# sha256 combination attack 
hashcat -m $hashCode -w4 --remove -a0 -O -o $outputfile $hashFile ~/words2.txt

# 5 lower case letters
hashcat -m $hashCode --remove -a3 -w4 -o $outputfile $hashFile ?l?l?l?l?l