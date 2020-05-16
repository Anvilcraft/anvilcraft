import json
from urllib import request
import ntpath
import os

#Constants:
manifestlocation="src/twitch/manifest.json"
modpackjsonLocation="src/addonscript/modpack.json"

def tryGetLink(projectID: str, fileID: str):
    while(True):
        url = "https://addons-ecs.forgesvc.net/api/v2/addon/" + projectID + "/file/" + fileID + "/download-url"
        try:
            return request.urlopen(url, timeout=10000)
        except:
            print("Failed to get Download Link for " + url + " retrying...")


if os.path.exists("mods"):
    if os.listdir("mods"):
        print("mods directory is not empty, delete or empty")
        quit()
else:
    os.mkdir("mods")


try:
    with open(manifestlocation, "r") as manifestfile:
        manifestdata = manifestfile.read()
except:
    print("manifest not found")
    quit()
manifestobj = json.loads(manifestdata)

downloadLinks = []
filecount = len(manifestobj["files"])

i = 0
for file in manifestobj["files"]:
    i += 1
    with tryGetLink(str(file["projectID"]), str(file["fileID"])) as response:
        responseLink = response.read().decode("utf-8")
        downloadLinks.append(responseLink)
        print("(" + str(i) + "/" + str(filecount) + ") Got Download Link For " + ntpath.basename(responseLink))

#Yes i know this is very unclean but this script will be replaced with modpacktools later anyways
try:
    with open(modpackjsonLocation) as modpackjsonfile:
        modpackjsondata = modpackjsonfile.read()
except:
    print("Modpackjson Not found!")
    quit()
modpackjsonobject = json.loads(modpackjsondata)

modpackjsonrelations = modpackjsonobject["versions"][0]["relations"]

for relation in modpackjsonrelations:
    if relation["linkType"] == "file":
        downloadLinks.append(relation["link"])
        print("Got link for modpackjson mod " + ntpath.basename(relation["link"]))

i = 0
filecount = len(downloadLinks)
for link in downloadLinks:
    i += 1
    filename = ntpath.basename(link)
    request.urlretrieve(link.replace(" ", "%20"), "mods/" + filename)
    print("(" + str(i) + "/" + str(filecount) + ") Downloaded " + filename)