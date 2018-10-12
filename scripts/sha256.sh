hashFile=~/Scalable-Computing/hashes/sha256.txt
outputfile=sha256cracked.txt
hashCode=7400

# sha256 rockyou
hashcat -m $hashCode -w4 -O --remove -o $outputfile $hashFile ~/rockyou.txt

# sha256 combination attack 
hashcat -m $hashCode -w4 -a0 -O --remove -o $outputfile $hashFile ~/words2.txt

# 5 lower case letters
hashcat -m $hashCode -a 3 -w4 --remove -o $outputfile $hashFile ?l?l?l?l?l