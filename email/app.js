 



const fs = require("fs")
const bodyParser = require("body-parser")

const express = require('express')
const app = express()
const port = 3001

const db = require("./database");

app.use(bodyParser.json())

const emails = JSON.parse(fs.readFileSync("emails.JSON"))

const temp = require ("./seed"); 
app.get('/updateDb', temp.setupdb); //dont use after emails imported once

app.get('/emails', db.getEmails);

app.get('/emails/:id', db.getEmailById);

app.get('/search', db.searchEmail);

app.post('/send', db.sendEmail);


app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`))