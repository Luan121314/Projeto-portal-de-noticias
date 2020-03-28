module.exports.index = function (application, req, res) {
    let connection = application.config.banco();
    let indexModel = new application.app.models.NoticiasDAO(connection);

    indexModel.getLastNoticias(function (falha, result) {
        if(falha){
            console.log('Erro ao pegar as ultimas 5 noticias');
            console.log(falha);
            return
        }
        // console.log(result)
        res.render("./home/index",{noticias: result})
    });

}