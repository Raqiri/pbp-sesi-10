const mysql = require('mysql');

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'mahasiswa'
});

db.connect((err) => {
    if (err) {
        console.log('error connecting to MySQL database: ', err);
        return;
    }
    console.log('Connected to MySQL database');
});

module.exports = db;
