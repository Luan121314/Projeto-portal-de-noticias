
module.exports = function (aplication) {
    aplication.get("/noticias", function (req, res) {

        var connection = aplication.config.banco();
        var noticiasModel = new aplication.app.models.NoticiasDAO(connection);

        noticiasModel.getNoticias(function (error, result) {
            res.render("./noticias/noticias", { noticias: result })

        });




    });
    aplication.get("/noticia", function (req, res) {

        var connection = aplication.config.banco();
        var noticiasModel = new aplication.app.models.NoticiasDAO(connection)

        noticiasModel.getNoticia( function (error, result) {
            console.log(result);

            res.render("noticias/noticia", { noticia: result });

        })
    })
};



// DAO = Objeto de Acesso a dados