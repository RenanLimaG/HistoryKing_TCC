const dbName = 'historyking.db';
const sqlite3 = require('sqlite3').verbose();

const db = new sqlite3.Database(dbName, (err) => {
    if (err)
        console.error(err.message);
    
    console.log(`Connected to the database ' ${dbName} '.`);
    
});

module.exports = db;