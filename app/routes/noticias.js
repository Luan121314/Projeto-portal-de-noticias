
module.exports = function (aplication) {

    aplication.get("/noticias", function (req, res) {
        aplication.app.controller.noticias.noticias(aplication, req, res);
    });

    aplication.get("/noticia", function (req, res) {
        aplication.app.controller.noticias.noticia(aplication, req, res);
    })
};



// DAO = Objeto de Acesso a dados