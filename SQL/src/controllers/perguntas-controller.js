const db = require('../databases/db')

/*const postPergunta = (req, res) => {
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
};*/

const postPerguntas = (req, res) => {

    for(var i = 0; i < req.body.length; i++){
        var sql = `INSERT
            INTO Perguntas(Periodo, Enunciado, Opcao_a,
             Opcao_b, Opcao_c, Opcao_d, Resposta)
            VALUES(?, ?, ?, ?, ?, ?, ?)`;
            var params = [req.body[i].Periodo, req.body[i].Enunciado,req.body[i].Opcao_A,
            req.body[i].Opcao_B,req.body[i].Opcao_C,req.body[i].Opcao_D,req.body[i].Resposta];
                db.run(sql, params, (err) => {
                    if(err){
                         console.error(err.message);
                         return;
                        }
                    });
                res.end();
             }
};

const getPerguntas = (req, res) => {
    const sql = `SELECT Id,
                        Periodo,
                        Enunciado,
                        Opcao_A,
                        Opcao_B,
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
};

const getPergunta = (req, res) => {
    const sql = `SELECT Id,
                        Periodo,
                        Enunciado,
                        Opcao_A,
                        Opcao_B,
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
};

const deletePergunta = (req, res) => {
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
};

module.exports = {
   // postPergunta,
    postPerguntas,
    getPerguntas,
    getPergunta,
    deletePergunta
};