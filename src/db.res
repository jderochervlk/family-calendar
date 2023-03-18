let client = Astra.createClient

let do = client(
  {
    applicationToken: "",
    astraDatabaseId: "",
    astraDatabaseRegion: "",
  },
  30000,
).namespace("name").collection("col")
