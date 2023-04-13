peripheral.find("modem", rednet.open)

local protocol = "verite-fm"
local audio = "radios.dfpwm"

print("chargement du fichier audio")
local file= fs.open(audio, "rb")
local audioContent = file.readAll()
file.close()
print("transmission aux postes d'écoutes")
rednet.broadcast(audioContent, protocol)

print("Ettt... action!")