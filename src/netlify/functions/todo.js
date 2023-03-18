/* code from functions/todos-create.js */
const faunadb = require('faunadb') /* Import faunaDB sdk */

/* configure faunaDB Client with our secret */
const q = faunadb.query
const client = new faunadb.Client({
    secret: process.env.FAUNADB_SERVER_SECRET
})

/* export our lambda function as named "handler" export */
let handler = (event, context) => {
    /* parse the string body into a useable JS object */
    const data = JSON.parse(event.body)
    console.log("Function `todo-create` invoked", data)
    const todoItem = {
        data: data
    }
    /* construct the fauna query */
    return client.query(q.Create(q.Ref("classes/todo"), todoItem))
        .then((response) => {
            console.log("success", response)
            /* Success! return the response with statusCode 200 */
            return {
                statusCode: 200,
                body: JSON.stringify(response)
            }
        }).catch((error) => {
            console.log("error", error)
            /* Error! return the error with statusCode 400 */
            return {
                statusCode: 400,
                body: JSON.stringify(error)
            }
        })
}



exports.handler = handler
