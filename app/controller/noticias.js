module.exports.noticias = function (application, req, res) {
    // console.log('GET em /noticias')

    var connection = application.config.banco();
    var noticiasModel = new application.app.models.NoticiasDAO(connection);

    noticiasModel.getNoticias(function (error, result) {

        res.render("./noticias/noticias", { noticias: result })

    });


}



module.exports.noticia = function (application, req, res) {

    // console.log('GET em /noticia');

    var connection = application.config.banco();
    var noticiasModel = new application.app.models.NoticiasDAO(connection);

    console.log(req.query)
    var queryRequest = req.query;

    noticiasModel.getNoticia(queryRequest,function (error, result) {
        // console.log(result);
        res.render("noticias/noticia", { noticia: result });

    })

}