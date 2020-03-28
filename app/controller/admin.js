module.exports.formulario_inclusao_noticia = function (application, req, res) {
    res.render("admin/form_add_noticia", { validacao: {}, noticia: {} })
}


module.exports.noticias_salvar = function (aplication, req, res) {

    console.log("POST no /noticias/salvar");

    var noticia = req.body;

    req.assert('titulo', 'Titulo é obrigatório').notEmpty();
    req.assert('resumo', 'Resumo é obrigatório').notEmpty();
    req.assert('resumo', 'Resumo deve conter 10 e 100 caracteres').len(10, 1000);
    req.assert('autor', 'Autor é obrgatório').notEmpty();
    req.assert('autor', 'Data é obrigatório').notEmpty();
    req.assert('data_noticia', 'Data é obrigatório').notEmpty();
    req.assert('noticia', 'Noticia é obrigatório').notEmpty();                                              

    
    var errors = req.validationErrors();

    
    
    if (errors) {
        res.render("admin/form_add_noticia", {validacao: errors, noticia: noticia});
        console.log("Erro nos parâmetros do post")
        console.log(errors);
        console.log(noticia);

        return
    }

    var connection = aplication.config.banco();
    var noticiasModel = new aplication.app.models.NoticiasDAO(connection);

    noticiasModel.SalvarNoticia(noticia, function (error, result) {

        res.redirect("/noticias");
    });
}
