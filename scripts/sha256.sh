# sha256 rockyou
hashcat -m 7400 -a 0 -w 4 -o sha256cracked.txt ~/Scalable-Computing/hashes/sha256.txt rockyou.txt --rules=rules/best64.rule

# sha256 combination attack 
hashcat -m 7400 -a 1 -w 4 -o sha256cracked.txt ~/Scalable-Computing/hashes/sha256.txt ~/Scalable-Computing/word2.txt ~/Scalable-Computing/word2.txt 

# 5 lower case letters
hashcat -m 7400 -a 3 -w 4 -o sha256cracked.txt ~/Scalable-Computing/hashes/sha256.txt ?l?l?l?l?l