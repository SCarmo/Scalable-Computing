import json

# change to current level
levelToCrack = raw_input("Enter Level to get hashes for: ")
with open('Level-' + levelToCrack + '/Level-' + levelToCrack + '.json') as f:
    data = json.load(f)

exportFile = "Level-" + levelToCrack + "/Level-" + levelToCrack + "-Hashes.txt"
f = open(exportFile, "w+")
pbk = 0
sha1 = 0
argon = 0
sha512 = 0

for item in data["hashes"]:
    f.write("%s\n" % item)
    if "pbk" in item:
        pbk = pbk + 1
    elif "sha1" in item:
        sha1 = sha1 + 1
    elif "argon" in item:
        argon = argon + 1
    else:
        sha512 = sha512 + 1

print("\npbk = {}, argon = {}, sha1 = {}, sha512 = {}\n".format(
    pbk, argon, sha1, sha512))
print("Total: {}\n".format(pbk + sha1 + sha512 + argon))
print("Saved to {}".format(exportFile))
