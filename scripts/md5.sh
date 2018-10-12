hashFile=~/Scalable-Computing/hashes/md5c.txt
outputfile=MD5cracked.txt
hashCode=500

# sha256 rockyou
hashcat -m $hashCode --remove -w 4 -O -o $outputfile $hashFile ~/rockyou.txt

# sha256 combination attack 
hashcat -m $hashCode -w4 --remove -a0 -O -o $outputfile $hashFile ~/words2.txt

# 5 lower case letters
hashcat -m $hashCode --remove -a3 -w4 -o $outputfile $hashFile ?l?l?l?l?l