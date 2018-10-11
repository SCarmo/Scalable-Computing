# des rockyou
hashcat -m 1500 -a 0 -w 4 -o descrypt.txt DES.txt rockyou.txt --rules=rules/best64.rule

# des combination attack 
hashcat -m 1500 -a 1 -w 4 DES.txt -o descrypt.txt ~/github/Scalable-Computing/word2.txt ~/github/Scalable-Computing/word2.txt 

# 5 lower case letters
hashcat -m 1500 -a 3 -w 4 -o descrypt DES.txt ?l?l?l?l?l