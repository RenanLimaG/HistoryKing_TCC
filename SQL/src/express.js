var express = require('express');
var load = require('express-load');

module.exports = function() {
    //Instância do Express
    var app = express();
    //app.set('port', 3000);
    app.set('port', process.env.PORT || 3000);

    app.use(express.json());

    load('models', {cwd: 'app'})
    .then('controllers')
    .then('routes')
    .into(app);

    // Global error handling    
    app.use(function (err, _req, res) {
    console.error(err.stack);
    res.status(500).send('Something broke!');
    });

    return app;
};