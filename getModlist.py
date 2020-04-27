from urllib import request
import json
from os import path
import csv


#Constants
manifestlocation="src/twitch/manifest.json"

if path.isfile("mods.csv"):
    print("Delete mods.csv")
    quit()

try:
    with open(manifestlocation, "r") as manifestfile:
        manifestjson = json.loads(manifestfile.read())
except:
    print("manifest not found")
    quit()

projectIDs = []

for file in manifestjson["files"]:
    projectIDs.append(file["projectID"])

filesInBytes = str(projectIDs).encode("utf-8")

req = request.Request("https://addons-ecs.forgesvc.net/api/v2/addon",
    data = filesInBytes,
    headers = {
        'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36',
        "Content-Type": "application/json"
    })

print("Getting Mod names from Twitch API")
with request.urlopen(req) as request:
    response = request.read()
    response = response.decode("ascii", "ignore")
    apireturn = json.loads(response)

print("Formatting")
mods = []
for mod in apireturn:
    modDict = {}

    modDict["name"] = mod["name"]
    modDict["id"] = mod["id"]
    modDict["url"] = mod["websiteUrl"]
    modDict["downloads"] = mod["downloadCount"]

    authorStr = ""
    for author in mod["authors"]:
        authorStr += ", " + author["name"]
        authorStr = authorStr.strip(", ")
    modDict["authors"] = authorStr

    mods.append(modDict)

with open("mods.csv", "w", newline = "") as modFile:
    writer = csv.writer(modFile, delimiter=';', quoting=csv.QUOTE_MINIMAL)

    #Write Header
    writer.writerow(["Mod Name", "Authors", "Link", "Downloads", "ID"])
    writer.writerow([])

    #Write Data
    print("Writing CSV")
    for mod in mods:
        toWrite = []

        toWrite.append(mod["name"])
        toWrite.append(mod["authors"])
        toWrite.append(mod["url"])
        toWrite.append(str(int(mod["downloads"])))
        toWrite.append(str(int(mod["id"])))

        writer.writerow(toWrite)
print("done")