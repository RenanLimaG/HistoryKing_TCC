const express = require('express');
const app = express();
app.use(express.json());

const sqlite3 = require('sqlite3').verbose();
const dbName = 'historyking.db';
const db = new sqlite3.Database(dbName, (err) => {
    if (err)
        console.error(err.message);
    
    console.log(`Connected to the database ' ${dbName} '.`);
    
})

app.post('/perguntas/', (req, res) => {
    let sql = `INSERT
                INTO Perguntas(Periodo, Enunciado, Opcao_a,
                Opcao_b, Opcao_c, Opcao_d, Resposta)
                VALUES(?, ?, ?, ?, ?, ?, ?)`;
    let params = [req.body.periodo, req.body.enunciado,req.body.opcao_a,
        req.body.opcao_b,req.body.opcao_c,req.body.opcao_d,req.body.resposta];
    db.run(sql, params, (err) => {
        if(err){
            console.error(err.message);
            return;
        }
        console.log(`Added pergunta with periodo ${req.body.periodo},enunciado ${req.body.enunciado},
            opcao_a ${req.body.opcao_a}, opcao_b ${req.body.opcao_b}`);
        sql = `SELECT Id
               FROM Perguntas
               WHERE Periodo = ?`;
        let params = [req.body.periodo];

        db.get(sql, params, (err, row) => {
            if(err){
                console.error(err.message);
                return;
            }

            res.end(row.Id.toString());
        });
    });
});

app.get('/perguntas/', (req, res) => {
    const sql = `SELECT Id,
                        Periodo,
                        Enunciado,
                        Opcao_A,
                        Opcao_B
                        Opcao_C,
                        Opcao_D,
                        Resposta
                    FROM Perguntas`;
    const params = [];
    db.all(sql, params, (err, rows) => {
        if (err){
            console.error(err.message);
            return;
        }

        res.end(JSON.stringify(rows));
    });
});

app.get('/perguntas/:id', (req, res) => {
    const sql = `SELECT Id,
                        Periodo,
                        Enunciado,
                        Opcao_A,
                        Opcao_B
                        Opcao_C,
                        Opcao_D,
                        Resposta
                    FROM Perguntas
                    WHERE Id = ${req.params.id}`;
    const params = [];
    db.all(sql, params, (err, row) => {
        if (err){
            console.error(err.message);
            return;
        }

        res.end(JSON.stringify(row));
    });
});

app.delete('/perguntas/:id', (req, res) => {
    const sql = `DELETE
                FROM Perguntas
                WHERE Id = ${req.params.id}`;
    const params = [];
    db.run(sql, params, (err) => {
        if (err){
            console.error(err.message);
            return;
        }

        console.log(`Deleted pergunta with Id ${req.params.id}`);
        res.end();
    });
});

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
        Resposta   INTEGER       NOT NULL
    );`;

    db.run(sql, [], (err) => {
        if (err)
          console.error(err.message);
        return;
    });
})

