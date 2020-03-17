module.exports = function (aplication) {
    aplication.get("/formulario_inclusao_noticia", function (req, res) {
        res.render("admin/form_add_noticia",{ validacao: {}, noticia: {}})
    })

    aplication.post("/noticias/salvar", function (req, res) {
        var noticia = req.body;

        req.assert('titulo', 'Titulo é obrigatório').notEmpty();
        req.assert('resumo', 'Resumo é obrigatório').notEmpty();
        req.assert('resumo', 'Resumo deve conter 10 e 100 caracteres').len(10, 100);
        req.assert('autor', 'Autor é obrgatório').notEmpty();
        req.assert('autor', 'Data é obrigatório').notEmpty();
        req.assert('data_noticia', 'Data é obrigatório').notEmpty();
        req.assert('noticia', 'Noticia é obrigatório').notEmpty();

        var errors = req.validationErrors();

        console.log(errors);


        if (errors) {
            res.render("admin/form_add_noticia", {validacao: errors, noticia: noticia})
            return
        }

        var connection = aplication.config.banco();
        var noticiasModel = new aplication.app.models.NoticiasDAO(connection);

        noticiasModel.SalvarNoticia(noticia, function (error, result) {

            res.redirect("/noticias");
        });
    })
}

// corrigir erro de noticia undefine