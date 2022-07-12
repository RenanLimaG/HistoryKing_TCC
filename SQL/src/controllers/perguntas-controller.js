module.exports = function(app) {
    var sanitize = require('mongo-sanitize');
    var Pergunta = app.models.perguntas-model;
    var controller = {};

    controller.listaPerguntas = function(req, res) {
        Pergunta.find().exec().then(
            function(perguntas) {
                res.json(perguntas);
            },
            function(erro) {
                console.error(erro)
                res.status(500).json(erro);
            });
    };

    controller.obtemPergunta = function(req, res) {
        var _id = sanitize(req.params.id);
        Pergunta.findById(_id).exec().then(
          function(pergunta) {
            if (!pergunta) throw new Error("Pergunta não encontrado");
            res.json(pergunta)
          },
            function(erro) {
                console.log(erro);
                res.status(404).json(erro)
            }
        );
    };

    controller.removePergunta = function(req, res) {
        var _id = sanitize(req.params.id);
        Pergunta.deleteOne({ "_id": _id }).exec().then(
        function() {
            res.end();
        },
        function(erro) {
            return console.error(erro);
        });
    };
    
    controller.salvaPergunta = function(req, res) {
        var _id = req.body._id;
        var dados = {
            "Periodo" : req.body.Periodo,
            "Enunciado" : req.body.Enunciado,
            "Opcao_A" : req.body.Opcao_A,
            "Opcao_B" : req.body.Opcao_B,
            "Opcao_C" : req.body.Opcao_C,
            "Opcao_D" : req.body.Opcao_D,
            "Resposta" : req.body.Resposta
            };

        if (_id) {
            Pergunta.findByIdAndUpdate(_id, dados).exec().then(
                function(pergunta) {
                    res.json(pergunta);
                },
                function(erro) {
                    console.error(erro)
                    res.status(500).json(erro);
                });
        } else {
            Pergunta.create(dados).then(
                function(pergunta) {
                    res.status(201).json(pergunta);
                },
                function(erro) {
                    console.log(erro);
                    res.status(500).json(erro);
                });
        }
    };

    return controller;
};

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
};

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
};*/