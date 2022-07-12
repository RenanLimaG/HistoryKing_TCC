module.exports = function(app) {
    app.get('/', function(req, res) {
    res.render('index', { "usuarioLogado" : req.user.login});
    });
};

/*const express = require('express');
const router = express.Router();
const controller = require('../controller/perguntas-controller');

const configureRouter = () => {
   // router.post('/perguntas/', controller.postPergunta);
    router.post('/perguntas/', controller.postPerguntas);
    router.get('/perguntas/', controller.getPerguntas);
    router.get('/perguntas/:id', controller.getPergunta);
    router.delete('/perguntas/:id', controller.deletePergunta);
    return router;
}

module.exports = configureRouter;*/