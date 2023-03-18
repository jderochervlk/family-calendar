const { MongoClient, ServerApiVersion } = require('mongodb');

const password = process.env.MONGO_PASSWORD

const uri = `mongodb+srv://picardnumber1:${password}@cluster0.ypureou.mongodb.net/?retryWrites=true&w=majority`

const client = new MongoClient(uri, { useNewUrlParser: true, useUnifiedTopology: true, serverApi: ServerApiVersion.v1 });

client.connect(err => {
    const collection = client.db("test").collection("devices");
    // perform actions on the collection object

    console.log(collection)

    // collection.add

    client.close();
})
    .then(console.log)
    .catch(console.error)