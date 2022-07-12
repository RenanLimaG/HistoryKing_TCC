var mongoose = require('mongoose');
module.exports = function() {
    var schema = mongoose.Schema({
        Periodo: {type: String, required: true},
        Enunciado: { type: String, required: true},
        Opcao_A: { type: String, required: true},
        Opcao_B: { type: String, required: true},
        Opcao_C: { type: String, required: true},
        Opcao_D: { type: String, required: true},
        Resposta: { type: String, required: true}
    },
    {
        versionKey: false 
    });
     return mongoose.model('Pergunta', schema);
};
