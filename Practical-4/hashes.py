hashes = "scarmody.hashes"

argon2 = open("hashes/argon2.txt",'w')
sha512 = open("hashes/sha512.txt", 'w')
sha256 = open("hashes/sha256.txt", 'w')
DES = open("hashes/DES.txt", 'w')
md5c = open("hashes/md5c.txt", 'w')
pbkdf = open("hashes/pbkdf2-HMAC-SHA256.txt","w")

with open(hashes,'r') as f:
    for line in f:
        if line[:3] == '$1$':   # MD5 Crypt
            md5c.write(line)

        elif line[:3] == '$6$': # sha256
            sha512.write(line)

        elif line[:3] == '$5$': # sha256
            sha256.write(line)
            
        elif line[:7] == "$argon2": #Argon2
            argon2.write(line)

        elif 14 == len(line):   # DES 
            DES.write(line)

        elif line[:15] == "$pbkdf2-sha256$":
            pbkdf.write(line)


''' 
des crypt 
md5 crypt
sha512 crypt
sha256 crypt
pbkdf2-hmac-sha256
argon2
'''



