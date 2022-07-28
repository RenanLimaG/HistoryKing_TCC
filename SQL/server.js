const express = require('express');
const app = express();
const db = require('./src/databases/db');
const configureRouter = require('./src/routes');

app.use(express.json());
app.use(configureRouter());

const server = app.listen(8080, () => {
    const host = server.address().address;
    const port = server.address().port;

    console.log(`Listening at http://${host}:${port}`);

    const sql = `CREATE TABLE IF NOT EXISTS Perguntas (
        Id         INTEGER       NOT NULL PRIMARY KEY AUTOINCREMENT,
        Periodo    NVARCHAR(30)  NOT NULL,
        Enunciado  TEXT          NOT NULL,
        Opcao_A    NVARCHAR(20)  NOT NULL,
        Opcao_B    NVARCHAR(20)  NOT NULL,
        Opcao_C    NVARCHAR(20)  NOT NULL,
        Opcao_D    NVARCHAR(20)  NOT NULL,
        Resposta   NVARCHAR(8)   NOT NULL
    );`;

    db.run(sql, [], (err) => {
        if (err)
          console.error(err.message);
        return;
    });
})