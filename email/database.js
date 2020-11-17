const Pool = require('pg').Pool
const pool = new Pool({
    user: 'admin',
    host: 'database',
    database: 'emails',
    password: 'admin',
    port: 5432
});

const getEmails = (req,res) => {
    
    pool.query("SELECT * FROM email;", (err,result) => {
        if (err) {
            throw err;
        }
        res.status(200).send(result.rows);
    })
}
const getEmailById = (req, res) => {
    let id = req.params.id
    pool.query("SELECT * FROM email WHERE id = $1;", [id], (err, result) => {
        if(err) {
            throw err;
        }
        res.status(200).send(result.rows);
    })

}
const searchEmail = (req,res) => {
    const query = decodeURIComponent(req.query.query)
    pool.query("SELECT * FROM email WHERE subject LIKE $1;", [query], (err, result) => {
        if(err){
            throw err;
        }
        res.status(200).send(result.rows);
    })

}
const sendEmail = (req, res) =>  {
    const emailSender = req.body;
    if(emailSender.sender && emailSender.recipient && emailSender.subject && emailSender.message){
        pool.query("INSERT INTO email (sender, recipient, subject, message) VALUES ($1, $2, $3, $4);", [emailSender.sender, emailSender.recipient, emailSender.subject, emailSender.message], (err, result) => {
            if(err){
                throw err;
            }
            res.status(200).send("email sent!");
        })
    }
    res.status(400).send("Email not sent");
}

module.exports = {
     getEmails,
    getEmailById,
    searchEmail,
    sendEmail
    };