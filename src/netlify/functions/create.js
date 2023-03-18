const { createClient } = require("@astrajs/collections");


let astraClient = null;

const getAstraDocClient = async () => {
    if (astraClient === null) {
        astraClient = await createClient(
            {
                astraDatabaseId: process.env.ASTRA_DB_ID,
                astraDatabaseRegion: process.env.ASTRA_DB_REGION,
                applicationToken: process.env.ASTRA_DB_APPLICATION_TOKEN,
            },
            30000
        );
    }
    return astraClient;
};

async function getCollection() {
    const documentClient = await getAstraDocClient();
    return documentClient
        .namespace('todos')
        .collection("doc");
};

exports.handler = async (event, context) => {
    const todos = await getCollection();
    const body = { id: "foo-bar-101" };

    console.log(todos)
    console.log(body)

    try {
        const res = await todos.create(body.id, "hey there!")
        return {
            statusCode: 201,
            body: JSON.stringify(res),
            headers: {
                'Content-Type': 'application/json'
            },
        };
    } catch (e) {
        console.log(e)
        return {
            statusCode: 400,
            body: JSON.stringify(e),
        };
    }
};