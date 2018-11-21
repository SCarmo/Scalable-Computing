import secretsharing as sss
import as5makeinferno as as5
import json
import jsonpickle
import hashlib

Level = '10'
nextLevel = str(int(Level) + 1)
LevelFile = 'Levels/Level-' + Level + '.json'
LevelPot = 'Pots/Level-' + Level + '.pot'
exportFile = 'Levels/Level-' + nextLevel + '.json'

unpad = lambda s: s[:-ord(s[len(s) - 1:])]
# decrypt the cipher text
def decrypt(enc, password):
    enc = as5.base64.b64decode(enc)
    iv = enc[:16]
    cipher = as5.AES.new(password, as5.AES.MODE_CBC, iv)
    return unpad(cipher.decrypt(enc[16:]))


# current level
with open(LevelFile) as f:
    data = json.load(f)

ciphertext = str(data["ciphertext"])


# read in passwords from potfile
crackedHashes = []
string = ""
with open(LevelPot) as f:
    string = f.readlines()

# remove line break character
for i in range(len(string)):
    crackedHashes.append(string[i].strip("\n"))

# add in cracked passwords to hashes
hashes = data["hashes"]
for i in range(len(hashes)):
    for j in range(len(crackedHashes)):
        if hashes[i] in crackedHashes[j]:
            hashes[i] = crackedHashes[j]
            break

# find index of cracked p(i) to compare to share(i)
kpwds = []
kinds = []
for i in range(len(hashes)):
    if ":" in hashes[i]:
        kpwds.append(hashes[i].split(":",1)[1])
        kinds.append(i)

shares = []

#convert to string cause for some reason its not already :/
for i in range(len(data["shares"])):
    shares.append(str(data["shares"][i]))

# get secret
secret = as5.pwds_shares_to_secret(kpwds,kinds,shares)
print secret
# get next level
nextLevel = decrypt(ciphertext, secret.zfill(32).decode('hex'))

nextlvlstr = bytes.decode(nextLevel)
with open(exportFile, "w") as f:
    f.write(nextlvlstr)
